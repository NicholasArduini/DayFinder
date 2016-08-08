//
//  ViewController.swift
//  Day Finder
//
//  Created by Nicholas Arduini on 2015-05-07.
//  Copyright (c) 2015 Nicholas Arduini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var dateOfTheWeekLabel: UILabel!
    @IBOutlet var curDateLabel: UILabel!
    @IBOutlet var datePicker: UIDatePicker!
    
    func datesEqual(day1: NSDate, day2: NSDate) -> Bool{
        let format = NSDateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        let day1Format = format.stringFromDate(day1)
        let day2Format = format.stringFromDate(day2)
        
        return (day1Format == day2Format)
    }
    
    @IBAction func onDate(sender: AnyObject) {
        let chosenDate = self.datePicker.date
        let format = NSDateFormatter()
        format.dateFormat = "EEEE"
        let day = format.stringFromDate(chosenDate)
        let curDate = NSDate()
        
        if(datesEqual(curDate, day2: chosenDate)){
            dateOfTheWeekLabel.text = "Today is a \(day)"
        } else if(chosenDate.compare(curDate) == NSComparisonResult.OrderedDescending){
            dateOfTheWeekLabel.text = "That will be a \(day)"
        } else if(chosenDate.compare(curDate) == NSComparisonResult.OrderedAscending){
            dateOfTheWeekLabel.text = "That was a \(day)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let today = NSDate()
        let format = NSDateFormatter()
        format.dateFormat = "EEEE"
        let day = format.stringFromDate(today)
        
        dateOfTheWeekLabel.text = "Today is a \(day)"
        
        format.dateStyle = .LongStyle
        format.timeStyle = .NoStyle
        let todayDateString = format.stringFromDate(today)
        curDateLabel.text = todayDateString
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

