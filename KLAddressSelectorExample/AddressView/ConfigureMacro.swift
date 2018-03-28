//
//  ConfigureMacro.swift
//  KLDatePickerView
//
//  Created by 刘小陆 on 2018/1/8.
//  Copyright © 2018年 lxl. All rights reserved.
//

import UIKit

// 屏幕的宽度
 public var klScreen_width: CGFloat {
    return UIScreen.main.bounds.size.width
 }

// 屏幕的高度
public var klScreen_height: CGFloat {
    return UIScreen.main.bounds.size.height
}

// 设置pickerView的高度
public var klPickerViewHeight: CGFloat {
   return 216
}

// 高度比列
public func kl_scaleHeight(h: CGFloat)->CGFloat {
    return klScreen_height/667*h
}

// 宽度比
public func kl_scaleWidth(w: CGFloat)->CGFloat {
    return klScreen_width/375*w
}
//public var kl_scaleHeight(h: CGFloat):CGFloat {
//    return klScreen_height／667 * h
//}

