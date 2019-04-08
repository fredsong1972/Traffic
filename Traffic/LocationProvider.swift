//
//  LocationProvider.swift
//  Traffic
//
//  Created by fred song on 7/4/19.
//  Copyright © 2019 TomTom. All rights reserved.
//

import Foundation
import CoreLocation
import TomTomOnlineSDKMaps

class ProviderLocation: TTLocation {
    
    var timestamp: Double = 0
    var provider: String?
    var speed: Double = 0
    var altitude: Double = 0
}

class LocationCSVProvider: NSObject {
    
    let TIME_COL_IDX: Int = 0
    let PROVIDER_COL_IDX: Int = 1
    let LATITUDE_COL_IDX: Int =  2
    let LONGITUDE_COL_IDX: Int = 3
    let ACCURACY_COL_IDX: Int = 4
    let BEARING_COL_IDX: Int = 5
    let SPEED_COL_IDX: Int = 7
    let ALTITUDE_COL_IDX: Int = 9
    
    var locations: [ProviderLocation] = []
    
    init(csvFile filename: String?) {
        
        let strPath = Bundle.main.path(forResource: filename, ofType: "csv")
        let strFile = try? String(contentsOfFile: strPath ?? "", encoding: .utf8)
        
        if strFile == nil {
            print("Error reading file.")
        }
        
        let correntCountComponents = 11
        
        var contentArray = [Any]()
        if let components = strFile?.components(separatedBy: "\n") {
            contentArray = components
        }
        locations = [ProviderLocation]()
        
        for object in contentArray {
            let components = (object as AnyObject).components(separatedBy: ",")
            if components.count < correntCountComponents {
                return
            }
            let time = Double(components[TIME_COL_IDX].trimmingCharacters(in: NSCharacterSet.whitespaces))!
            let lat = Double(components[LATITUDE_COL_IDX].trimmingCharacters(in: NSCharacterSet.whitespaces))!
            let lon = Double(components[LONGITUDE_COL_IDX].trimmingCharacters(in: NSCharacterSet.whitespaces))!
            let accuracy = Double(components[ACCURACY_COL_IDX].trimmingCharacters(in: NSCharacterSet.whitespaces))!
            let bearing = Double(components[BEARING_COL_IDX].trimmingCharacters(in: NSCharacterSet.whitespaces))!
            let speed = Double(components[SPEED_COL_IDX].trimmingCharacters(in: NSCharacterSet.whitespaces))!
            let altitude = Double(components[ALTITUDE_COL_IDX].trimmingCharacters(in: NSCharacterSet.whitespaces))!
            
            let providerLocation = ProviderLocation(coordinate: CLLocationCoordinate2DMake(lat, lon), withRadius: 0.0, withBearing: bearing, withAccuracy: accuracy)
            providerLocation.timestamp = time
            providerLocation.speed = speed
            providerLocation.altitude = altitude
            
            locations.append(providerLocation)
        }
    }
}

