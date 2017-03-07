//
//  SettingViewController.swift
//  inception
//
//  Created by Faber on 2016/12/7.
//  Copyright © 2016年 Faber. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addRedBack()
        
//        form +++ Section()
//            <<< ButtonRow("修改密码"){
//                $0.title = $0.tag
//
//                $0.onCellSelection({ [unowned self](cell, row) in
//                    let lockVC = LockController()
//                    lockVC.controller = self
//                    lockVC.title = LockManager.options.modifyPassword
//                    lockVC.type = .modify
//                    self.present(LockMainNav(rootViewController: lockVC), animated: true, completion: nil)
//                })
//            }
        
        
        

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let lockVC = LockController()
        lockVC.controller = self
        lockVC.title = LockManager.options.modifyPassword
        lockVC.type = .modify
        self.present(LockMainNav(rootViewController: lockVC), animated: true, completion: nil)
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
