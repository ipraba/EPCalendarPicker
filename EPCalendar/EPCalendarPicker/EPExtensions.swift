//
//  EPExtensions.swift
//  EPCalendar
//
//  Created by Prabaharan Elangovan on 29/11/15.
//  Copyright © 2015 Prabaharan Elangovan. All rights reserved.
//

import UIKit

//MARK: UIViewController Extensions

extension UIViewController {
    
    func showAlert(_ message: String) {
        showAlert(message, andTitle: "")
    }
    
    func showAlert(_ message: String, andTitle title: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
}

//MARK: UICollectionView Extension
extension UICollectionView {
    
    func scrollToIndexpathByShowingHeader(_ indexPath: IndexPath) {
        let sections = self.numberOfSections
        
        if indexPath.section <= sections{
            let attributes = self.layoutAttributesForSupplementaryElement(ofKind: UICollectionElementKindSectionHeader, at: indexPath)
            let topOfHeader = CGPoint(x: 0, y: attributes!.frame.origin.y - self.contentInset.top)
            self.setContentOffset(topOfHeader, animated:false)
        }
    }
}

//MARK: NSDate Extensions

extension Date {
    
    func sharedCalendar(){
        
    }
    
    var firstDayOfMonth: Date {
        let calendar = Calendar.current
        var dateComponent = calendar.dateComponents([.year, .month, .day], from: self)

        dateComponent.day = 1
        return calendar.date(from: dateComponent)!
    }
    
    init(year : Int, month : Int, day : Int) {
        let calendar = Calendar.current
        var dateComponent = DateComponents()
        dateComponent.year = year
        dateComponent.month = month
        dateComponent.day = day
        self = Date(timeInterval: 0, since: calendar.date(from: dateComponent)!)
    }
    
    func dateByAddingMonths(_ months : Int ) -> Date {
        return  Calendar.current.date(byAdding: .month, value: months, to: self)!
    }
    
    func dateByAddingDays(_ days : Int ) -> Date {
        return Calendar.current.date(byAdding: .day, value: days, to: self)!

    }
    
    var hour: Int {
        let calendar = Calendar.current
        let dateComponent = calendar.dateComponents([.hour], from: self)
        return dateComponent.hour!
    }
    
    var second: Int {
        let calendar = Calendar.current
        let dateComponent = calendar.dateComponents([.second], from: self)
        return dateComponent.second!
    }
    
    var minute: Int {
        let calendar = Calendar.current
        let dateComponent = calendar.dateComponents([.minute], from: self)
        return dateComponent.minute!
    }
    
    var day: Int {
        let calendar = Calendar.current
        let dateComponent = calendar.dateComponents([.day], from: self)
        return dateComponent.day!
    }
    
    var weekday: Int {
        let calendar = Calendar.current
        let dateComponent = calendar.dateComponents([.weekday], from: self)
        return dateComponent.weekday!
    }
    
    var month: Int {
        let calendar = Calendar.current
        let dateComponent = calendar.dateComponents([.month], from: self)
        return dateComponent.month!
    }
    
    var year: Int {
        let calendar = Calendar.current
        let dateComponent = calendar.dateComponents([.year], from: self)
        return dateComponent.year!
    }
    
    var numberOfDaysInMonth: Int {
        let calendar = Calendar.current
        let days = calendar.range(of: .day, in: .month, for: self)!
        return days.count
    }
    
    var dateByIgnoringTime: Date {
        let calendar = Calendar.current
        let dateComponent = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: dateComponent)!
    }
    
    var monthNameFull: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM YYYY"
        return dateFormatter.string(from: self)
    }
    
    var isSunday: Bool
    {
        return (self.getWeekday == 1)
    }
    
    var isMonday: Bool
    {
        return (self.getWeekday == 2)
    }
    
    var isTuesday: Bool
    {
        return (self.getWeekday == 3)
    }
    
    var isWednesday: Bool
    {
        return (self.getWeekday == 4)
    }
    
    var isThursday: Bool
    {
        return (self.getWeekday == 5)
    }
    
    var isFriday: Bool
    {
        return (self.getWeekday == 6)
    }
    
    var isSaturday: Bool
    {
        return (self.getWeekday == 7)
    }

    var getWeekday: Int {
        let calendar = Calendar.current
        return calendar.dateComponents([.weekday], from: self).weekday!
    }
    
    var isToday: Bool {
        return self.isDateSameDay(Date())
    }
    
    func isDateSameDay(_ date: Date) -> Bool {
         return (self.day == date.day) && (self.month == date.month && (self.year == date.year))
    }
    
    static func ==(lhs: Date, rhs: Date) -> Bool {
        return lhs.compare(rhs) == ComparisonResult.orderedSame
    }
    
    static func <(lhs: Date, rhs: Date) -> Bool {
        return lhs.compare(rhs) == ComparisonResult.orderedAscending
    }
    
    static func >(lhs: Date, rhs: Date) -> Bool {
        return rhs.compare(lhs) == ComparisonResult.orderedAscending
    }
}