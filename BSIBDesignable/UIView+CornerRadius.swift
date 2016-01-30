//
//  UIView+CornerRadius.swift
//  BSIBDesignable
//
//  Created by Steve Baker on 1/29/16.
//  Copyright © 2016 Beepscore LLC. All rights reserved.
//

import UIKit

// http://stackoverflow.com/questions/26319660/whats-the-best-practice-for-naming-swift-files-that-add-extensions-to-existing

// Extend UIView to support cornerRadius in interfaceBuilder
// http://nshipster.com/ibinspectable-ibdesignable/
extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
