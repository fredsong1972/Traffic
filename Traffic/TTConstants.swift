//
//  TTConstants.swift
//  Traffic
//
//  Created by fred song on 7/4/19.
//  Copyright © 2019 TomTom. All rights reserved.
//

import UIKit
import CoreLocation



public class TTSecoundMap: NSObject {
    @objc public static func SecoundMapSize() -> Int { return 190}
    @objc public static func SecoundMapBorderSize() -> CGFloat { return 5.0 }
}


public class TTColor: NSObject {
    
    @objc public static func White() -> UIColor { return UIColor.white }
    @objc public static func Black() -> UIColor { return UIColor.black }
    @objc public static func BlackLight() -> UIColor { return UIColor(red: 0.1882, green: 0.1882, blue: 0.1882, alpha: 1.0) }
    @objc public static func Gray() -> UIColor { return UIColor(red: 0.3294, green: 0.3294, blue: 0.3255, alpha: 1.0) }
    @objc public static func GrayLight() -> UIColor { return UIColor(red: 0.3294, green: 0.3294, blue: 0.3255, alpha: 1.0) }
    @objc public static func GreenLight() -> UIColor { return UIColor(red: 0.7412, green: 0.8431, blue: 0.1922, alpha: 1.0) }
    @objc public static func GreenDark() -> UIColor { return UIColor(red: 0.4784, green: 0.6627, blue: 0.1254, alpha: 1.0) }
    @objc public static func Red() -> UIColor { return UIColor(red: 1, green: 0, blue: 0, alpha: 1.0) }
    @objc public static func RedSemiTransparent() -> UIColor { return UIColor(red: 1, green: 0, blue: 0, alpha: 0.3) }
    @objc public static func Yellow() -> UIColor { return UIColor.yellow }
    @objc public static func Purple() -> UIColor { return UIColor(red:0.48, green:0.14, blue:0.51, alpha:1.0) }
    @objc public static func Pink() -> UIColor { return UIColor(red:0.90, green:0.00, blue:0.92, alpha:1.0) }
    @objc public static func Blue() -> UIColor { return UIColor(red:0.00, green:0.01, blue:0.98, alpha:1.0) }
    @objc public static func BlueLight() -> UIColor { return UIColor(red:0.10, green:0.71, blue:0.77, alpha:1.0) }
    @objc public static func GreenBright() -> UIColor { return UIColor(red:0.19, green:0.94, blue:0.00, alpha:1.0) }
}

public class TTCoordinate: NSObject {
    
    @objc public static func MELBOURNE() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(-37.814, 144.96332) }
    @objc public static func LONDON() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(51.507351, -0.127758) }
    @objc public static func LONDON_TOP_LEFT() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(51.544300, -0.176267) }
    @objc public static func LONDON_BOTTOM_RIGHT() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(51.465582, -0.071777) }
    @objc public static func BERLIN() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.520007, 13.404954) }
    @objc public static func POLAND() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(51.9324518, 16.8922826) }
    @objc public static func AMSTERDAM() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.377271, 4.909466) }
    @objc public static func AMSTERDAM_CENTER_LOCATION() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.373154, 4.890659) }
    @objc public static func AMSTERDAM_RESTAURANT_WAGAMAMA() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.362620, 4.883390) }
    @objc public static func AMSTERDAM_RESTAURANT_BRIDGES() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.370813, 4.895107) }
    @objc public static func AMSTERDAM_RESTAURANT_GREETJE() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.371536, 4.907739) }
    @objc public static func AMSTERDAM_RESTAURANT_LA_RIVE() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.360276, 4.905146) }
    @objc public static func AMSTERDAM_RESTAURANT_ENVY() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.371450, 4.883201) }
    @objc public static func AMSTERDAM_CIRCLE() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.3639871,4.7953232) }
    @objc public static func AMSTERDAM_A10() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.3691851,4.8505632) }
    @objc public static func HAARLEM() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.381222, 4.637558) }
    @objc public static func AMSTERDAM_POLYGON_1() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.388658, 4.859119) }
    @objc public static func AMSTERDAM_POLYGON_2() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.346523, 4.858432) }
    @objc public static func AMSTERDAM_POLYGON_3() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.352185, 4.908557) }
    @objc public static func ISRAEL() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(32.009929, 34.843555) }
    @objc public static func INDIA() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(23.605569, 68.512920) }
    @objc public static func BRUSSELS() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(50.854954, 4.3051791) }
    @objc public static func HAMBURG() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(53.5584902, 9.7877407) }
    @objc public static func ZURICH() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(47.3774336, 8.466504) }
    @objc public static func OSLO() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(59.911491,10.757933) }
    @objc public static func AMSTERDAM_TOMTOM() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.376368, 4.908113) }
    @objc public static func ROTTERDAM() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(51.935966, 4.482865) }
    @objc public static func AMSTERDAM_A10_START() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.345971, 4.844899) }
    @objc public static func AMSTERDAM_A10_STOP() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.372281, 4.846595) }
    @objc public static func UTRECHT() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.09179, 5.11457) }
    @objc public static func HOOFDDORP() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.3058782, 4.6483191) }
    @objc public static func NORTH_SEA() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(54.929440, 6.464524) }
    @objc public static func ALPHEN_AAN_DEN_RIJN() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.128247, 4.668368) }
    @objc public static func PORTUGAL_COIMBRA() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(40.209408, -8.423741) }
    @objc public static func PORTUGAL_NOVA() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(40.10995732392718, -8.501433134078981) }
    @objc public static func LODZ_SREBRZYNSKA_START() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(51.772756, 19.423065) }
    @objc public static func LODZ_SREBRZYNSKA_WAYPOINT_A() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(51.780990, 19.451229) }
    @objc public static func LODZ_SREBRZYNSKA_WAYPOINT_B() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(51.786451, 19.449562) }
    @objc public static func LODZ_SREBRZYNSKA_WAYPOINT_C() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(51.791383, 19.420641) }
    @objc public static func LODZ_SREBRZYNSKA_STOP() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(51.773136, 19.4233983) }
    @objc public static func CZECH_REPUBLIC() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(50.746420115485755, 14.799316562712196) }
    @objc public static func ROMANIA() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(45.33232542221267, 22.753418125212196) }
    @objc public static func BUDAPEST_LOCATION() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(47.498733, 19.072646) }
    @objc public static func ARAD_TOP_LEFT_NEIGHBORHOOD() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(46.241223, 21.012896) }
    @objc public static func ARAD_BOTTOM_RIGHT_NEIGHBORHOOD() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(45.861624, 21.506465) }
    @objc public static func ARAD_BOTTOM_LEFT_NEIGHBORHOOD() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(45.861624, 21.012896) }
    @objc public static func ARAD_TOP_RIGHT_NEIGHBORHOOD() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(46.241223, 21.506465) }
    @objc public static func AMSTERDAM_POLYGON_A() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.366650,4.906364) }
    @objc public static func AMSTERDAM_POLYGON_B() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.371166,4.913136) }
    @objc public static func AMSTERDAM_POLYGON_C() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.367172,4.926724) }
    @objc public static func AMSTERDAM_POLYGON_D() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.363494,4.916473) }
    @objc public static func AMSTERDAM_CIRCLE_CENTER() -> CLLocationCoordinate2D { return CLLocationCoordinate2DMake(52.372144, 4.899115) }
}

public class TTCamera: NSObject {
    @objc public static func ANIMATION_TIME() -> Int32 {
        return 1
    }
    @objc public static func BEARING_START() -> Double {
        return 0
    }
    @objc public static func DEFAULT_MAP_ZOOM_LEVEL_FOR_EXAMPLE() -> Double {
        return 12
    }
    @objc public static func DEFAULT_MAP_ZOOM_LEVEL_FOR_DRIVING() -> Int32 {
        return 17
    }
    @objc public static func DEFAULT_MAP_PITCH_LEVEL_FOR_DRIVING() -> Double {
        return 50
    }
    @objc public static func DEFAULT_MAP_PITCH_FLAT() -> Double {
        return 0
    }
    @objc public static func DEFAULT_VERTICAL_PADDING() -> CGFloat {
        return 30.0
    }
    @objc public static func DEFAULT_HORIZONTAL_PADDING() -> CGFloat {
        return 10.0
    }
    @objc public static func MAP_DEFAULT_INSETS() -> UIEdgeInsets {
        return UIEdgeInsets(top: TTCamera.DEFAULT_VERTICAL_PADDING() * UIScreen.main.scale, left: TTCamera.DEFAULT_HORIZONTAL_PADDING() * UIScreen.main.scale, bottom: TTCamera.DEFAULT_VERTICAL_PADDING() * UIScreen.main.scale, right: TTCamera.DEFAULT_HORIZONTAL_PADDING() * UIScreen.main.scale);
    }
}

public class TTMapZoom: NSObject {
    @objc public static func MIN() -> Double {
        return 16
    }
    @objc public static func MAX() -> Double {
        return 17
    }
}

