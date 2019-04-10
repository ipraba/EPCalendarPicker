//
//  EPCalendarCell1.swift
//  EPCalendar
//
//  Created by Prabaharan Elangovan on 09/11/15.
//  Copyright © 2015 Prabaharan Elangovan. All rights reserved.
//

import UIKit

class EPCalendarCell1: UICollectionViewCell {

    var currentDate: Date!
    var isCellSelectable: Bool?
    
    @IBOutlet weak var lblDay: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func selectedForLabelColor(_ color: UIColor) {
        self.lblDay.layer.cornerRadius = self.lblDay.frame.size.width/2
        self.lblDay.layer.backgroundColor = color.cgColor
        self.lblDay.textColor = UIColor.white
    }
    
    func deSelectedForLabelColor(_ color: UIColor) {
        self.lblDay.layer.backgroundColor = UIColor.clear.cgColor
        self.lblDay.textColor = color
    }
    
    
    func setTodayCellColor(_ backgroundColor: UIColor) {
        
        self.lblDay.layer.cornerRadius = self.lblDay.frame.size.width/2
        self.lblDay.layer.backgroundColor = backgroundColor.cgColor
        self.lblDay.textColor  = UIColor.white
    }
}
