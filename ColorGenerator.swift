//
//  ColorGenerator.swift
//  Color Generator
//
//  Created by mbcharbonneau on 1/6/15.
//  Copyright (c) 2015 Downtown Software House. All rights reserved.
//

import Foundation
import UIKit

class ColorGenerator: NSObject {

    private let goldenRatioConjugate: Float
    private let gradientDistance: Float
    private var randomHue: Float

    var saturation: Float
    var brightness: Float

    override init() {

        srand48( time( nil ) );

        goldenRatioConjugate = ( sqrt( 5.0 ) - 1.0 ) / 2.0
        gradientDistance = 0.3
        randomHue = Float( drand48() )
        saturation = 0.5
        brightness = 0.95
    }

    // Returns a new random color. Each call will yeild a color that is visually
    // distinct from the previous random color.

    func randomColor() -> UIColor {

        randomHue += goldenRatioConjugate
        randomHue %= 1.0

        return UIColor( hue: CGFloat( randomHue ), saturation: CGFloat( saturation ), brightness: CGFloat( brightness ), alpha: 1.0 )
    }

    // Returns a pair of random colors suitable for a gradient.

    func gradientColors() -> ( start:UIColor, end:UIColor ) {

        let startHue: Float = Float( drand48() ) % 1.0
        let endHue: Float = ( startHue + gradientDistance ) % 1.0

        let start = UIColor( hue: CGFloat( startHue ), saturation: CGFloat( saturation ), brightness: CGFloat( brightness ), alpha: 1.0 )
        let end = UIColor( hue: CGFloat( endHue ), saturation: CGFloat( saturation ), brightness: CGFloat( brightness ), alpha: 1.0 )

        return ( start, end )
    }
}
