//
//  EPExtensions.swift
//  EPCalendar
//
//  Created by Prabaharan Elangovan on 29/11/15.
//  Copyright © 2015 Prabaharan Elangovan. All rights reserved.
//

import Foundation
import UIKit

//MARK: UIViewController Extensions

extension UIViewController {
    
    func showAlert(message: String) {
        showAlert(message, andTitle: "")
    }
    
    func showAlert(message: String, andTitle title: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

//MARK: UICollectionView Extension
extension UICollectionView {
    
    func scrollToIndexpathByShowingHeader(indexPath: NSIndexPath) {
        let sections = self.numberOfSections()
        
        if indexPath.section <= sections{
            let attributes = self.layoutAttributesForSupplementaryElementOfKind(UICollectionElementKindSectionHeader, atIndexPath: indexPath)
            let topOfHeader = CGPointMake(0, attributes!.frame.origin.y - self.contentInset.top)
            self.setContentOffset(topOfHeader, animated:false)
        }
    }
}

//MARK: NSDate Extensions

extension NSDate {
    
    func sharedCalendar(){
        
    }
    
    func firstDayOfMonth () -> NSDate {
        let calendar = NSCalendar.currentCalendar()
        let dateComponent = calendar.components([.Year, .Month, .Day ], fromDate: self)
        dateComponent.day = 1
        return calendar.dateFromComponents(dateComponent)!
    }
    
    convenience init(year : Int, month : Int, day : Int) {
        
        let calendar = NSCalendar.currentCalendar()
        let dateComponent = NSDateComponents()
        dateComponent.year = year
        dateComponent.month = month
        dateComponent.day = day
        self.init(timeInterval:0, sinceDate:calendar.dateFromComponents(dateComponent)!)
    }
    
    func dateByAddingMonths(months : Int ) -> NSDate {
        let calendar = NSCalendar.currentCalendar()
        let dateComponent = NSDateComponents()
        dateComponent.month = months
        return calendar.dateByAddingComponents(dateComponent, toDate: self, options: NSCalendarOptions.MatchNextTime)!
    }
    
    func dateByAddingDays(days : Int ) -> NSDate {
        let calendar = NSCalendar.currentCalendar()
        let dateComponent = NSDateComponents()
        dateComponent.day = days
        return calendar.dateByAddingComponents(dateComponent, toDate: self, options: NSCalendarOptions.MatchNextTime)!
    }
    
    func hour() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let dateComponent = calendar.components(.Hour, fromDate: self)
        return dateComponent.hour
    }
    
    func second() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let dateComponent = calendar.components(.Second, fromDate: self)
        return dateComponent.second
    }
    
    func minute() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let dateComponent = calendar.components(.Minute, fromDate: self)
        return dateComponent.minute
    }
    
    func day() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let dateComponent = calendar.components(.Day, fromDate: self)
        return dateComponent.day
    }
    
    func weekday() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let dateComponent = calendar.components(.Weekday, fromDate: self)
        return dateComponent.weekday
    }
    
    func month() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let dateComponent = calendar.components(.Month, fromDate: self)
        return dateComponent.month
    }
    
    func year() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let dateComponent = calendar.components(.Year, fromDate: self)
        return dateComponent.year
    }
    
    func numberOfDaysInMonth() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let days = calendar.rangeOfUnit(NSCalendarUnit.Day, inUnit: NSCalendarUnit.Month, forDate: self)
        return days.length
    }
    
    func dateByIgnoringTime() -> NSDate {
        let calendar = NSCalendar.currentCalendar()
        let dateComponent = calendar.components([.Year, .Month, .Day ], fromDate: self)
        return calendar.dateFromComponents(dateComponent)!
    }
    
    func monthNameFull() -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MMMM YYYY"
        return dateFormatter.stringFromDate(self)
    }
    
    func isSunday() -> Bool
    {
        return (self.getWeekday() == 1)
    }
    
    func isMonday() -> Bool
    {
        return (self.getWeekday() == 2)
    }
    
    func isTuesday() -> Bool
    {
        return (self.getWeekday() == 3)
    }
    
    func isWednesday() -> Bool
    {
        return (self.getWeekday() == 4)
    }
    
    func isThursday() -> Bool
    {
        return (self.getWeekday() == 5)
    }
    
    func isFriday() -> Bool
    {
        return (self.getWeekday() == 6)
    }
    
    func isSaturday() -> Bool
    {
        return (self.getWeekday() == 7)
    }
    
    func getWeekday() -> Int {
        let calendar = NSCalendar.currentCalendar()
        return calendar.components( .Weekday, fromDate: self).weekday
    }
    
    func isToday() -> Bool {
        return self.isDateSameDay(NSDate())
    }
    
    func isDateSameDay(date: NSDate) -> Bool {

         return (self.day() == date.day()) && (self.month() == date.month() && (self.year() == date.year()))

    }
}

func ==(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == NSComparisonResult.OrderedSame
}

func <(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == NSComparisonResult.OrderedAscending
}

func >(lhs: NSDate, rhs: NSDate) -> Bool {
    return rhs.compare(lhs) == NSComparisonResult.OrderedAscending
}