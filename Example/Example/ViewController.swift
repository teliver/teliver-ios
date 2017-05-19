//
//  ViewController.swift
//  Example
//
//  Created by R@M on 08/02/17.
//  Copyright © 2017 Quadkast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var btnTrack: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func trackButtonClicked(_ sender: Any) {
       
    }

}

extension ViewController{
   
    func setupUI(){
        self.btnTrack.layer.cornerRadius = 30
        self.btnTrack.layer.borderWidth = 2
        self.btnTrack.layer.borderColor = UIColor.white.cgColor
       
    }
}

