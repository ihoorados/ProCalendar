//
//  ProCalendarView.swift
//  ProCalendar
//
//  Created by Hoorad on 10/1/19.
//  Copyright © 2019 Hoorad. All rights reserved.
//

import Foundation
import UIKit


// Mark: -Setup proCalendar Configuration
class proCalenderView: UIView {
    
    // Mark: -Properties
    lazy var weekDayView: WeekDayView = {
        let view = WeekDayView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var monthDayView: DaysView = {
       let view = DaysView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    fileprivate func configureView(){
        addWeekDayView()
        addMonthDay()
    }
    
    
    fileprivate func addWeekDayView(){
        addSubview(weekDayView)
        weekDayView.topAnchor.constraint(equalTo: topAnchor, constant: 8.0).isActive = true
        weekDayView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0.0).isActive = true
        weekDayView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0.0).isActive = true
        weekDayView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    fileprivate func addMonthDay(){
        addSubview(monthDayView)
        monthDayView.topAnchor.constraint(equalTo: weekDayView.bottomAnchor, constant: 8.0).isActive = true
        monthDayView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8.0).isActive = true
        monthDayView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8.0).isActive = true
        monthDayView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0.0).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

