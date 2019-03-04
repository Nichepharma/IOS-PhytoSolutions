//
//  ProblemPageViewController.swift
//  PHYTO
//
//  Created by Yahia El-Dow on 3/19/18.
//  Copyright © 2018 Yahia El-Dow. All rights reserved.
//

import UIKit

class ProblemPageViewController: MainViewController , UIScrollViewDelegate {
    fileprivate let cellBorderColor =  UIColor.gray.withAlphaComponent(0.3)
    @IBOutlet weak var problemPageTV: UITableView!

    @IBOutlet weak var btn_arrowDown: UIButton!
    var currentPostion_btn_arrowDown : CGFloat =  0.0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.currentPostion_btn_arrowDown =  self.btn_arrowDown.frame.origin.y
    }
    override func viewWillDisappear(_ animated: Bool) {
        super .viewWillDisappear(animated)
        
        self.btn_arrowDown.frame.origin.y = self.currentPostion_btn_arrowDown
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        let duration: TimeInterval = 1.0
//        UIView.animate(withDuration: duration , delay: 1, options: .curveEaseOut , animations: {
//            let index = IndexPath(row: 0, section:self.problemPageTV.numberOfSections - 1)
//            self.problemPageTV.scrollToRow(at: index, at: .middle , animated: true)
//        })
    
    
        UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse] , animations: {
            self.btn_arrowDown.frame = CGRect(x: self.btn_arrowDown.frame.origin.x,
                                       y: self.btn_arrowDown.frame.origin.y + 10 ,
                                       width: self.btn_arrowDown.frame.width ,
                                       height: self.btn_arrowDown.frame.size.height);
        })
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        let duration: TimeInterval = 1.0

//        UIView.animate(withDuration: duration , delay: 1, options: .curveEaseOut , animations: {
//            let index = IndexPath(row: 0, section:0)
//            self.problemPageTV.scrollToRow(at: index, at: .middle , animated: true)
//        })

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ProblemSummary"  {
            if let itemSelected = sender as? Int {
                let vc = segue.destination as? ProblemSummaryViewController
                vc?.itemSelected = itemSelected
            }
        }
    }
}


extension ProblemPageViewController : UITableViewDelegate , UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return AppInfo.getAppINFO().count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UIView().loadXIB(xibFileName: "ProblemCustomeCell") as! ProblemCustomeCell
        cell.selectionStyle = .none
        cell.layer.cornerRadius = 10
        
        cell.setBorder(borderWidth: 1, borderColor: cellBorderColor )
        let index = indexPath.section
        
        cell.txt_title.text = AppInfo.getAppINFO()[index].title
        cell.txt_arrowColorCode.textColor = UIColor().hexStringToUIColor(hex: AppInfo.getAppINFO()[index].color_code)
        return cell ;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.section
        performSegue(withIdentifier: "ProblemSummary", sender: index)
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10 
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 40 ))
        return view
    }
}


class ProblemCustomeCell : UITableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        if LanguageManagement.appIsArabic() {
            self.semanticContentAttribute = .forceRightToLeft
            self.txt_title.textAlignment = .right
            return
        }
        self.semanticContentAttribute = .forceLeftToRight
        self.txt_title.textAlignment = .left


    }
    @IBOutlet weak var txt_title: UILabel!    
    @IBOutlet weak var txt_arrowColorCode: UILabel!
    
}
