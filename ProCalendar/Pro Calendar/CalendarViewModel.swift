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
    
    init() {
        
        for index in 1...30 {
            let item1 = CalendarModel(id: 0, title: "\(index)")
            items.append(item1)
        }

    }
}
