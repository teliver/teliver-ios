//
//  ListTableViewController.swift
//  Example
//
//  Created by R@M on 31/03/17.
//  Copyright © 2017 Quadkast. All rights reserved.
//

import UIKit
import teliver

class ListTableViewController: UITableViewController,TeliverDelegate {

    var arrayOfTeliverSDK:[DemoObject] = {
       var arr = [DemoObject]()
       return arr
    }()
    var arrayOfPush:[DemoObject] = {
        var arr = [DemoObject]()
        return arr
    }()
    var arrayOfSection:[String] = ["Manual Tracking","Push Notification Tracking"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Teliver.registerTeliverCallbacks(forViewController: self)
        populateDemoDataForTeliverSDK()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return arrayOfSection.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return arrayOfTeliverSDK.count
        case 1:
            return arrayOfPush.count
        default:
                return 0
        }
       
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = arrayOfTeliverSDK[indexPath.row].Title
            break
        case 1:
            cell.textLabel?.text = arrayOfPush[indexPath.row].Title
            break
        default:
            cell.textLabel?.text = ""
            break
        }
        
        return cell
    }
   
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        
        // create the alert
        let alert = UIAlertController(title: "", message: "", preferredStyle: UIAlertControllerStyle.alert)
        
        switch indexPath.section {
        case 0:
            alert.title = arrayOfTeliverSDK[indexPath.row].Title
            alert.message = arrayOfTeliverSDK[indexPath.row].Description
            break
        case 1:
            alert.title = arrayOfPush[indexPath.row].Title
            alert.message = arrayOfPush[indexPath.row].Description
            break
        default:
            
            break
        }
        // add an action (button)
        alert.addAction(UIAlertAction(title: "close", style: UIAlertActionStyle.cancel,handler:nil
        ))
        alert.addAction(UIAlertAction(title: "continue", style: UIAlertActionStyle.default, handler: { (action:UIAlertAction!) in
            self.navigateOnClick(section: indexPath.section, forRow: indexPath.row)
        }))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
     
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayOfSection[section]
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40.0
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ListTableViewController{
    
    
    func navigateOnClick (section: Int, forRow row:Int)
    {
        switch section {
        
        case 1:
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "pushController") as! PushViewController
            self.navigationController?.pushViewController(newViewController, animated: true)
            break
            
        default:
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "SDKNonRegisteredViewController") as! SDKNonRegisteredViewController
            newViewController.sectionOnType = section
            self.navigationController?.pushViewController(newViewController, animated: true)
            break
            
       
            
        }
        
    }
    
    
    public func didInitializedSDK(_ initialized: Bool, message: String?){
        print(message)
    }
    
    public func didUserRegistered(_ registered: Bool, message: String?){
        print(message)
    }
    
    func populateDemoDataForTeliverSDK(){
        let obj1: DemoObject = {
            let obj = DemoObject()
            obj.Title = "Track Driver with Driver Id."
            obj.Description = "With this option you can track driver with the the driver ID. you can continue as un-registered user."
            return obj
        }()
        
        arrayOfTeliverSDK.append(obj1)
        
        let obj2: DemoObject = {
            let obj = DemoObject()
            obj.Title = "Track Driver with Drivers Push Notification."
            obj.Description = "You can track the driver only if the driver notifies to track you. you need to be a registered user to get notified from ther driver."
            return obj
        }()
        arrayOfPush.append(obj2)

    }
}

class DemoObject{
    var Title: String? = ""
    var Description: String? = ""
}
