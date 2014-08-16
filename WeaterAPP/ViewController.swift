//
//  ViewController.swift
//  WeaterAPP
//
//  Created by Eros on 2014/8/16.
//  Copyright (c) 2014年 Eros. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NSURLConnectionDelegate {
    
    @IBOutlet var city:UILabel!
    @IBOutlet var icon:UIImageView!
    @IBOutlet var temp:UILabel!
    
    //使用NSMutableData 儲存下載資料
    var data: NSMutableData = NSMutableData()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //add background
        let background = UIImage(named: "background.jpg")
        self.view.backgroundColor = UIColor(patternImage: background)
        self.city.text = "Taipei"
        
        startConnection()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startConnection(){
        var restAPI:String = "http://api.openweathermap.org/data/2.5/weather?q=Taipei"
        var url:NSURL = NSURL(string:restAPI)
        var request: NSURLRequest = NSURLRequest(URL: url)
        var connection: NSURLConnection = NSURLConnection (request: request, delegate: self, startImmediately: true)
        
        println("start download")
        
    }
    
    //下載中
    func connection(connection:NSURLConnection!, didReceiveData dataReceived:NSData!){
        self.data.appendData(dataReceived)
        println("downloading")
        
    }
    //下載完成
    func connectionDidFinishLoading(connection:NSURLConnection!){
        println("download finish")
        var jsonData = NSString(data: data, encoding: NSUTF8StringEncoding)
        println(jsonData)
        
        var error: NSError?
        let jsonDictionary = NSJSONSerialization.JSONObjectWithData(self.data, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary
        
        //讀取個像天氣溫度
        let temp: AnyObject? = jsonDictionary["main"]?["temp"]
        
        //資料處理
        let weatherTempCelsius = Int(round((temp!.floatValue - 273.15)))
        let weatherTempFahrenheit = Int(round(((temp!.floatValue - 273.15))))
        
        //輸出至UI
        self.temp.text = "\(weatherTempCelsius)℃"
        
        
        
    }
    
    
    

}

