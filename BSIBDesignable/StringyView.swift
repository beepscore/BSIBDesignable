//
//  StringyView.swift
//  BSIBDesignable
//
//  Created by Steve Baker on 1/29/16.
//  Copyright © 2016 Beepscore LLC. All rights reserved.
//

import UIKit

@IBDesignable
class StringyView: UIView {

    // http://stackoverflow.com/questions/9282365/load-view-from-an-external-xib-file-in-storyboard
    // https://gist.github.com/bwhiteley/049e4bede49e71a6d2e2

    @IBOutlet var view: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    // for using CustomView in IB
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        let bundleObjects = NSBundle.mainBundle().loadNibNamed("StringyView", owner: self, options: nil)
        let view = bundleObjects[0] as! UIView
        self.addSubview(view)
        view.frame = self.bounds
    }

}
