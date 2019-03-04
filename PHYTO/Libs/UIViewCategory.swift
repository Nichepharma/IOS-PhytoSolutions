//
//  UIViewCategory.swift
//  EstateRus
//
//  Created by Yahia El-Dow on 5/24/17.
//  Copyright © 2017 Production Code. All rights reserved.
//

import UIKit
extension UIView {
    
    func loadXIB(xibFileName : String) -> UIView {
      //  let xibView = UINib(nibName: xibFileName, bundle: nil).instantiate(withOwner: self, options: nil).first as! UIView
        // Bundle.main.loadNibNamed("RentsSoonCell", owner: self, options: nil)?.first
        let xibView = Bundle.main.loadNibNamed(xibFileName, owner: self, options: nil)?.first as! UIView
        return xibView
    }
    
   /* func loadXib (nibName : String) {
        let bundel  = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName , bundle: bundel)
        
        if let  xibView = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            xibView.frame.size.width = DeviceInfo.SCREEN_WIDTH
            self.frame.size.height = xibView.frame.size.height
        }
    }*/
    func setRoundedView(borderColor : CGColor = UIColor.white.cgColor , borderWidth  : CGFloat = 3.0) {

        let radius = self.frame.width / 2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
        /*
            self.clipsToBounds = true
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
         */

    }
    func setBorder (borderWidth : CGFloat = 1.5 , borderColor : UIColor = UIColor.gray){
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
     
    }
    
    func shake() {
      
        let yourDelay = 1
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(yourDelay), execute: { () -> Void in
                let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
                animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
                animation.duration = 3.5
                animation.values = [-20.0, 20.0, -20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0.0 ]
                animation.repeatCount = 1
                self.layer.add(animation, forKey: "shake")
        })
    }
    

    func moveToUpDown() {
        
        let yourDelay = 1
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(yourDelay), execute: { () -> Void in
            let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
            animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
            animation.duration = 3.5
            animation.values = [-20.0, 20.0, -20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0.0 ]
            animation.repeatCount = 1
            self.layer.add(animation, forKey: "shake")
        })
    }
}


extension Bundle {
    
    static func loadView<T>(fromNib name: String, withType type: T.Type) -> T {
        if let view = Bundle.main.loadNibNamed(name, owner: nil, options: nil)?.first as? T {
            return view
        }
        
        fatalError("Could not load view with type " + String(describing: type))
    }
}


/*
class customeText : UITextField {
    public override init(frame: CGRect) {
        super.init(frame: frame)
       
        if StaticVars.systemLanguage == 1 || StaticVars.systemLanguage == 5 {
             self.textAlignment = .right
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
        
        if StaticVars.systemLanguage == 1 || StaticVars.systemLanguage == 5 {
            self.textAlignment = .right
        }
    }

}
class customeTextView: UITextView {
  
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        if StaticVars.systemLanguage == 1 {
            self.textAlignment = .right
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        if StaticVars.systemLanguage == 1 || StaticVars.systemLanguage == 5 {
            self.textAlignment = .right
        }
    }
}
class customeLable: UILabel {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        if StaticVars.systemLanguage == 1 {
            self.textAlignment = .right
        }
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if StaticVars.systemLanguage == 1 || StaticVars.systemLanguage == 5{
            self.textAlignment = .right
        }
    }
}

class CustomeButton : UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupButton()

}
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupButton()
    }
    
    private func setupButton (){
        if StaticVars.systemLanguage == 1 || StaticVars.systemLanguage == 5{
           
            if #available(iOS 9.0, *) {
                self.semanticContentAttribute = .forceRightToLeft
            } else {
                
            }
            
            self.titleLabel?.textAlignment = .right
            self.contentHorizontalAlignment = .right
            
        }
    }
}
*/
