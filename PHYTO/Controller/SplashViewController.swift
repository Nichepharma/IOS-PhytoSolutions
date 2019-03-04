//
//  SplashViewController.swift
//  PHYTO
//
//  Created by Yahia El-Dow on 3/19/18.
//  Copyright © 2018 Yahia El-Dow. All rights reserved.
//

import UIKit

class SplashViewController: MainViewController {

    @IBOutlet weak var btn_languageSelect: UIButton!
    @IBOutlet weak var btn_start: UIButton!{
        didSet{
            self.btn_start.layer.cornerRadius = 12
        }
    }
    

override func loadView() {
    super.loadView()
    
    btn_languageSelect.isHidden = true
    btn_start.isHidden = true

    if SystemInfo.appIsInit() {
    performSegue(withIdentifier: "seg_fireApp", sender: nil)
    }
    else{
        btn_languageSelect.isHidden = false
        btn_start.isHidden = false
    }
   
    
    
}

override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //MARK:- HIDE NAVIGATION BAR ON THE THIS VIEW CONTROLLER
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
}
override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
        //MARK:- SHOW NAVIGATION BAR
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
}
    
override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}
    

  
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seg_fireApp" {
            SystemInfo.initApp()
        }else if segue.identifier == "seg_goToLanguage"{
            let vc = segue.destination as? LanguageSelectViewController
                vc?.backTo = "SplashNav"
        }
    }
    

}



