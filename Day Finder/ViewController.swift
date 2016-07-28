//
//  ViewController.swift
//  Day Finder
//
//  Created by Nicholas Arduini on 2015-05-07.
//  Copyright (c) 2015 Nicholas Arduini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var label: UILabel!
    @IBOutlet var datePicker: UIDatePicker!
    
    @IBAction func onDate(sender: AnyObject) {
        //date given by date picker
        let chosenDate = self.datePicker.date
        //formate date to a complete day name
        let format = NSDateFormatter()
        format.dateFormat = "EEEE"
        let day = format.stringFromDate(chosenDate)
        //find current date
        let curDate = NSDate()
        //label text will act approriatly to the date
        if(chosenDate.compare(curDate) == NSComparisonResult.OrderedDescending){
            label.text = "That will be a \(day)"
        } else if(chosenDate.compare(curDate) == NSComparisonResult.OrderedAscending){
            label.text = "That was a \(day)"
        }
    }
}

