//
//  DesignableView.swift
//  BSIBDesignable
//
//  Created by Steve Baker on 1/29/16.
//  Copyright © 2016 Beepscore LLC. All rights reserved.
//

import UIKit

@IBDesignable
class DesignableView: UIView {

    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var borderColor: UIColor? {
        didSet {
            // runtime attribute supports type UIColor but not CGColor
            // so method argument type is UIColor.
            // layer.borderColor type is CGColor.
            // So convert argument UIColor to CGColor for use by layer.
            // This is an example of a computed property.
            // http://nshipster.com/ibinspectable-ibdesignable/ 
            layer.borderColor = borderColor?.CGColor
        }
    }
    
}
