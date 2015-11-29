//
//  ViewController.swift
//  EPCalendar
//
//  Created by Prabaharan Elangovan on 02/11/15.
//  Copyright © 2015 Prabaharan Elangovan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, EPCalendarPickerDelegate {

    @IBOutlet weak var txtViewDetail: UITextView!
    @IBOutlet weak var btnShowMeCalendar: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTouchShowMeCalendarButton(sender: AnyObject) {
        let calendarPicker = EPCalendarPicker(startYear: 2015, endYear: 2017, multiSelection: true)
        calendarPicker.calendarDelegate = self
        let navigationController = UINavigationController(rootViewController: calendarPicker)
        self.presentViewController(navigationController, animated: true, completion: nil)   
    }
    
    func epCalendarPicker(_: EPCalendarPicker, didCancel error : NSError) {
        txtViewDetail.text = "User cancelled selection"
        
    }
    func epCalendarPicker(_: EPCalendarPicker, didSelectDate date : NSDate) {
        txtViewDetail.text = "User selected date: \n\(date)"
        
    }
    func epCalendarPicker(_: EPCalendarPicker, didSelectMultipleDate dates : [NSDate]) {
        txtViewDetail.text = "User selected dates: \n\(dates)"
    }

}

