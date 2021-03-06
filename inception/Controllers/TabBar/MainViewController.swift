//
//  MainViewController.swift
//  inception
//
//  Created by Faber on 2016/12/7.
//  Copyright © 2016年 Faber. All rights reserved.
//

import UIKit
import ChameleonFramework

class MainViewController: UITabBarController {

    open static let shareInstance = MainViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addChildVC()
    }

    fileprivate func addChildVC() {
        let docuVC = DocumentViewController()
        docuVC.title = "密码"
        let phoVC = PhotosViewController()
        phoVC.title = "相册"
        let videoVC = VideosViewController()
        videoVC.title = "视频"
        let setVC = SettingViewController()
        setVC.title = "设置"
        
        let titleArray = ["密码","相册","视频","设置"]
        let imageArray = ["Locked","Photos","Camera","Cog"]
        
        let docuNC = ICNavigationController(rootViewController: docuVC)
        let phoNC = ICNavigationController(rootViewController: phoVC)
        let videoNC = ICNavigationController(rootViewController: videoVC)
        let setNC = ICNavigationController(rootViewController: setVC)
        
        viewControllers = [docuNC,phoNC,videoNC,setNC]
        
        
        for i in 0...3 {
            let vc = self.viewControllers![i]
            let item = UITabBarItem.init(title: titleArray[i], image: UIImage.init(named: imageArray[i]), tag: 10+i)
            vc.tabBarItem = item
        }
        
        let tabBack = UIColor.init(white: 0, alpha: 0.2)
        let tabBackSelect = UIColor.init(white: 0, alpha: 0.4)
        tabBar.setColors(background: tabBack, selectedBackground: tabBackSelect, item: UIColor(hexString:"#929292"), selectedItem: UIColor.white)
        tabBar.shadowImage = UIImage.init(color: Inconstants.lineColor, size: CGSize.init(width: mainScreenWidth, height: 0.5))
        
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
