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
        showAlert(message: message, andTitle: "")
    }
    
    func showAlert(message: String, andTitle title: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
}

//MARK: UICollectionView Extension
extension UICollectionView {
    
    func scrollToIndexpathByShowingHeader(indexPath: NSIndexPath) {
        let sections = self.numberOfSections
        
        if indexPath.section <= sections{
            let attributes = self.layoutAttributesForSupplementaryElement(ofKind: UICollectionElementKindSectionHeader, at: indexPath as IndexPath)
            let topOfHeader = CGPoint(x: 0, y: attributes!.frame.origin.y - self.contentInset.top)
            self.setContentOffset(topOfHeader, animated:false)
        }
    }
}

//MARK: NSDate Extensions

extension NSDate {
    
    func sharedCalendar(){
        
    }
    
    func firstDayOfMonth () -> NSDate {
        let calendar = NSCalendar.current
        var dateComponent = calendar.dateComponents([.year, .month, .day ], from: self as Date)
        dateComponent.day = 1
        return calendar.date(from: dateComponent)! as NSDate
    }
    
    convenience init(year : Int, month : Int, day : Int) {
        
        let calendar = NSCalendar.current
        let dateComponent = NSDateComponents()
        dateComponent.year = year
        dateComponent.month = month
        dateComponent.day = day
        self.init(timeInterval: 0, since: calendar.date(from: dateComponent as DateComponents)!)
    }
    
    func dateByAddingMonths(months : Int ) -> NSDate {
        let calendar = NSCalendar.current
        let dateComponent = NSDateComponents()
        dateComponent.month = months
        return calendar.date(byAdding: dateComponent as DateComponents, to: self as Date)! as NSDate
    }
    
    func dateByAddingDays(days : Int ) -> NSDate {
        let calendar = NSCalendar.current
        let dateComponent = NSDateComponents()
        dateComponent.day = days
        return calendar.date(byAdding: dateComponent as DateComponents, to: self as Date)! as NSDate
    }
    
    func hour() -> Int {
        let calendar = NSCalendar.current
        let dateComponent = calendar.component(.hour, from: self as Date)
        return dateComponent
    }
    
    func second() -> Int {
        let calendar = NSCalendar.current
        let dateComponent = calendar.component(.second, from: self as Date)
        return dateComponent
    }
    
    func minute() -> Int {
        let calendar = NSCalendar.current
        let dateComponent = calendar.component(.minute, from: self as Date)
        return dateComponent
    }
    
    func day() -> Int {
        let calendar = NSCalendar.current
        let dateComponent = calendar.component(.day, from: self as Date)
        return dateComponent
    }
    
    func weekday() -> Int {
        let calendar = NSCalendar.current
        let dateComponent = calendar.component(.weekday, from: self as Date)
        return dateComponent
    }
    
    func month() -> Int {
        let calendar = NSCalendar.current
        let dateComponent = calendar.component(.month, from: self as Date)
        return dateComponent
    }
    
    func year() -> Int {
        let calendar = NSCalendar.current
        let dateComponent = calendar.component(.year, from: self as Date)
        return dateComponent
    }
    
    func numberOfDaysInMonth() -> Int {
        let calendar = NSCalendar.current
        let days = calendar.range(of: .day, in: .month, for: self as Date)
        return (days?.upperBound)!
    }
    
    func dateByIgnoringTime() -> NSDate {
        let calendar = NSCalendar.current
        let dateComponent = calendar.dateComponents([.year, .month, .day ], from: self as Date)
        return calendar.date(from: dateComponent)! as NSDate
    }
    
    func monthNameFull() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM YYYY"
        return dateFormatter.string(from: self as Date)
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
        let calendar = NSCalendar.current
        return calendar.component(.weekday, from: self as Date)
    }
    
    func isToday() -> Bool {
        return self.isDateSameDay(date: NSDate())
    }
    
    func isDateSameDay(date: NSDate) -> Bool {

         return (self.day() == date.day()) && (self.month() == date.month() && (self.year() == date.year()))

    }
}

func ==(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs as Date) == ComparisonResult.orderedSame
}

func <(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs as Date) == ComparisonResult.orderedAscending
}

func >(lhs: NSDate, rhs: NSDate) -> Bool {
    return rhs.compare(lhs as Date) == ComparisonResult.orderedAscending
}
