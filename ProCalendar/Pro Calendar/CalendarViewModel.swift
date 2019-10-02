//
//  CalendarViewModel.swift
//  ProCalendar
//
//  Created by Hoorad on 10/1/19.
//  Copyright © 2019 Hoorad. All rights reserved.
//

import Foundation

class CalendarViewModel{
    
    var items : [itemsPresentable] = []
    
    var numOfDaysInMonth = [31,28,31,30,31,30,31,31,30,31,30,31]
    var currentMonthIndex: Int = 0
    var currentYear: Int = 0
    var presentMonthIndex = 0
    var presentYear = 0
    var todaysDate = 0
    var firstWeekDayOfMonth = 0   //(Sunday-Saturday 1-7)
    
    init() {
        
        for index in 1...30 {
            let item1 = CalendarModel(id: 0, title: "\(index)")
            items.append(item1)
        }

    }
}
