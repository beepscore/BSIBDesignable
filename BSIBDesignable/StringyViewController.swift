//
//  StringyViewController.swift
//  BSIBDesignable
//
//  Created by Steve Baker on 1/29/16.
//  Copyright © 2016 Beepscore LLC. All rights reserved.
//

import UIKit

class StringyViewController: UIViewController {

    @IBOutlet var stringyView: StringyView?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //stringyView!.label.text = "Hello"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
