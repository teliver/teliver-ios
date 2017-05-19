//
//  AppDelegate.swift
//  Example
//
//  Created by R@M on 08/02/17.
//  Copyright © 2017 Quadkast. All rights reserved.
//

import UIKit
import CoreData
import teliver
import UserNotifications


public class PushObject{
    var title:String? = ""
    var trackingId:String? = ""
    var message:String? = ""
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    static var pushArray:[PushObject] = []
    
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
       
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        registerForPush(application: application)
        registerForTeliver()
        let remoteNotif = launchOptions?[UIApplicationLaunchOptionsKey.remoteNotification]
        if ((remoteNotif) != nil)
        {
            self.application(application, didReceiveRemoteNotification: remoteNotif as! [AnyHashable : Any])
            if let window = window {
                let viewController = storyBoard.instantiateViewController(withIdentifier: "pushController") as! PushViewController
                self.window?.rootViewController = viewController
                window.makeKeyAndVisible()
                   return true
            }
               return true
            
        }
        
        if let window = window {
            let viewController = storyBoard.instantiateViewController(withIdentifier: "ListTableViewController") as! ListTableViewController
            let recentMessageNavController=UINavigationController(rootViewController:viewController)
            self.window?.rootViewController = recentMessageNavController
            window.makeKeyAndVisible()
        }
        UIApplication.shared.applicationIconBadgeNumber = 0
        return true
        
    }
    
    func registerForPush(application:UIApplication){
        
            // iOS 10 support
                if #available(iOS 10, *) {
                    UNUserNotificationCenter.current().requestAuthorization(options:[.badge, .alert, .sound]){ (granted, error) in }
                    application.registerForRemoteNotifications()
                }
            // iOS 9 support
                else if #available(iOS 9, *) {
                    UIApplication.shared.registerUserNotificationSettings(UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil))
                    UIApplication.shared.registerForRemoteNotifications()
                }
            // iOS 8 support
                else if #available(iOS 8, *) {
                    UIApplication.shared.registerUserNotificationSettings(UIUserNotificationSettings(types: [.badge, .sound, .alert], categories: nil))
                    UIApplication.shared.registerForRemoteNotifications()
                }
            // iOS 7 support
                else {
                    application.registerForRemoteNotifications(matching: [.badge, .sound, .alert])
                }
        
    }
    
    
    func registerForTeliver(){
        
                let settings=TeliverSettings.init(withAppKey: "316324280831ccb560dc546b0fc38673")
                settings.debugging=true
                Teliver.init(withTeliverSettings: settings)
    }
    
    
    // Called when APNs has assigned the device a unique token
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        // Convert token to string
        let deviceTokenString = deviceToken.reduce("", {$0 + String(format: "%02X", $1)})
        print(deviceTokenString)
        //Teliver.identifyUser(forUser: "ram", withToken: deviceTokenString)
        Teliver.identifyUser(forUser: "raass")
       }
    
    
    // Called when APNs failed to register the device for push notifications
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        // Print the error to console (you should alert the user that registration failed)
        print("APNs registration failed: \(error)")
    }
    // Push notification received
    func application(_ application: UIApplication, didReceiveRemoteNotification data: [AnyHashable : Any]) {
        print(data)
        var aps = data["aps"] as! [String: AnyObject]
        if Teliver.isTeliverPush(data: data) {
            let teliverObject = convertToDictionary(text:data["message"] as! String)
            // Print  notification payload data
            let obj:PushObject = {
                let push = PushObject()
                push.title = aps["alert"] as? String
                push.message = teliverObject?["message"] as? String
                push.trackingId = teliverObject?["tracking_id"] as? String
                return push
            }()
            AppDelegate.pushArray.append(obj);
            NotificationCenter.default.post(name: Notification.Name(rawValue: "pushcontrollerNotifier"), object: self, userInfo: nil)
        }else{
            //The Push is not form Teliver SDK.
        }
       
    }
    
    func convertToDictionary(text: String) -> [String: Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        self.saveContext()
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "Example")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

