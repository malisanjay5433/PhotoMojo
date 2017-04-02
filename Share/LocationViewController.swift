//
//  LocationViewController.swift
//  PhotoMojo
//
//  Created by Sanjay Mali on 30/03/17.
//  Copyright © 2017 Sanjay. All rights reserved.
//

import UIKit
import GoogleMaps
protocol LocationTeamViewProtocol {
    func sendingViewController(viewController: LocationViewController, sentItem: String)
}
class LocationViewController: UIViewController {
    var delegate: LocationTeamViewProtocol?
    var mapView:GMSMapView?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        title = "Select Map Location"
        self.view.backgroundColor = UIColor.lightGray
//        map()
    }
    func map(){
        let c = GMSCameraPosition.camera(withLatitude: 37.621262, longitude:-123.378945, zoom:12)
        mapView = GMSMapView.map(withFrame: .zero, camera:c)
        self.view = mapView!
        let loc = CLLocationCoordinate2DMake(37.621262, -123.378945)
        let m = GMSMarker(position:loc)
        m.title = "I'm here"
        m.map = mapView
    }
}
