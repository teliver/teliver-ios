//
//  ViewController.swift
//  teliverdemo
//
//  Created by QuadKast on 12/14/17.
//  Copyright © 2017 QuadKast. All rights reserved.
//

import UIKit
import teliver

class ViewController: UIViewController,TeliverDelegate {
    func didUserRegistered(_ registered: Bool, message: String?) {
          print(message)
    }
    

    func didInitializedSDK(_ initialized: Bool, message: String?) {
        if initialized{
            Teliver.identifyUser(forUser: "Quady!!!", ofType: .both) //Register
        }else{
            print(message)
        }
        
    }
    
    
    
    @IBAction func ConsumerButton(_ sender: Any) {
        let vc = TELConsumerViewController() //change this to your class name
        let navController = UINavigationController.init(rootViewController: vc)
        self.present(navController, animated: true, completion: nil)
    }
    @IBAction func OperatorButton(_ sender: Any) {
        let vc = TELDriverViewController() //change this to your class name
        let navController = UINavigationController.init(rootViewController: vc)
        self.present(navController, animated: true, completion: nil)
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Teliver.registerTeliverDelegate(onViewController: self)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

