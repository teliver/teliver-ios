//
//  SDKNonRegisteredViewController.swift
//  Example
//
//  Created by R@M on 31/03/17.
//  Copyright © 2017 Quadkast. All rights reserved.
//

import UIKit
import teliver
class SDKNonRegisteredViewController: UIViewController{
    
    var sectionOnType:Int = 0
    
    @IBOutlet weak var driverId: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func trackDriverButtonClicked(_ sender: Any) {
        
        if driverId.text == "" {
            print("Driver Id Cannot be null")
             self.view.endEditing(true)
            return
        }
        self.view.endEditing(true)
        let trackingArray = driverId.text?.components(separatedBy: ",")
        var array = [TeliverTracker]()
        var i = 1
        for trackingId in trackingArray!{
            let user = TeliverTracker.init(forTrackingId: trackingId.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines), withCustomMessage: trackingId, andWithCustomMarker: UIImage.init(named: "nav\(i)")!)

            array.append(user)
            i += 1
        }
        
        
        let alertController = UIAlertController(title: "Teliver Options", message: "What would you like to do?", preferredStyle: .actionSheet)
        
        let sendButton = UIAlertAction(title: "Use Teliver Map", style: .default, handler: { (action) -> Void in
           Teliver.startTrackingFor(users: array, withNavigationTitle: "Teliver Tracking")
        })
        
        let  deleteButton = UIAlertAction(title: "Use my Map", style: .default, handler: { (action) -> Void in
            
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "MyMapViewController") as! MyMapViewController
           
            newViewController.users = array
            self.navigationController?.pushViewController(newViewController, animated: true)
           
        })
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in
            print("Cancel button tapped")
        })
        alertController.addAction(sendButton)
        alertController.addAction(deleteButton)
        alertController.addAction(cancelButton)
        self.navigationController!.present(alertController, animated: true, completion: nil)
    }
    
    
   
}
