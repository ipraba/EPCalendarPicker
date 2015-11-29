//
//  EPCalendarHeaderView.swift
//  EPCalendar
//
//  Created by Prabaharan Elangovan on 09/11/15.
//  Copyright © 2015 Prabaharan Elangovan. All rights reserved.
//

import UIKit

class EPCalendarHeaderView: UICollectionReusableView {

    @IBOutlet weak var lblSunday: UILabel!
    @IBOutlet weak var lblMonday: UILabel!
    @IBOutlet weak var lblTuesday: UILabel!
    @IBOutlet weak var lblWednesday: UILabel!
    @IBOutlet weak var lblThursday: UILabel!
    @IBOutlet weak var lblFriday: UILabel!
    @IBOutlet weak var lblSaturday: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateWeekendLabelColor(color: UIColor) {
        lblSaturday.textColor = color
        lblSunday.textColor = color
    }
    
    func updateWeekdaysLabelColor(color: UIColor) {
        lblMonday.textColor = color
        lblTuesday.textColor = color
        lblWednesday.textColor = color
        lblThursday.textColor = color
        lblFriday.textColor = color
    }
    
}
