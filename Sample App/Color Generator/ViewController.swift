//
//  ViewController.swift
//  Color Generator
//
//  Created by mbcharbonneau on 1/6/15.
//  Copyright (c) 2015 Downtown Software House. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView?
    var generator: ColorGenerator?

    @IBAction func nextColor() {
        colorView?.backgroundColor = generator?.randomColor()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        generator = ColorGenerator()
        nextColor();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

