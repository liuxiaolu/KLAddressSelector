//
//  UIView+KLExtension.swift
//  KLDatePickerView
//
//  Created by 刘小陆 on 2018/1/10.
//  Copyright © 2018年 lxl. All rights reserved.
//

import UIKit

extension UIView {
    
    public var kl_x: CGFloat {
        get {
            return frame.origin.x
        }
        set {
            var f = frame
            f.origin.x = newValue
            frame = f
        }
    }
    
    public var kl_y: CGFloat {
        get {
            return frame.origin.y
        }
        set {
            var f = frame
            f.origin.y = newValue
            frame = f
        }
    }
    
    public var kl_width: CGFloat {
        get {
            return frame.size.width
        }
        set {
            var f = frame
            f.size.width = newValue
            frame = f
        }
    }
    
    public var kl_height: CGFloat {
        get {
            return frame.size.height
        }
        set {
            var f = frame
            f.size.height = newValue
            frame = f
        }
    }
    
    public var kl_origin: CGPoint {
        get {
            return frame.origin
        }
        set {
            var f = frame
            f.origin = newValue
            frame = f
        }
    }
    
    public var kl_size: CGSize {
        get {
            return frame.size
        }
        set {
            var f = frame
            f.size = newValue
            frame = f
        }
    }
    
    public var kl_centerX: CGFloat {
        get {
            return center.x
        }
        set {
            var c = center
            c.x = newValue
            center = c
        }
    }
    
    public var kl_centerY: CGFloat {
        get {
            return center.y
        }
        set {
            var c = center
            c.y = newValue
            center = c
        }
    }
    
    public var kl_bottom: CGFloat {
        get {
            return frame.maxY
        }
        set {
           kl_y = newValue - kl_height
        }
    }
    
}
