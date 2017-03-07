//
//  UITabBarExtensions.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 9/28/16.
//  Copyright © 2016 Omar Albeik. All rights reserved.
//

import UIKit

public extension UITabBar {
	// Set tabBar colors
	public func setColors(background: UIColor? = nil,
	               selectedBackground: UIColor? = nil,
	               item: UIColor? = nil,
	               selectedItem: UIColor? = nil) {
		
		// background
		self.barTintColor = background ?? self.barTintColor
		
		// selectedItem
		self.tintColor = selectedItem ?? self.tintColor
        
        let rect = CGSize(width: self.frame.width/CGFloat(self.items!.count), height: self.frame.height)
		//		self.shadowImage = UIImage()
        self.backgroundImage = UIImage(color: background ?? UIColor.clear, size: rect)
		self.isTranslucent = true
		
		// selectedBackgoundColor
		
		if let selectedbg = selectedBackground {
			self.selectionIndicatorImage = UIImage(color: selectedbg, size: rect)
		}
		
		if let itemColor = item {
			for barItem in self.items! as [UITabBarItem] {
				// item
				if let image = barItem.image {
					barItem.image = image.filled(withColor: itemColor).withRenderingMode(.alwaysOriginal)
					barItem.setTitleTextAttributes([NSForegroundColorAttributeName : itemColor], for: .normal)
                    if let selectbg = selectedItem {
					barItem.setTitleTextAttributes([NSForegroundColorAttributeName : selectbg], for: .selected)
                    }
				}
			}
		}
	}
    
}
