//
//  ProblemSummaryViewController.swift
//  PHYTO
//
//  Created by Yahia El-Dow on 3/19/18.
//  Copyright © 2018 Yahia El-Dow. All rights reserved.
//

import UIKit

class ProblemSummaryViewController: MainViewController {
    var itemSelected = -1
    @IBOutlet weak var txt_problemDesc: UITextView!{
        didSet{
//            txt_problemDesc.textAlignment = UIApplication.isRTL() ? .right  : .left
        }
    }
    @IBOutlet weak var view_problemColorCode: UIView!
    @IBOutlet weak var txt_problemStrip: UILabel!
    @IBOutlet weak var btn_goToSolution: UIButton!{
        didSet{
            self.btn_goToSolution.setBorder(borderWidth: 1, borderColor: UIColor.white)
            self.btn_goToSolution.setRoundedView()
        }
    }
    @IBOutlet weak var problem_BKG: UIImageView!
    
    
    override func loadView() {
        super.loadView()
        if LanguageManagement.appIsArabic() {
            self.txt_problemDesc.textAlignment = .right
        }else {
            self.txt_problemDesc.textAlignment = .left
        }
        UIView.animate(withDuration: 0.5 , animations: { () -> Void in
            let bottom = NSMakeRange(1000, 1);
            self.txt_problemDesc.setContentOffset(CGPoint(x: 0, y: bottom.location), animated: true)
        })
        
        
        if itemSelected == 6 {
            self.txt_problemStrip.text = "p7_strip_title".localized()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if itemSelected == -1 {
            self.navigationController?.popViewController(animated:true)
            return
        }
        var bkgImage = UIImage()
        let bkgID = AppInfo.getAppINFO()[itemSelected].bkg_id
        switch bkgID {
        case 1:
            bkgImage = #imageLiteral(resourceName: "problem_bkg1")
            break
        case 2:
            bkgImage = #imageLiteral(resourceName: "problem_bkg2")
            break
        case 3:
            bkgImage = #imageLiteral(resourceName: "problem_bkg3")
            break
        default:
            bkgImage = #imageLiteral(resourceName: "background0")
            break
            
        }
        
        self.problem_BKG.image = bkgImage
        
        self.view_problemColorCode.backgroundColor = UIColor().hexStringToUIColor(hex: AppInfo.getAppINFO()[itemSelected].color_code)
        // STOP SCROLL TO BUTTOM
        // .. THEN WILL RE ENABLE SCROLLING
//        self.txt_problemDesc.isScrollEnabled = false
        self.txt_problemDesc.text = AppInfo.getAppINFO()[itemSelected].desc

        self.btn_goToSolution.shake()
        
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationItem.title = AppInfo.getAppINFO()[itemSelected].title

        let nav = self.navigationController?.navigationBar
//        nav?.barStyle = UIBarStyle.black
        nav?.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.gray]
        

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        self.txt_problemDesc.isScrollEnabled = true
//        self.txt_problemDesc.scrollsToTop = true
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            self.txt_problemDesc.scrollRectToVisible(CGRect(x: 0, y: 0, width:     self.txt_problemDesc.frame.width , height: self.txt_problemDesc.frame.height ),
                                                     animated: true );
        })

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seg_solution"  {
            if self.itemSelected != -1 {
                let vc = segue.destination as? SolutionViewController
                vc?._itemSelected = self.itemSelected
            }
        }
    }
    

}
