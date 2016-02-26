//
//  EPCalendarHeaderView.swift
//  EPCalendar
//
//  Created by Prabaharan Elangovan on 09/11/15.
//  Copyright © 2015 Prabaharan Elangovan. All rights reserved.
//

import UIKit

class EPCalendarHeaderView: UICollectionReusableView {

    @IBOutlet weak var lblFirst: UILabel!
    @IBOutlet weak var lblSecond: UILabel!
    @IBOutlet weak var lblThird: UILabel!
    @IBOutlet weak var lblFourth: UILabel!
    @IBOutlet weak var lblFifth: UILabel!
    @IBOutlet weak var lblSixth: UILabel!
    @IBOutlet weak var lblSeventh: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let calendar = NSCalendar.currentCalendar()
        let weeksDayList = calendar.shortWeekdaySymbols
        
        if NSCalendar.currentCalendar().firstWeekday == 2 {
            lblFirst.text = weeksDayList[1]
            lblSecond.text = weeksDayList[2]
            lblThird.text = weeksDayList[3]
            lblFourth.text = weeksDayList[4]
            lblFifth.text = weeksDayList[5]
            lblSixth.text = weeksDayList[6]
            lblSeventh.text = weeksDayList[0]
        } else {
            lblFirst.text = weeksDayList[0]
            lblSecond.text = weeksDayList[1]
            lblThird.text = weeksDayList[2]
            lblFourth.text = weeksDayList[3]
            lblFifth.text = weeksDayList[4]
            lblSixth.text = weeksDayList[5]
            lblSeventh.text = weeksDayList[6]
        }
    }
    
    func updateWeekendLabelColor(color: UIColor)
    {
        if NSCalendar.currentCalendar().firstWeekday == 2 {
            lblSixth.textColor = color
            lblSeventh.textColor = color
        } else {
            lblFirst.textColor = color
            lblSeventh.textColor = color
        }
    }
    
    func updateWeekdaysLabelColor(color: UIColor) {
        if NSCalendar.currentCalendar().firstWeekday == 2 {
            lblFirst.textColor = color
            lblSecond.textColor = color
            lblThird.textColor = color
            lblFourth.textColor = color
            lblFifth.textColor = color
        } else {
            lblSecond.textColor = color
            lblThird.textColor = color
            lblFourth.textColor = color
            lblFifth.textColor = color
            lblSixth.textColor = color
        }
    }
}
