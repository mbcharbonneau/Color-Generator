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

    private func toRGB( h:Float, s:Float, v:Float ) -> ( r:Float, g:Float, b:Float ) {

        if ( s == 0 ) {
            return ( v, v, v )
        }

        let hh = h < 360.0 ? h / 60.0 : 0.0
        let i = floor( hh )
        let f = hh - i

        let p = v * ( 1.0 - s )
        let q = v * ( 1.0 - ( s * f ) )
        let t = v * ( 1.0 - ( s * ( 1.0 - f ) ) )

        switch i {
        case 0:
            return ( v, t, p )
        case 1:
            return ( q, v, p )
        case 2:
            return ( p, v, t )
        case 3:
            return ( p, q, v )
        case 4:
            return ( t, p, v )
        default:
            return ( v, p, q )
        }
    }

    // Returns a new random color. Subsequent calls to this method will return
    // colors which are visually distinct.

    func randomColor() -> UIColor {
        let hue = Float( arc4random_uniform( 360 ) )
        let rgb = toRGB( hue, s: 0.5, v: 0.95 )
        return UIColor( red: CGFloat( rgb.r ), green: CGFloat( rgb.g ), blue: CGFloat( rgb.b ), alpha: 1.0 )
    }
}
