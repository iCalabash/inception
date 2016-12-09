//
//  SettingViewController.swift
//  inception
//
//  Created by Faber on 2016/12/7.
//  Copyright © 2016年 Faber. All rights reserved.
//

import UIKit
import Eureka

class SettingViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        form +++ Section()
            <<< ButtonRow("修改密码"){
                $0.title = $0.tag
//                $0.presentationMode = PresentationMode.show(controllerProvider: ControllerProvider.callback(builder: { return LockSetViewController()
//                }), onDismiss: nil)
                $0.onCellSelection({ [unowned self](cell, row) in
                    LockManager.showModifyLockControllerIn(self, animate: true, success: { (controller) in
                        print("success")
                    }, forget: { (controller) in
                        print("forget")
                    })
                })
            }
        
        
        

        // Do any additional setup after loading the view.
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

}
