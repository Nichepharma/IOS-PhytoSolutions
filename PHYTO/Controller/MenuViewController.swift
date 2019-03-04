//
//  MenuViewController.swift
//  PHYTO
//
//  Created by Yahia El-Dow on 3/22/18.
//  Copyright © 2018 Yahia El-Dow. All rights reserved.
//

import UIKit

class MenuViewController: MainViewController {
    @IBOutlet weak var menuView: UIView!
   
    
    override func loadView() {

        super.loadView()

    }

    @IBAction func menuViewAction(sender : AnyObject){
        self.dismiss(animated: true , completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "seg_goToLanguage"  {
                let vc = segue.destination as? LanguageSelectViewController
                vc?.backTo = "ProblemPageNav"
        return
        }
        
        if segue.identifier == "seg_goToAboutUs" {
         
        return
        }
        
    }
    

}




extension MenuViewController : UITableViewDelegate , UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UIView().loadXIB(xibFileName: "MenuCustomeCell") as! MenuCustomeCell
        cell.selectionStyle = .none
        cell.layer.cornerRadius = 10
        
        let index = indexPath.row
     if index == 0 {
            cell.title.text = "language_title".localized()
            cell.icon.image = #imageLiteral(resourceName: "ic_language") ;
        }
        else if index == 2 {
            cell.title.text = "aboutUs_title".localized()
            cell.icon.image = #imageLiteral(resourceName: "ic_menu") ;
        }
        
        else if index == 1 {
            cell.title.text = "stores_title".localized()
            cell.icon.image = #imageLiteral(resourceName: "ic_map") ;
        }
        return cell ;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        if index == 0   {
            performSegue(withIdentifier: "seg_goToLanguage", sender: index)
            return
        }
        if index == 2  {
            performSegue(withIdentifier: "seg_goToAboutUs", sender: index)
            return
        }
        if index == 1  {
            performSegue(withIdentifier: "seg_goToStores", sender: index)
            return
        }
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return section == 0 ? "menu_title".localized() : ""
    }
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 20
//    }
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 40 ))
//        return view
//    }
    
    
    
}

class MenuCustomeCell : UITableViewCell  {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var title: UILabel!
}
