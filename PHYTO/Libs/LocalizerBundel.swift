//
//  LocalizerBundel.swift
//  MultiLanguageProject
//
//  Created by Yahia El-Dow on 11/13/17.
//  Copyright © 2017 Yahia El-Dow. All rights reserved.
//

import Foundation
import UIKit

class  LocalizerBundel  {
    
    class func DoTheExchange () {

        let originalSelector =  #selector(Bundle.localizedString(forKey:value:table:))
        let overrideSelector = #selector(Bundle.customeLocalizedString(forKey:value:table:))
        ExchangeMethodsForClass(className: Bundle.self,
                                originalSelector:originalSelector ,
                                overrideSelector: overrideSelector)
        }
}
extension Bundle {
    @objc open func customeLocalizedString(forKey key: String, value: String?, table tableName: String?)-> String{
        let  current_language = LanguageManagement.getCurrentLanguage()
        var bundel = Bundle()
        if let path = Bundle.main.path(forResource: current_language.trimmingCharacters(in: .whitespaces), ofType: "lproj") {
            bundel = Bundle(path: path)!
        }else{
            if let path =  Bundle.main.path(forResource: "Base", ofType: "lproj"){
                bundel = Bundle(path: path)!

            }

        }
        return bundel.customeLocalizedString(forKey: key , value:value , table:tableName)
    }
}


func ExchangeMethodsForClass (className : AnyClass , originalSelector : Selector , overrideSelector : Selector){
    
    guard let originalMethod = class_getInstanceMethod(className , originalSelector) else{ return }
    guard let overrideMethod = class_getInstanceMethod(className , overrideSelector) else{ return }
    
    let originalMethodImplementation = method_getImplementation(originalMethod)
    let overrideMethodImplementation = method_getImplementation(overrideMethod)
    
    let originalMethodTypeEncoding = method_getTypeEncoding(originalMethod)
    let overrideMethodTypeEncoding = method_getTypeEncoding(overrideMethod)
    
    if class_addMethod(className , originalSelector , overrideMethodImplementation , overrideMethodTypeEncoding) {
        class_replaceMethod(className, overrideSelector , originalMethodImplementation, originalMethodTypeEncoding)
    }else{
        // if method is executed
        method_exchangeImplementations(originalMethod, overrideMethod)
    }
}
