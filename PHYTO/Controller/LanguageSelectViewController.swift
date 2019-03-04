//
//  LanguageSelectViewController.swift
//  PHYTO
//
//  Created by Yahia El-Dow on 3/22/18.
//  Copyright © 2018 Yahia El-Dow. All rights reserved.
//

import UIKit

class LanguageSelectViewController: MainViewController {

    @IBOutlet weak var language_tableView: UITableView!

    var backTo = "ProblemPageNav"
    let languageArray = ["English" , "العربية"]
    var rowSelected =  0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rowSelected = LanguageManagement.appIsArabic() ?  1 : 0
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "save_title".localized() , style: .plain, target: self, action: #selector(submitEdit(_:)))
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "back_title".localized() , style: .plain, target: self, action: #selector(dismissMe(_:)))
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.navigationController?.setNavigationBarHidden(true, animated: animated)

    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
//         self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissMe(_ sender: Any) {
        _ = navigationController?.popToRootViewController(animated: true)
        
    }
    @IBAction func submitEdit(_ sender: Any) {
        
        guard let lnag = self.language_tableView.indexPathForSelectedRow?.row else {
            return
        }
        rowSelected = lnag
        if rowSelected == 0 && (LanguageManagement.getCurrentLanguage().range(of: "en") != nil)  {
            return ;
        }
        if rowSelected == 1 && (LanguageManagement.getCurrentLanguage().range(of: "ar") != nil)  {
            
            return ;
        }

        let languageSave = rowSelected == 0 ? Languages.en : Languages.ar
        LanguageManagement.setAppLanguage(language:languageSave)
        doChangeLanguageApp()

        print("Done!")

        
        //_ = navigationController?.popToRootViewController(animated: true)

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


extension LanguageSelectViewController : UITableViewDelegate , UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UIView().loadXIB(xibFileName: "MenuCustomeCell") as! MenuCustomeCell
        cell.selectionStyle = .none
        cell.accessoryType = .none
        let index = indexPath.row

         if index == 0 {
            if (LanguageManagement.getCurrentLanguage().range(of: "en") != nil){
                cell.accessoryType = .checkmark
            }
            cell.title.text = "english_title".localized()
            cell.icon.image = #imageLiteral(resourceName: "ic_language") ;
        }
        else if index == 1 {
            if (LanguageManagement.getCurrentLanguage().range(of: "ar") != nil) {
                cell.accessoryType = .checkmark
            }
            cell.title.text = "arabic_title".localized()
            cell.icon.image = #imageLiteral(resourceName: "ic_language");
        }
        return cell ;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
//      let row = indexPath.row
        let section = indexPath.section

//        if row == 1 {
//            // create the alert
//            let alert = UIAlertController(title: "", message: "Coming Soon", preferredStyle: UIAlertControllerStyle.alert)
//            // add an action (button)
//            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
//            // show the alert
//            self.present(alert, animated: true, completion: nil)
        
//        return ;
//        if (LanguageManagement.getCurrentLanguage().range(of: "en") != nil){
//                LanguageManagement.setAppLanguage(language:.ar)
//                UIView.appearance().semanticContentAttribute = .forceRightToLeft
//                 doChangeLanguageApp()
//            }else if  LanguageManagement.getCurrentLanguage().range(of: "ar") != nil{
//                LanguageManagement.setAppLanguage(language:.en)
//                UIView.appearance().semanticContentAttribute = .forceLeftToRight
//            }
//
//        }
//        return
    
        // Remove All Cell Checked
        for i in 0..<tableView.numberOfRows(inSection: section){
            let indexPathes  = IndexPath(row: i, section: section)
            tableView.cellForRow(at: indexPathes)?.accessoryType = .none
        }
        
        if let cell = tableView.cellForRow(at: indexPath) {
                cell.accessoryType = .checkmark
//            setLanguage(lang: row == 1 ? Language.AR : Language.EN)
            cell.detailTextLabel?.text = ""

        }
    }
    
    func doChangeLanguageApp() {
        AppInfo.claerAppINFO()
        let windows = (UIApplication.shared.delegate as? AppDelegate)?.window
        let sb = UIStoryboard(name: "Main", bundle: nil)
        windows?.rootViewController = sb.instantiateViewController(withIdentifier: backTo)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return section == 0 ? "chooseLang_title".localized() : ""
    }
  
    
    func switchViewControllers(isArabic arabic : Bool , viewController : UIViewController){
        
        if arabic {
            UIView.appearance().semanticContentAttribute = arabic ? .forceRightToLeft : .forceLeftToRight
            let appDelegate = UIApplication.shared.delegate as? AppDelegate
            let homeViewController = viewController
            appDelegate?.window?.rootViewController = homeViewController
        }
    }
    
    
}
