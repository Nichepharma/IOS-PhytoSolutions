//
//  MainViewController.swift
//  PHYTO
//
//  Created by Yahia El-Dow on 5/17/18.
//  Copyright © 2018 Yahia El-Dow. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    override func loadView() {
        super.loadView()
        
        if (LanguageManagement.getCurrentLanguage().range(of: "ar") != nil) {
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
            
        } else {
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
        
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
