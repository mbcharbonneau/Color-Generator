//
//  GradientView.swift
//  Color Generator
//
//  Created by mbcharbonneau on 1/7/15.
//  Copyright (c) 2015 Once Living LLC. All rights reserved.
//

import UIKit

class GradientView: UIView {

    var start: UIColor? {
        didSet { assignColors() }
    }

    var end: UIColor? {
        didSet { assignColors() }
    }

    fileprivate func assignColors() {

        if let startColor = start {
            if let endColor = end {

                let array = [startColor.cgColor, endColor.cgColor]
                let gradientLayer = layer as! CAGradientLayer

                gradientLayer.colors = array
                gradientLayer.locations = [0.0, 1.0];
            }
        }
    }

    override class var layerClass : AnyClass {
        
        return CAGradientLayer.self
    }
}
