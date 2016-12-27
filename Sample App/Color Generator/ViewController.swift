//
//  ViewController.swift
//  Color Generator
//
//  Created by mbcharbonneau on 1/6/15.
//  Copyright (c) 2015 Once Living LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView?
    @IBOutlet weak var gradientView: GradientView?
    @IBOutlet weak var colorVariantView: UIView?

    var generator: ColorGenerator?

    @IBAction func nextColor() {
        colorView?.backgroundColor = generator?.random()
        colorVariantView?.backgroundColor = generator?.variation(of: UIColor.red, distance:0.3)
        
        let colors = generator?.gradientColors()

        gradientView?.start = colors?.start
        gradientView?.end = colors?.end
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        generator = ColorGenerator()
        nextColor();
    }
}
