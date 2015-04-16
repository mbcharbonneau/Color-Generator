//
//  GradientView.swift
//  Color Generator
//
//  Created by mbcharbonneau on 1/7/15.
//  Copyright (c) 2015 Downtown Software House. All rights reserved.
//

import UIKit

class GradientView: UIView {

    var start: UIColor? {
        didSet { assignColors() }
    }

    var end: UIColor? {
        didSet { assignColors() }
    }

    private func assignColors() {

        if let startColor = start {
            if let endColor = end {

                let array = [startColor.CGColor, endColor.CGColor]
                var gradientLayer = layer as! CAGradientLayer

                gradientLayer.colors = array
                gradientLayer.locations = [0.0, 1.0];
            }
        }
    }

    override class func layerClass() -> AnyClass {
        
        return CAGradientLayer.self
    }
}
