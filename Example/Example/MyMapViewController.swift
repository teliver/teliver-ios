//
//  MyMapViewController.swift
//  Example
//
//  Created by R@M on 09/05/17.
//  Copyright © 2017 Quadkast. All rights reserved.
//

import UIKit
import teliver

class MyMapViewController: UIViewController,TeliverTrackingDelegate{
    
    var users: [TeliverTracker]? = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Teliver.startTrackingFor(users: users!, onViewController: self)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func didStoppedTracking(_ trackingId: String?) {
        print("Stopped Tracking for \(String(describing: trackingId))")
    }
    func didRecieveUpdateOnTracking(_ trackingId: String?, data: [String : Any]) {
         print("Update Tracking for \(String(describing: trackingId)) with value \(data)")
    }
    func didRecieveErrorOnTracking(_ error: String?) {
        print("Error Tracking for \(String(describing: error))")
    }
    func didStartedTracking(_ trackingId: String?, location: [String : Any]) {
        print("Started Tracking for \(String(describing: trackingId))")
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
