//
//  AboutViewController.swift
//  PHYTO
//
//  Created by Yahia El-Dow on 4/5/18.
//  Copyright © 2018 Yahia El-Dow. All rights reserved.
//

import UIKit

class AboutViewController: MainViewController {
    @IBOutlet weak var about_txt_desc: _TextView!
    
    
    override func loadView() {
        super.loadView()
     
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if LanguageManagement.appIsArabic() {
            self.about_txt_desc.textAlignment = .right
        }else {
            self.about_txt_desc.textAlignment = .left
        }
        about_txt_desc.text = "about_desc".localized()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "back_title".localized() , style: .plain, target: self, action:#selector(dismissMe(_:)) )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissMe(_ sender: Any) {
        _ = navigationController?.popToRootViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
