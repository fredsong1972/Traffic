//
//  ViewController.swift
//  Traffic
//
//  Created by Fred Song on 5/4/19.
//  Copyright © 2019 TomTom. All rights reserved.
//
import UIKit
import Foundation
import CoreLocation
import TomTomOnlineSDKMaps
import TomTomOnlineSDKMapsDriving
import TomTomOnlineSDKRouting


class ViewController: UIViewController,TTMapViewDelegate, TTAnnotationDelegate,  TTMatcherDelegate {
    
    @IBOutlet weak var tomtomMap: TTMapView!
    
    var driving: DrivingTrack?
    private var chevron: TTChevronObject?
    var startSending = false
    var matcher: TTMatcher!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initTomTomService()
        initUIViews()
    }
    
    func initTomTomService(){
        tomtomMap.delegate = self
        tomtomMap.center(on: TTCoordinate.MELBOURNE(), withZoom: 10)
        tomtomMap.onMapReadyCompletion {
            self.onMapReady()
        }
        matcher = TTMatcher(matchDataSet: tomtomMap)
        matcher.delegate = self
    }
    
    func initUIViews(){
        
    }
    
    func onMapReady(){
        tomtomMap.annotationManager.delegate = self
        createChevron()
        start()
        
        if startSending == false {
            OperationQueue().addOperation {
                self.sendingLocation()
                self.startSending = true
            }
        }
        tomtomMap.maxZoom = TTMapZoom.MAX()
        tomtomMap.minZoom = TTMapZoom.MIN()
    }
    
    func createChevron() {
        tomtomMap.isShowsUserLocation = false
        let animation = TTChevronAnimationOptionsBuilder.create(withAnimatedCornerRounding: true).build()
        chevron = TTChevronObject(normalImage: TTChevronObject.defaultNormalImage(), withDimmedImage: TTChevronObject.defaultDimmedImage(), with: animation)
    }
    
    func start() {
        let camera = TTCameraPositionBuilder.create(withCameraPosition: TTCoordinate.LODZ_SREBRZYNSKA_START())
            .withAnimationDuration(TTCamera.ANIMATION_TIME())
            .withBearing(TTCamera.BEARING_START())
            .withPitch(TTCamera.DEFAULT_MAP_PITCH_FLAT())
            .withZoom(18)
            .build()
        
        tomtomMap.setCameraPosition(camera)
        tomtomMap.trackingManager.add(chevron!)
        driving = DrivingTrack(trackingManager: tomtomMap.trackingManager, trackingObject: chevron!)
        tomtomMap.trackingManager.setBearingSmoothingFilter(TTTrackingManagerDefault.bearingSmoothFactor())
        tomtomMap.trackingManager.start(chevron!)
        driving?.activate()
    }
    
    func sendingLocation() {
        let locationProvider = LocationCSVProvider(csvFile: "simple_route")
        for index in 1...locationProvider.locations.count {
            
            let prev = locationProvider.locations[index - 1]
            let next = locationProvider.locations[index]
            
            let providerLocation = ProviderLocation(coordinate: next.coordinate, withRadius: next.radius, withBearing: next.bearing, withAccuracy: next.accuracy)
            providerLocation.timestamp = next.timestamp
            providerLocation.speed = next.speed
            
            matcher(providerLocation: providerLocation)
            
            let time = next.timestamp - prev.timestamp
            sleep(UInt32(time/1000))
        }
    }

    // TTMatcherDelegate
    public func matcherResultMatchedLocation(_ matched: TTMatcherLocation, withOriginalLocation original: TTMatcherLocation, isMatched: Bool) {
        drawRedCircle(coordinate: original.coordinate)
        driving?.updateLocation(location:TTLocation(coordinate: matched.coordinate, withRadius: matched.radius, withBearing: matched.bearing, withAccuracy: 0.0, isDimmed: !isMatched))
        chevron?.isHidden = false    }
   
    func matcher(providerLocation: ProviderLocation) {
        let location = TTMatcherLocation(coordinate: providerLocation.coordinate, withBearing: providerLocation.bearing, withBearingValid: true, withEPE: 0.0, withSpeed: providerLocation.speed, withDuration: providerLocation.timestamp)
        matcher.setMatcherLocation(location)
    }
    
    func drawRedCircle(coordinate: CLLocationCoordinate2D) {
        tomtomMap.annotationManager.removeAllOverlays();
        let redCircle = TTCircle(center: coordinate, radius: 2, opacity: 1, width: 10, color: UIColor.red, fill: true, colorOutlet: UIColor.red)
        tomtomMap.annotationManager.add(redCircle)
    }}

