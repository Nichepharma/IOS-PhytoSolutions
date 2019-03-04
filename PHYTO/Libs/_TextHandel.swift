//
//  _TextHandel.swift
//  PHYTO
//
//  Created by Yahia El-Dow on 5/10/18.
//  Copyright © 2018 Yahia El-Dow. All rights reserved.
//

import UIKit

extension UIApplication {
    class func isRTL() -> Bool{
        return UIApplication.shared.userInterfaceLayoutDirection == .rightToLeft
    }
}



class _TextView : UITextView {
    override func layoutSubviews() {
    }
}
class _Label : UILabel {
    override func layoutSubviews() {
        if UIApplication.isRTL()  {
            self.set_RTL()
            return
        }
        
        self.set_LTR()
    }
}

class _TextField : UITextField {
    override func layoutSubviews() {
        if UIApplication.isRTL()  {
            self.set_RTL()
            return
        }
        
        self.set_LTR()
    }
}



extension UILabel {
    
    func set_RTL(){
        self.textAlignment = .right
    }
    
    func set_LTR(){
        self.textAlignment = .left
    }
}
extension UITextView {
    
    func set_RTL(){
        self.textAlignment = .right
    }
    
    func set_LTR(){
        self.textAlignment = .left
    }
}

extension UITextField {
    
    func set_RTL(){
        self.textAlignment = .right
    }
    
    func set_LTR(){
        self.textAlignment = .left
    }
}
