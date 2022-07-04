////
////  TELDriverViewController.swift
////  teliverdemo
////
////  Created by QuadKast on 12/14/17.
////  Copyright © 2017 QuadKast. All rights reserved.
////
//
//import UIKit
//import teliver
//import CoreLocation
//import Toast_Swift
//
//class TELDriverViewController: UIViewController,TeliverTripDelegate,UITableViewDelegate,UITableViewDataSource {
//
//    var tripList:[String:QKTrips] = [:]
//    @IBOutlet weak var tableView: UITableView!
//
//
//    // MARK: - Teliver Trip Delegates
//
//    //Callback for Start Trip.
//    func didStartedTrip(_ trackingId: String?, location: [String : Any]) {
//        self.view.makeToast("Tracking started for \(trackingId as! String)")
//        tripList = Teliver.getCurrentTrips()
//        tableView.reloadData()
//    }
//
//    //Callback for Stop Trip.
//    func didStoppedTrip(_ trackingId: String?) {
//        self.view.makeToast("Tracking stopped for \(trackingId as! String)")
//        tripList.removeValue(forKey: trackingId! as! String)
//        tableView.reloadData()
//    }
//
//
//    //Callback for Location Update on a Trip.
//    func didSendUpdateOnTrip(_ trackingIds: String?, location: [String : Any]) {
//        self.view.makeToast("Updated for \(location)")
//        tripList = Teliver.getCurrentTrips()
//        tableView.reloadData()
//    }
//
//
//    //Callback for Error on a Trip.
//    func didRecieveErrorOnTrip(_ error: String?) {
//        print(error)
//    }
//
//
//
//
//
//
//    @IBOutlet weak var viewForText: UIView!
//
//    func validate(string:String)-> Bool{
//
//        guard (string != nil), string != "", string.trimmingCharacters(in: .whitespaces) != "" else {
//            throwValidationError(error: "Trip Id can't be empty");
//            return false
//        }
//        return true
//
//    }
//
//
//    func throwValidationError(error:String){
//        // create the alert
//        let alert = UIAlertController(title: "Validation Error", message: error, preferredStyle: UIAlertControllerStyle.alert)
//
//        // add an action (button)
//        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
//
//        // show the alert
//        self.present(alert, animated: true, completion: nil)
//    }
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(closeTapped))
//        navigationItem.leftBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
//        self.navigationController?.navigationBar.barTintColor = UIColor.init(rgb: 0x4FB912)
//        self.navigationController?.navigationBar.tintColor = .white
//        self.navigationController?.navigationBar.isTranslucent = false
//        self.title = "Driver"
//        edgesForExtendedLayout = []
//        viewForText.layer.borderColor = UIColor.init(rgb: 0xefefef).cgColor
//        viewForText.layer.borderWidth = 1.00
//        viewForText.layer.cornerRadius = 5
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        Teliver.requestLocationPermission()
//        Teliver.registerTripDelegate(onViewController: self)
//
//
//    }
//
//
//    override func viewDidAppear(_ animated: Bool) {
//        tripList = Teliver.getCurrentTrips() //Get Current active trips from SDK.
//        tableView.reloadData()
//    }
//
//    @objc func closeTapped(){
//        self.dismiss(animated: true, completion: nil)
//    }
//
//
//
//
//    @objc func addTapped(){
//        let alertController = UIAlertController(title: "Start a Trip", message: "Enter the trip id and start the trip.", preferredStyle: UIAlertControllerStyle.alert)
//        alertController.addTextField { (textField : UITextField) -> Void in
//            textField.placeholder = "trip id"
//        }
//        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) { (result : UIAlertAction) -> Void in
//            print("Cancel")
//        }
//        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
//            let tripId = alertController.textFields?.first?.text! as! String
//            if self.validate(string: tripId) {
//                //Start a trip.
//                Teliver.startTrip(trackingId: tripId)
//
//            }else{
//
//            }
//
//        }
//        alertController.addAction(cancelAction)
//        alertController.addAction(okAction)
//        self.present(alertController, animated: true, completion: nil)
//    }
//
//
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return tripList.count
//    }
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Active Trips"
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = Array(tripList)[indexPath.row].key
//        cell.selectionStyle = .none
//        cell.accessoryType = .detailDisclosureButton
//        return cell
//    }
//
//
//    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
//        var tripId = Array(tripList)[indexPath.row].key
//        let actionSheetController = UIAlertController(title: "Trip options for \(tripId)", message: "stop the trip", preferredStyle: .actionSheet)
//
//        let saveActionButton = UIAlertAction(title: "Stop", style: .destructive) { action -> Void in
//            //Stop a trip.
//            Teliver.stopTrip(withTrackingID: tripId)
//        }
//        actionSheetController.addAction(saveActionButton)
//
//
//        let cancelActionButton = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in
//
//        }
//        actionSheetController.addAction(cancelActionButton)
//
//        self.present(actionSheetController, animated: true, completion: nil)
//
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 40
//    }
//
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//
//    /*
//     // MARK: - Navigation
//
//     // In a storyboard-based application, you will often want to do a little preparation before navigation
//     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//     // Get the new view controller using segue.destinationViewController.
//     // Pass the selected object to the new view controller.
//     }
//     */
//
//}
