//
//  ViewController.swift
//  PhotoMojo
//
//  Created by Sanjay Mali on 27/03/17.
//  Copyright © 2017 Sanjay. All rights reserved.
//

import UIKit
import GoogleMaps
class ViewController: UIViewController {
    
        @IBOutlet weak var imageView: UIImageView!
        let suiteName = "group.com.Sanjay.ShareExtension"
        let redDefaultKey = "Red"
        var mapView:GMSMapView?
    
    
       let c = "Sanjay"
        override func viewDidLoad() {
            super.viewDidLoad()
            mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: 0, width: 375, height: 600), camera: GMSCameraPosition.camera(withLatitude: 51.050657, longitude: 10.649514, zoom: 5.5))
            //        mapView?.center = self.view.center
//            self.view.addSubview(mapView!)
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    
}

