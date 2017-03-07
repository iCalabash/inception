//
//  InceViewExtension.swift
//  inception
//
//  Created by Faber on 2016/12/29.
//  Copyright © 2016年 Faber. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func addBlueBack() {
        addGradient(topColor: UIColor(hexString: BackHexColor.blueTop)!, bottomColor: UIColor(hexString: BackHexColor.blueBottom)!)
    }
    
    func addGreenBack() {
        addGradient(topColor: UIColor(hexString: BackHexColor.greenTop)!, bottomColor: UIColor(hexString: BackHexColor.greenBottom)!)
    }
    
    func addMintBack() {
        addGradient(topColor: UIColor(hexString: BackHexColor.mintTop)!, bottomColor: UIColor(hexString: BackHexColor.mintBottom)!)
    }
    
    func addYellowBack() {
        addGradient(topColor: UIColor(hexString: BackHexColor.yellowTop)!, bottomColor: UIColor(hexString: BackHexColor.yellowBottom)!)
    }
    
    func addOrangeBack() {
        addGradient(topColor: UIColor(hexString: BackHexColor.orangeTop)!, bottomColor: UIColor(hexString: BackHexColor.orangeBottom)!)
    }
    
    func addRedBack() {
        addGradient(topColor: UIColor(hexString: BackHexColor.redTop)!, bottomColor: UIColor(hexString: BackHexColor.redBottom)!)
    }
    
    func addPurpleBack() {
        addGradient(topColor: UIColor(hexString: BackHexColor.purpleTop)!, bottomColor: UIColor(hexString: BackHexColor.purpleBottom)!)
    }
    
    func addBrownBack() {
        addGradient(topColor: UIColor(hexString: BackHexColor.brownTop)!, bottomColor: UIColor(hexString: BackHexColor.brownBottom)!)
    }
    
    func addPlumBack() {
        addGradient(topColor: UIColor(hexString: BackHexColor.plumTop)!, bottomColor: UIColor(hexString: BackHexColor.plumBottom)!)
    }
    
    func addNavyBlueBack() {
        addGradient(topColor: UIColor(hexString: BackHexColor.navyBlueTop)!, bottomColor: UIColor(hexString: BackHexColor.navyBlueBottom)!)
    }
    
    fileprivate struct BackHexColor {
       static let blueTop = "#3F4AB1"
       static let blueBottom = "#009DC4"
        
       static let greenTop = "#41750A"
       static let greenBottom = "#88AE12"
        
       static let mintTop = "#006E60"
       static let mintBottom = "#08AF5A"
        
       static let yellowTop = "#CA5200"
       static let yellowBottom = "#DB9B00"
        
       static let orangeTop = "#C2382A"
       static let orangeBottom = "#E48930"
        
       static let redTop = "#9D1B55"
       static let redBottom = "#D9595B"
        
       static let purpleTop = "#6B2084"
       static let purpleBottom = "#AF4194"
        
       static let brownTop = "#44263B"
       static let brownBottom = "#694654"
        
       static let plumTop = "#382B53"
       static let plumBottom = "#55486F"
        
       static let navyBlueTop = "#2E3951"
       static let navyBlueBottom = "#4D5872"
    }
    
    fileprivate func addGradient(topColor: UIColor, bottomColor: UIColor) {
        let gradientColors = [topColor.cgColor, bottomColor.cgColor]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        
        gradientLayer.colors = gradientColors
        
        //(这里的起始和终止位置就是按照坐标系,四个角分别是左上(0,0),左下(0,1),右上(1,0),右下(1,1))
        
        //渲染的起始位置
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        
        //渲染的终止位置
        
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        
        //设置frame和插入view的layer
        
        gradientLayer.frame = view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
}
