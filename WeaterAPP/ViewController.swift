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
    
    @IBOutlet var city:UILabel!
    @IBOutlet var icon:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //add background
        let background = UIImage(named: "background.jpg")
        
        self.view.backgroundColor = UIColor(patternImage: background)

        self.city.text = "Taipei"


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

