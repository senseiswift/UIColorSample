//
//  UIColorEx.swift
//  UIcolorSample
//
//  Created by sensei on 2015/09/10.
//  Copyright (c) 2015年 senseiswift. All rights reserved.
//

import UIKit
import Foundation

extension UIColor {
    
    class func twitterColor()->UIColor{
        return UIColor.rgbColor(0x00ACED)
    }
    
    class func facebookColor()->UIColor{
        return UIColor.rgbColor(0x305097)
    }
    
    class func lineColor()->UIColor{
        return UIColor.rgbColor(0x5AE628)
    }
    
    class func rgbColor(rgbValue: UInt) -> UIColor{
        return UIColor(
            red:   CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >>  8) / 255.0,
            blue:  CGFloat( rgbValue & 0x0000FF)        / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}