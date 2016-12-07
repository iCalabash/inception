//
//  MainViewController.swift
//  inception
//
//  Created by Faber on 2016/12/7.
//  Copyright © 2016年 Faber. All rights reserved.
//

import UIKit



class MainViewController: UITabBarController {

    open static let shareInstance = MainViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addChildVC()
    }

    fileprivate func addChildVC() {
        let docuVC = DocumentViewController()
        docuVC.title = "文档"
        let phoVC = PhotosViewController()
        phoVC.title = "相册"
        let videoVC = VideosViewController()
        videoVC.title = "视频"
        let setVC = SettingViewController()
        setVC.title = "设置"
        
        let docuNC = UINavigationController(rootViewController: docuVC)
        let phoNC = UINavigationController(rootViewController: phoVC)
        let videoNC = UINavigationController(rootViewController: videoVC)
        let setNC = UINavigationController(rootViewController: setVC)
        
        viewControllers = [docuNC,phoNC,videoNC,setNC]
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
