//
//  ViewController.swift
//  PhotoMojo
//
//  Created by Sanjay Mali on 30/03/17.
//  Copyright © 2017 Sanjay. All rights reserved.
//

import UIKit
import Social
import MobileCoreServices
class ShareViewController: SLComposeServiceViewController,LocationTeamViewProtocol {
    var item: SLComposeSheetConfigurationItem!
    var teamPickerVC: LocationViewController!
    var selectedImage: UIImage?

    override func isContentValid() -> Bool {
        // Do validation of contentText and/or NSExtensionContext attachments here
        if selectedImage != nil{
            if !contentText.isEmpty {
                return true
            }
        }
        
        return false
    }
    override func didSelectPost() {
        // This is called after the user selects Post. Do the upload of contentText and/or NSExtensionContext attachments.
        self.extensionContext!.completeRequest(returningItems: [], completionHandler: nil)
    }
    override func configurationItems() -> [Any]! {
        self.item = SLComposeSheetConfigurationItem()
        self.item.title = "Location"
        self.item.value = "Your location"
        self.item.tapHandler = {
            self.teamPickerVC = LocationViewController()
            self.teamPickerVC.delegate = self
            self.pushConfigurationViewController(self.teamPickerVC)
        }
        return[self.item]
    }
    func sendingViewController(viewController: LocationViewController, sentItem: String) {
        self.item.value = sentItem
        self.popConfigurationViewController()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
        navigationController?.navigationBar.topItem?.titleView = imageView
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.backgroundColor = UIColor(red:0.39, green:0.46, blue:0.86, alpha:1.00)
        
        let content = extensionContext!.inputItems[0] as! NSExtensionItem
        let contentType = kUTTypeImage as String
        
        for attachment in content.attachments as! [NSItemProvider] {
            if attachment.hasItemConformingToTypeIdentifier(contentType) {
                
                attachment.loadItem(forTypeIdentifier: contentType, options: nil) { data, error in
                    if error == nil {
                        let url = data as! NSURL
                        if let imageData = NSData(contentsOf: url as URL) {
                            self.selectedImage = UIImage(data: imageData as Data)
                        }
                    } else {
                        
                        let alert = UIAlertController(title: "Error", message: "Error loading image", preferredStyle: .alert)
                        
                        let action = UIAlertAction(title: "Error", style: .cancel) { _ in
                            self.dismiss(animated: true, completion: nil)
                        }
                        
                        alert.addAction(action)
                        self.present(alert, animated: true, completion: nil)
                    }
                }
            }
        }
    }
    
}
