//
//  StringyView.swift
//  BSIBDesignable
//
//  Created by Steve Baker on 1/29/16.
//  Copyright © 2016 Beepscore LLC. All rights reserved.
//

import UIKit

/** StringyView is a custom view that uses a nib file.
 *  The view may be used in a storyboard.
 */
@IBDesignable
class StringyView: UIView {

    // http://stackoverflow.com/questions/9282365/load-view-from-an-external-xib-file-in-storyboard
    // https://gist.github.com/bwhiteley/049e4bede49e71a6d2e2

    @IBOutlet var view: UIView!
    @IBOutlet var label: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    // for using CustomView in IB
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        let bundleObjects = NSBundle.mainBundle().loadNibNamed("StringyView", owner: self, options: nil)
        let view = bundleObjects[0] as! UIView

        let frameHeight = self.bounds.size.height / 2
        let frameWidth = self.bounds.size.width
        let frameRect = CGRectMake(0,
            0.25 * self.bounds.size.height,
            frameWidth,
            frameHeight)
        view.frame = frameRect

        self.addSubview(view)
        view.backgroundColor = UIColor.yellowColor()

        // override text set in xib
        self.label.text = "Calculator"
    }

    override func drawRect(rect: CGRect) {
        
        // get the graphics context
        let context = UIGraphicsGetCurrentContext()
        
        // draw a line
        // http://www.techotopia.com/index.php/An_iOS_7_Graphics_Tutorial_using_Core_Graphics_and_Core_Image
        CGContextSetLineWidth(context, 6.0);
        let colorspace = CGColorSpaceCreateDeviceRGB();
        let components: [CGFloat] = [0.0, 0.0, 1.0, 1.0];
        
        let color: CGColorRef = CGColorCreate(colorspace, components)!;
        CGContextSetStrokeColorWithColor(context, color);
        CGContextMoveToPoint(context, 0, 0);
        let inset = CGFloat(10)
        CGContextAddLineToPoint(context,
            rect.width - inset, rect.height - inset);
        CGContextStrokePath(context);
    }
}
