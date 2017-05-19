//
//  PushViewController.swift
//  Example
//
//  Created by R@M on 30/03/17.
//  Copyright © 2017 Quadkast. All rights reserved.
//

import UIKit
import teliver

class PushViewController: UITableViewController {
    
    let myNotificationKey = "pushcontrollerNotifier"
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: myNotificationKey),
                                               object: nil,
                                               queue: nil,
                                               using:catchNotification)
        
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppDelegate.pushArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = AppDelegate.pushArray[indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let push = AppDelegate.pushArray[indexPath.row];
        let user1 = TeliverTracker.init(forTrackingId: push.trackingId!, withCustomMessage: push.message!, andWithCustomMarker: UIImage.init())
        
        let alertController = UIAlertController(title: "Teliver Options", message: "What would you like to do?", preferredStyle: .actionSheet)
        
        let sendButton = UIAlertAction(title: "Use Teliver Map", style: .default, handler: { (action) -> Void in
            Teliver.startTrackingFor(users: [user1], withNavigationTitle: "Teliver Map View")
        })
        
        let  deleteButton = UIAlertAction(title: "Use my Map", style: .default, handler: { (action) -> Void in
            Teliver.startTrackingFor(user: user1, onViewController: self)
        })
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in
            print("Cancel button tapped")
        })
        alertController.addAction(sendButton)
        alertController.addAction(deleteButton)
        alertController.addAction(cancelButton)
        self.navigationController!.present(alertController, animated: true, completion: nil)

    }

    
    
    func catchNotification(notification:Notification) -> Void {
        self.tableView.reloadData()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
         NotificationCenter.default.removeObserver(self)
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

}
