//
//  CalendarModel.swift
//  ProCalendar
//
//  Created by Hoorad on 10/1/19.
//  Copyright © 2019 Hoorad. All rights reserved.
//

import Foundation

protocol itemsPresentable : Decodable {
    var id:Int? {get}
    var title:String? {get}
}

class CalendarModel: itemsPresentable {
    
    var id: Int?
    var title: String?
    
    init(id:Int, title:String) {
        self.id = id
        self.title = title
    }
    
}
