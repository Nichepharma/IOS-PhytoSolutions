//
//  LanguageChecked.swift
//  MultiLanguageProject
//
//  Created by Yahia El-Dow on 11/13/17.
//  Copyright © 2017 Yahia El-Dow. All rights reserved.
//
//https://www.youtube.com/watch?v=w72mEguN540&feature=youtu.be
import Foundation
import UIKit

enum Languages {
    case en
    case ar
}
class LanguageManagement {
    
    static let APPLE_LANGUAGE_KEY = "AppleLanguages"

    class func getCurrentLanguage () -> String {
        let userDefault =  UserDefaults.standard

        guard let languages =  userDefault.object(forKey: APPLE_LANGUAGE_KEY) as? NSArray else {return "" }
        guard let current_language = languages.firstObject as? String else {return "" }
//                print("current_language = ", current_language)
                return current_language.trimmingCharacters(in: .whitespaces)
    }
    
    
    class func setAppLanguage (language : Languages){
        var languages = [ "en" , "ar"]
        if language == Languages.ar {
            languages = ["ar" , "en"]
        }
        let userDefault =  UserDefaults.standard
            userDefault.set(languages, forKey: APPLE_LANGUAGE_KEY)
        if userDefault.synchronize() {
            print("synchronize Language Done ..")
        }
        else{
            print("Valid synchronize Language !!")
        }
    }
    
    
    class func appIsArabic ()-> Bool {
        if getCurrentLanguage().range(of: "ar") != nil {
            return true
        }
        return false
    }
}
