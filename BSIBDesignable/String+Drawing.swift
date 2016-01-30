//
//  String+Drawing.swift
//  BSIBDesignable
//
//  Created by Steve Baker on 1/29/16.
//  Copyright © 2016 Beepscore LLC. All rights reserved.
//

import UIKit

/// The alignment for drawing an String inside a bounding rectangle.
enum NCStringAlignment {
    case LeftTop
    case CenterTop
    case RightTop
    case LeftCenter
    case Center
    case RightCenter
    case LeftBottom
    case CenterBottom
    case RightBottom
}

extension String {
    /** Draw the `String` inside the bounding rectangle with a given alignment.
     */
    func drawAtPointInRect(rect: CGRect, withAttributes attributes: [String: AnyObject]?, andAlignment alignment: NCStringAlignment) {
        let size = self.sizeWithAttributes(attributes)
        let x, y: CGFloat
        
        switch alignment {
        case .LeftTop, .LeftCenter, .LeftBottom:
            x = CGRectGetMinX(rect)
        case .CenterTop, .Center, .CenterBottom:
            x = CGRectGetMidX(rect) - size.width / 2
        case .RightTop, .RightCenter, .RightBottom:
            x = CGRectGetMaxX(rect) - size.width
        }
        
        switch alignment {
        case .LeftTop, .CenterTop, .RightTop:
            y = CGRectGetMinY(rect)
        case .LeftCenter, .Center, .RightCenter:
            y = CGRectGetMidY(rect) - size.height / 2
        case .LeftBottom, .CenterBottom, .RightBottom:
            y = CGRectGetMaxY(rect) - size.height
        }
        
        self.drawAtPoint(CGPoint(x: x, y: y), withAttributes: attributes)
    }
    
}
