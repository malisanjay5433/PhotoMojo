//
//  TableViewController.swift
//  PhotoMojo
//
//  Created by Sanjay Mali on 30/03/17.
//  Copyright © 2017 Sanjay. All rights reserved.
//

import UIKit
//import GooglePlaces
import GoogleMaps

protocol TeamViewProtocol {
    func sendingViewController(viewController: TeamTableViewController, sentItem: String)
}
class TeamTableViewController: UIViewController{
    var teams: [String] = []
    var delegate: TeamViewProtocol?
    var mapView:GMSMapView?
    
    let w = UIScreen.main.bounds.width
    let h = UIScreen.main.bounds.height
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        title = "Select Map Location"
        view.addSubview(back_view)
        view.addConstraint(NSLayoutConstraint(item: back_view, attribute: .top, relatedBy: .equal, toItem: self.topLayoutGuide, attribute: .bottom, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: back_view, attribute: .bottom, relatedBy: .equal, toItem: self.bottomLayoutGuide, attribute:.top, multiplier: 1, constant: 00))
        
        view.addConstraint(NSLayoutConstraint(item: back_view, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute,multiplier: 1, constant: 400))
        view.addConstraint(NSLayoutConstraint(item: back_view, attribute: .trailingMargin, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1, constant: 0))

//        
//        let c = GMSCameraPosition.camera(withLatitude: 37.621262, longitude:-123.378945, zoom:12)
//        mapView = GMSMapView.map(withFrame: .zero, camera:c)
//        back_view = mapView!
//        
//        let loc = CLLocationCoordinate2DMake(37.621262, -123.378945)
//        let m = GMSMarker(position:loc)
//        m.title = "I'm here"
//        m.map = mapView
//        
    }
    // MARK: - Table view data source
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: self.view.frame)
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        tableView.delegate = self
//        tableView.dataSource = self
        tableView.backgroundColor = UIColor.black
        return tableView
    }()
  
    lazy var back_view: UIView = {
        let back_view = UIView()
        back_view.backgroundColor = UIColor.black
        back_view.translatesAutoresizingMaskIntoConstraints = false
        return back_view
    }()
    
    
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.sendingViewController(viewController: self, sentItem: self.teams[indexPath.row])
    }
}

extension TeamTableViewController:UITableViewDataSource {
    func numberOfSectionsInTableView(_tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ _tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")! as UITableViewCell
        cell.textLabel?.text = "Cell"
        cell.backgroundColor = .clear
        return cell
    }
}
