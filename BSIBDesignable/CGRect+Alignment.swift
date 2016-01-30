//
//  CGRect+Alignment.swift
//  BSIBDesignable
//
//  Created by Steve Baker on 1/29/16.
//  Copyright © 2016 Beepscore LLC. All rights reserved.
//

import UIKit

extension CGRect {
    /// Convert a rect to a pixel-aligned version, rounding position and size
    func pixelAligned() -> CGRect {
        return CGRect(x: round(origin.x), y: round(origin.y),
            width: round(size.width), height: round(size.height))
    }
}