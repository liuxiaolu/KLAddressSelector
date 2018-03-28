//
//  UIColor+KLExtension.swift
//  KLDatePickerView
//
//  Created by 刘小陆 on 2018/1/11.
//  Copyright © 2018年 lxl. All rights reserved.
//

import UIKit

extension UIColor {
    public func hexStringToColor(hexString: String, alpha: CGFloat) -> UIColor{
        
        var cString: String = hexString.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
        if cString.count < 6 {
            return UIColor.black
        }
        if cString.hasPrefix("0x") {
            cString = cString.replacingOccurrences(of: "0x", with: "")
        }
        if cString.hasPrefix("#") {
            cString = cString.replacingOccurrences(of: "#", with: "")
        }
        if cString.count != 6 {
            return UIColor.black
        }
        
        var range: NSRange = NSMakeRange(0, 2)
        let rString = (cString as NSString).substring(with: range)
        range.location = 2
        let gString = (cString as NSString).substring(with: range)
        range.location = 4
        let bString = (cString as NSString).substring(with: range)
        
        var r: UInt32 = 0x0
        var g: UInt32 = 0x0
        var b: UInt32 = 0x0
        Scanner.init(string: rString).scanHexInt32(&r)
        Scanner.init(string: gString).scanHexInt32(&g)
        Scanner.init(string: bString).scanHexInt32(&b)
        
//        return UIColor(displayP3Red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: alpha)
        return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: alpha)
        
    }

}
