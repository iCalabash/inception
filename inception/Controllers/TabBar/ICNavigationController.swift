//
//  ICNavigationController.swift
//  inception
//
//  Created by Faber on 2016/12/22.
//  Copyright © 2016年 Faber. All rights reserved.
//

import UIKit
import ChameleonFramework

class ICNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
        
        navigationBar.setbottomHairline(color:Inconstants.lineColor)
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