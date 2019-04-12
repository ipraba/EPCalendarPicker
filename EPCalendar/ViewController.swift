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

    @IBAction func onTouchShowMeCalendarButton(_ sender: AnyObject) {
        let calendarPicker = EPCalendarPicker(startYear: 2016, endYear: 2017, multiSelection: true, selectedDates: [])
        calendarPicker.calendarDelegate = self
        calendarPicker.startDate = Date()
        calendarPicker.hightlightsToday = true
        calendarPicker.showsTodaysButton = true
        calendarPicker.hideDaysFromOtherMonth = true
        calendarPicker.tintColor = UIColor.orange
//        calendarPicker.barTintColor = UIColor.greenColor()
        calendarPicker.dayDisabledTintColor = UIColor.gray
        calendarPicker.title = "Date Picker"
        
//        calendarPicker.backgroundImage = UIImage(named: "background_image")
//        calendarPicker.backgroundColor = UIColor.blueColor()
        
        let navigationController = UINavigationController(rootViewController: calendarPicker)
        self.present(navigationController, animated: true, completion: nil)   
    }
    
    func epCalendarPicker(_: EPCalendarPicker, didCancel error : NSError) {
        txtViewDetail.text = "User cancelled selection"
        
    }
    func epCalendarPicker(_: EPCalendarPicker, didSelectDate date : Date) {
        txtViewDetail.text = "User selected date: \n\(date)"
        
    }
    func epCalendarPicker(_: EPCalendarPicker, didSelectMultipleDate dates : [Date]) {
        txtViewDetail.text = "User selected dates: \n\(dates)"
    }

}

