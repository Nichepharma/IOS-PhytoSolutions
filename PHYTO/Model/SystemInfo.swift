//
//  SystemInfo.swift
//  PHYTO
//
//  Created by Yahia El-Dow on 3/22/18.
//  Copyright © 2018 Yahia El-Dow. All rights reserved.
//

import UIKit

class SystemInfo: NSObject {
fileprivate static let str_appIsInit = "appIsInit"

static func appIsInit() -> Bool {
    let userInfo = UserDefaults()
    if userInfo.bool(forKey: SystemInfo.str_appIsInit) {
        return true
    }
    return false
}
static func initApp(){
    let userInfo = UserDefaults()
    userInfo.set(true, forKey: SystemInfo.str_appIsInit)
    userInfo.synchronize()
}



}
