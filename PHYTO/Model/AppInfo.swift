//
//  InitModelClasses.swift
//  PHYTO
//
//  Created by Yahia El-Dow on 3/19/18.
//  Copyright © 2018 Yahia El-Dow. All rights reserved.
//

import UIKit

class AppInfo: NSObject {
    
   private static var appDataInfoArray = [Problem]()
    static func getAppINFO() -> [Problem] {
        if AppInfo.appDataInfoArray.count == 0 {
            _ = AppInfo()
            return AppInfo.appDataInfoArray
        }
        return AppInfo.appDataInfoArray
    }
    
    static func claerAppINFO(){
        self.appDataInfoArray.removeAll()
    }
   private override init() {
        super.init()
    self.initProblem_1()
    self.initProblem_2()
    self.initProblem_3()
    self.initProblem_4()
    self.initProblem_5()
    self.initProblem_6()
    self.initProblem_7()
    self.initProblem_8()
    self.initProblem_9() 


        
    }
    
private func initProblem_1() {
    let s1 = Solution(title: "p1_s1_title".localized(),
                      subTitle :"p1_s1_subTitle".localized() ,
                      desc: "p1_s1_desc".localized(),
                      image: #imageLiteral(resourceName: "p1S1"))
    
    let s2 = Solution(title: "p1_s2_title".localized(),
                      subTitle :"p1_s2_subTitle".localized() ,
                      desc: "p1_s2_desc".localized() ,
                      image:#imageLiteral(resourceName: "p1S2"))
    
    let s3 = Solution(title: "p1_s3_title".localized(),
                      subTitle :"p1_s3_subTitle".localized(),
                      desc: "p1_s3_desc".localized() ,

                      image: #imageLiteral(resourceName: "p1S3"))

    self.setProblem(_title: "p1_title".localized(),
                    _color_code: "fdbc11",
                    _desc: "p1_desc".localized(),
                    _bkgID : 1 ,
                    _solution: [s1,s2,s3])

}
    
private func initProblem_2() {
    let s1 = Solution(title: "p2_s1_title".localized(),
                      subTitle :"p2_s1_subTitle".localized() ,
                      desc: "p2_s1_desc".localized(),
                      image: #imageLiteral(resourceName: "p2S1"))
    
    let s2 = Solution(title: "p2_s2_title".localized(),
                      subTitle :"p2_s2_subTitle".localized(),
                      desc: "p2_s2_desc".localized(),
                      image: #imageLiteral(resourceName: "p2S2"))
    
    let s3 = Solution(title: "p2_s3_title".localized(),
                      subTitle :"p2_s3_subTitle".localized() ,
                      desc: "p2_s3_desc".localized(),
                      image: #imageLiteral(resourceName: "p2S3"))
    
    let s4 = Solution(title: "p2_s4_title".localized(),
                      subTitle :"p2_s4_subTitle".localized() ,
                      desc: "p2_s4_desc".localized(),
                      image: #imageLiteral(resourceName: "p2S4"))
    
    let s5 = Solution(title: "p2_s5_title".localized(),
                      subTitle :"p2_s5_subTitle".localized() ,
                      desc: "p2_s5_desc".localized(),
                      image: #imageLiteral(resourceName: "p2S5"))

    self.setProblem(_title: "p2_title".localized() ,
                    _color_code: "f0907a",
                    _desc: "p2_desc".localized(),
                    _bkgID: 2,
                    _solution: [s1,s2,s3,s4,s5])

}
    
private func initProblem_3() {
    
    

    let s1 = Solution(title: "p3_s1_title".localized() ,
                      subTitle: "p3_s1_subTitle".localized() ,
                      desc: "p3_s1_desc".localized() ,
                      image: #imageLiteral(resourceName: "p3S1"))
    
    let s2 = Solution(title: "p3_s2_title".localized() ,
                      subTitle: "p3_s2_subTitle".localized() ,
                      desc: "p3_s2_desc".localized() ,
                      
                      image: #imageLiteral(resourceName: "p3S2"))
    
    let s3 = Solution(title: "p3_s3_title".localized() ,
                      subTitle: "p3_s3_subTitle".localized() ,
                      desc: "p3_s3_desc".localized() ,
                      image: #imageLiteral(resourceName: "p3S3"))
    
        
    self.setProblem(_title: "p3_title".localized()  ,
                    _color_code: "7d2083".localized() ,
                    _desc: "p3_desc".localized(),
                     _bkgID: 1 ,
                    _solution: [s1,s2,s3])

}
private func initProblem_4() {
    
    let s1 = Solution(title: "p4_s1_title".localized() ,
                      subTitle: "p4_s1_subTitle".localized() ,
                      desc: "p4_s1_desc".localized() ,
                      image: #imageLiteral(resourceName: "p4S1"))
    
    let s2 = Solution(title: "p4_s2_title".localized() ,
                      subTitle: "p4_s2_subTitle".localized() ,
                      desc: "p4_s2_desc".localized() ,
                      image:  #imageLiteral(resourceName: "p4S2"))
    
    let s3 = Solution(title: "p4_s3_title".localized() ,
                      subTitle: "p4_s3_subTitle".localized() ,
                      desc: "p4_s3_desc".localized() ,
                      image: #imageLiteral(resourceName: "p4S3"))
    
    let s4 = Solution(title: "p4_s4_title".localized() ,
                      subTitle: "p4_s4_subTitle".localized() ,
                      desc: "p4_s4_desc".localized() ,
                      image:  #imageLiteral(resourceName: "p4S4"))

    self.setProblem(_title: "p4_title" .localized() ,
                    _color_code: "5a0872",
                    _desc: "p4_desc".localized() ,
                     _bkgID: 2  ,
                    _solution: [s1,s2,s3,s4])

}
private func initProblem_5() {
    
    
    let s1 = Solution(title: "p5_s1_title".localized() ,
                      subTitle: "p5_s1_subTitle".localized() ,
                      desc: "p5_s1_desc".localized() ,
                      image:  #imageLiteral(resourceName: "p5S1"))
    
    let s2 = Solution(title: "p5_s2_title".localized() ,
                      subTitle: "p5_s2_subTitle".localized() ,
                      desc: "p5_s2_desc".localized() ,
                      image:  #imageLiteral(resourceName: "p5S2"))
    
    
    let s3 = Solution(title: "p5_s3_title".localized() ,
                      subTitle: "p5_s3_subTitle".localized() ,
                      desc: "p5_s3_desc".localized() ,
                      image:  #imageLiteral(resourceName: "p5S3"))
    
    let s4 = Solution(title: "p5_s4_title".localized() ,
                      subTitle: "p5_s4_subTitle".localized() ,
                      desc: "p5_s4_desc".localized() ,
                      image: #imageLiteral(resourceName: "p5S4"))
    
    let s5 = Solution(title: "p5_s5_title".localized() ,
                      subTitle: "p5_s5_subTitle".localized() ,
                      desc: "p5_s5_desc".localized() ,
                      image:  #imageLiteral(resourceName: "p5S5"))

    
    self.setProblem(_title: "p5_title".localized() ,
                    _color_code: "9d1b30",
                    _desc: "p5_desc".localized(),
                     _bkgID: 2 ,
                      _solution: [s1,s2,s3,s4,s5])

}
private func initProblem_6() {
    
    
    let s1 = Solution(title: "p6_s1_title".localized(),
                      subTitle: "p6_s1_subTitle".localized(),
                      desc: "p6_s1_desc".localized(),
                      image: #imageLiteral(resourceName: "p6S1"))
    
    let s2 = Solution(title: "p6_s2_title".localized(),
                      subTitle: "p6_s2_subTitle".localized(),
                      desc: "p6_s2_desc".localized(),
                      image: #imageLiteral(resourceName: "p6S2"))
    
    let s3 = Solution(title: "p6_s3_title".localized(),
                      subTitle: "p6_s3_subTitle".localized(),
                      desc: "p6_s3_desc".localized(),
                      image:  #imageLiteral(resourceName: "p6S3"))
    
    self.setProblem(_title: "p6_title".localized() ,
                    _color_code: "b90074",
                    _desc: "p6_desc".localized(),
                     _bkgID: 2,
                    _solution: [s1,s2,s3])

}
private func initProblem_7() {
    let s1 = Solution(title: "p7_s1_title".localized(),
                      subTitle: "p7_s1_subTitle".localized(),
                      desc: "p7_s1_desc".localized(),
                      image: #imageLiteral(resourceName: "p7S1"))
    
    let s2 = Solution(title: "p7_s2_title".localized(),
                      subTitle: "p7_s2_subTitle".localized(),
                      desc: "p7_s2_desc".localized(),
                      image: #imageLiteral(resourceName: "p7S2"))
    
    let s3 = Solution(title: "p7_s3_title".localized(),
                      subTitle: "p7_s3_subTitle".localized(),
                      desc:"p7_s3_desc".localized(),
                      image: #imageLiteral(resourceName: "p7S3"))
    
    let s4 = Solution(title: "p7_s4_title".localized(),
                      subTitle: "p7_s4_subTitle".localized(),
                      desc: "p7_s4_desc".localized(),
                      image: #imageLiteral(resourceName: "p7S4"))

    self.setProblem(_title: "p7_title".localized(),
                    _color_code: "58342d",
                    _desc: "p7_desc".localized(),
                     _bkgID: 3,
                    _solution: [s1,s2,s3,s4])

}
    
private func initProblem_8() {
    let s1 = Solution(title: "p8_s1_title".localized(),
                      subTitle: "p8_s1_subTitle".localized(),
                      desc: "p8_s1_desc".localized(),
                      image: #imageLiteral(resourceName: "p8S1"))
    
    let s2 = Solution(title: "p8_s2_title".localized(),
                      subTitle: "p8_s2_subTitle".localized(),
                      desc: "p8_s2_desc".localized(),
                      image: #imageLiteral(resourceName: "p8S2"))
    
    let s3 = Solution(title: "p8_s3_title".localized(),
                      subTitle: "p8_s3_subTitle".localized(),
                      desc: "p8_s3_desc".localized(),
                      image: #imageLiteral(resourceName: "p8S3"))
    
    
    self.setProblem(_title: "p8_title".localized(),
                    _color_code: "9b5ba4",
                    _desc: "p8_desc".localized(),
                     _bkgID: 3,
                    _solution: [s1,s2,s3])

}
    
    
    private func initProblem_9() {
        let s1 = Solution(title: "p9_s1_title".localized(),
                          subTitle: "p9_s1_subTitle".localized(),
                          desc: "p9_s1_desc".localized(),
                          image: #imageLiteral(resourceName: "p9s1"))
        
        self.setProblem(_title: "p9_title".localized(),
                        _color_code: "9e1c31",
                        _desc: "p9_desc".localized(),
                        _bkgID: 3,
                        _solution: [s1])
        
        
        
    }
    private func setProblem (_title : String  , _color_code : String , _desc : String , _bkgID : Int , _solution : [Solution] ) {
    
        let problem = Problem(title: _title, color_code: _color_code, desc: _desc , bkg_id: _bkgID, solution: _solution);
        AppInfo.appDataInfoArray.append(problem)
    }
}
