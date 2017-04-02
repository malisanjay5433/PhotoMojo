//
//  ShareSelectViewController.swift
//  PhotoMojo
//
//  Created by Sanjay Mali on 30/03/17.
//  Copyright © 2017 Sanjay. All rights reserved.
//
/*
import UIKit
protocol ShareSelectViewControllerDelegate: class {
    func selected(loc: Location)
}
class ShareSelectViewController: UIViewController {
    var loc = [Location]()
    weak var delegate: ShareSelectViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        title = "Select Location"
        view.addSubview(tableView)
    }
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: self.view.frame)
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.clear
        return tableView
    }()
}

extension ShareSelectViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return loc.count
    }
    func tableView(_ _tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")! as UITableViewCell
        cell.textLabel?.text = loc[indexPath.row].location
        cell.backgroundColor = .clear
        return cell
    }
}
private extension ShareSelectViewController {
    struct Identifiers {
        static let Cell = "Cell"
    }
}
extension ShareSelectViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("DidSelect")
        self.delegate?.selected(loc:loc[indexPath.row])
    }
}
*/
