//
//  TELConsumerViewController.swift
//  teliverdemo
//
//  Created by QuadKast on 12/14/17.
//  Copyright © 2017 QuadKast. All rights reserved.
//

import UIKit
import teliver

class TELConsumerViewController: UIViewController {

    @IBOutlet weak var viewForText: UIView!
    
    @IBOutlet weak var trackingText: UITextField!
    
    @IBAction func trackingButton(_ sender: Any) {
        
        if validate() {
            
            
            let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
            
            //Teliver SDK Map with default settings.
            let default_map = UIAlertAction(title: "Default", style: .default, handler:
            {
                (alert: UIAlertAction!) -> Void in
                
                let tracking = TeliverTrackerBuilder.init(forTrackingId: self.trackingText.text!)
            Teliver.startTrackingFor(user: tracking, withNavigationTitle: "Default title")
                
            })
            
            
            //Teliver SDK Map with Custom Message settings.
            let message_map = UIAlertAction(title: "Show Custom Message", style: .default, handler:
            {
                (alert: UIAlertAction!) -> Void in
                let tracking = TeliverTrackerBuilder.init(forTrackingId: self.trackingText.text!, withCustomMessage: "My Test Tracking")
                Teliver.startTrackingFor(user: tracking, withNavigationTitle: "Custom text title")
            })
            
            //Teliver SDK Map with Custom Marker settings.
            let marker = UIAlertAction(title: "Show Custom Marker", style: .default, handler:
            {
                (alert: UIAlertAction!) -> Void in
                let tracking = TeliverTrackerBuilder.init(forTrackingId: self.trackingText.text!, withCustomMessage: "With Custom Image", andWithCustomMarker: UIImage.init(named: "pin")!)
                Teliver.startTrackingFor(user: tracking, withNavigationTitle: "Custom Marker title")
            })
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler:
            {
                (alert: UIAlertAction!) -> Void in
            })
            optionMenu.addAction(default_map)
            optionMenu.addAction(message_map)
            optionMenu.addAction(marker)
            optionMenu.addAction(cancelAction)
            self.present(optionMenu, animated: true, completion: nil)
        }else{
            
        }
    }
    
    func validate()-> Bool {
        guard(trackingText.text != nil), trackingText.text != "", trackingText.text?.trimmingCharacters(in: .whitespaces) != "" else {
            throwValidationError(error: "Tracking ID can't be empty")
            return false
        }
        return true
    }
    
    func throwValidationError(error:String){
        // create the alert
        let alert = UIAlertController(title: "Validation Error", message: error, preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Close", style: .done, target: self, action: #selector(addTapped))
        self.navigationController?.navigationBar.barTintColor = UIColor.init(rgb: 0x4FB912)
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.isTranslucent = false
        
        self.title = "Consumer"
        edgesForExtendedLayout = []
        viewForText.layer.borderColor = UIColor.init(rgb: 0xefefef).cgColor
        viewForText.layer.borderWidth = 1.00
        viewForText.layer.cornerRadius = 5
        
        
    }

    @objc func addTapped(){
        self.dismiss(animated: true, completion: nil)
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



extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}


