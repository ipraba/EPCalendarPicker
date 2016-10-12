//
//  EPCalendarCell1.swift
//  EPCalendar
//
//  Created by Prabaharan Elangovan on 09/11/15.
//  Copyright © 2015 Prabaharan Elangovan. All rights reserved.
//

import UIKit

class EPCalendarCell1: UICollectionViewCell {

    var currentDate: NSDate!
    var isCellSelectable: Bool?
    
    @IBOutlet weak var lblDay: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func selectedForLabelColor(color: UIColor) {
        self.lblDay.layer.cornerRadius = self.lblDay.frame.size.width/2
        self.lblDay.layer.backgroundColor = color.cgColor
        self.lblDay.textColor = UIColor.white
    }
    
    func deSelectedForLabelColor(color: UIColor) {
        self.lblDay.layer.backgroundColor = UIColor.clear.cgColor
        self.lblDay.textColor = color
    }
    
    
    func setTodayCellColor(backgroundColor: UIColor) {
        
        self.lblDay.layer.cornerRadius = self.lblDay.frame.size.width/2
        self.lblDay.layer.backgroundColor = backgroundColor.cgColor
        self.lblDay.textColor  = UIColor.white
    }
}
