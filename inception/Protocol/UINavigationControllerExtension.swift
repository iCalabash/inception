//
//  UINavigationControllerExtension.swift
//  inception
//
//  Created by Faber on 2016/12/22.
//  Copyright © 2016年 Faber. All rights reserved.
//

import UIKit

extension UINavigationController {
    func setNavigationBar() {
        //UINavigationBar.appearance().tintColor = appMainColor
        
        
        let image = UIImage.init(color: UIColor.clear, size: CGSize(width: mainScreenWidth, height: 65))
        navigationBar.setBackgroundImage(image, for: .default)
        
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        //,NSFontAttributeName:UIFont.boldSystemFont(ofSize: 18.0)
        
        //navigationBar.hideBottomHairline()
        
        UINavigationBar.appearance().tintColor = UIColor.white
    }
}
