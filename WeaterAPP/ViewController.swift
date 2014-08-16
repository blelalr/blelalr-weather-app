//
//  ViewController.swift
//  WeaterAPP
//
//  Created by Eros on 2014/8/16.
//  Copyright (c) 2014年 Eros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var api:String = ""
    
    @IBOutlet var City:UILabel!
    @IBOutlet var Rainy:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.City.text = "Taipei"
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

