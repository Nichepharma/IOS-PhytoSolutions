//
//  SolutionViewController.swift
//  PHYTO
//
//  Created by Yahia El-Dow on 3/20/18.
//  Copyright © 2018 Yahia El-Dow. All rights reserved.
//

import UIKit

class SolutionViewController: MainViewController {
    
    @IBOutlet weak var product_image: UIImageView!{
        didSet{
            product_image.layer.borderWidth = 0.5
            product_image.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    @IBOutlet weak var product_title: UILabel!
    @IBOutlet weak var product_ViewColorCode: UIView!
    @IBOutlet weak var product_subTitle: UITextView!
    @IBOutlet weak var product_desc: UITextView!
    
    var _itemSelected = -1
    var currentCellSelected =  0
    
    
    @IBOutlet weak var btn_arrow: UIButton!
    
    

    override func loadView() {
        super.loadView()
     
        
        self.setDataOnView(itemSelected: 0)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if LanguageManagement.appIsArabic() {
            self.product_title.textAlignment = .right
            self.product_subTitle.textAlignment = .right
            self.product_desc.textAlignment = .right
        }else{
            self.product_title.textAlignment = .left
            self.product_subTitle.textAlignment = .left
            self.product_desc.textAlignment = .left
        }

        if self._itemSelected == -1 {
            self.navigationController?.popViewController(animated:true)
            return
        }
        
        self.product_ViewColorCode.backgroundColor = UIColor().hexStringToUIColor(hex: AppInfo.getAppINFO()[_itemSelected].color_code)

        
        _ = Timer.scheduledTimer(timeInterval: 3 ,
                                         target: self,
                                         selector: #selector(self.hiddenButton), userInfo: nil, repeats: false)
        
        
        UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse] , animations: {
            self.btn_arrow.frame = CGRect(x: self.btn_arrow.frame.origin.x,
                                              y: self.btn_arrow.frame.origin.y + 10 ,
                                              width: self.btn_arrow.frame.width ,
                                              height: self.btn_arrow.frame.size.height);
        } )
        
      
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.product_desc.isScrollEnabled = true
        self.product_subTitle.isScrollEnabled = true
    }

    @objc func hiddenButton(){
        UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseInOut] , animations: {
                  self.btn_arrow.alpha  = 0
        } , completion: { (finished) in
            
      
        })
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

   fileprivate func setDataOnView(itemSelected : Int) {
    
        //self.product_desc.scrollRectToVisible(.zero, animated: true)
        //self.product_subTitle.scrollRectToVisible(.zero, animated: true)
        self.product_desc.scrollRangeToVisible(NSRange(location:0, length:0))
        self.product_subTitle.scrollRangeToVisible(NSRange(location:0, length:0))

    
        self.product_desc.isScrollEnabled = false
        self.product_subTitle.isScrollEnabled = false
    
        self.product_image.image =  AppInfo.getAppINFO()[_itemSelected].solution[itemSelected].image
        self.product_title.text = AppInfo.getAppINFO()[_itemSelected].solution[itemSelected].title
        self.product_subTitle.text =  AppInfo.getAppINFO()[_itemSelected].solution[itemSelected].subTitle
        self.product_desc.text =  AppInfo.getAppINFO()[_itemSelected].solution[itemSelected].desc
    
    self.product_desc.isScrollEnabled = true
    self.product_subTitle.isScrollEnabled = true
    product_title.adjustsFontSizeToFitWidth =  true


    }
}


extension SolutionViewController : UICollectionViewDelegate , UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return _itemSelected != -1 ? AppInfo.getAppINFO()[_itemSelected].solution.count : 0
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        let index = indexPath.row

        if cell is SolutionCustomCell {
            guard let tempCell = cell as? SolutionCustomCell else {return}
                tempCell.layer.borderWidth = 0
                tempCell.product_image.alpha = 1
                tempCell.setBorder(borderWidth: 0 , borderColor: .clear )
            if index == currentCellSelected {
                tempCell.layer.borderWidth = 1
                tempCell.product_image.alpha = 0.5
                tempCell.setBorder(borderWidth: 1 , borderColor:  self.product_ViewColorCode.backgroundColor! )
            }
        
            }

}
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let index = indexPath.row
     
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SolutionCustomeCell" , for: indexPath) as! SolutionCustomCell

            cell.product_image.image = AppInfo.getAppINFO()[_itemSelected].solution[index].image
        

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let index = indexPath.row
        currentCellSelected = index
        self.setDataOnView(itemSelected: index)
//        collectionView.performBatchUpdates(nil, completion: nil)

        let cell = collectionView.cellForItem(at: indexPath) as! SolutionCustomCell
            cell.setBorder(borderWidth: 1 , borderColor:  self.product_ViewColorCode.backgroundColor! )
            cell.product_image.alpha = 0.5
        
         collectionView.reloadData()
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        
        if let cell = collectionView.cellForItem(at: indexPath) as? SolutionCustomCell {
                cell.layer.borderWidth = 0
                cell.product_image.alpha = 1
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let cell = collectionView.cellForItem(at: indexPath)  as! SolutionCustomCell

        switch collectionView.indexPathsForSelectedItems?.first {

        case .some(indexPath): break
//            collectionView.cellForItem(at: indexPath)?.alpha = 0.6
//            cell.product_image.frame.size.width = 40
//            cell.product_image.frame.size.height = 40
//            cell.product_image.contentMode = .center
//            return CGSize(width: 100 , height: 85)
            
        default: break
//            collectionView.cellForItem(at: indexPath)?.alpha = 1
//            cell.product_image.frame.size.width = 100
//            cell.product_image.frame.size.height = 85
        }
        return CGSize(width: 100 , height: 85)

    }
    
    
}


class SolutionCustomCell : UICollectionViewCell  {
    @IBOutlet weak var product_image: UIImageView!{
        didSet{
            self.product_image.alpha = 1
        }
    }
    
}
