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
class proCalenderView: UIView , proCalendarDelegate{
    
    
    func setStatus(_ title: String) {
        statuslabel.text = title
        print("status label set as : \(title)")
    }
    func didSelectItemAt(_ selectedIndex: Int) {
        print(selectedIndex)
    }
    func didDeselectItemAt(_ selectedIndex: Int){
        print(selectedIndex)
    }
    
    
    // Mark: -Properties
    lazy var weekDayView: WeekDayView = {
        let view = WeekDayView()
        view.backgroundColor = #colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var daysViewMonthly: DaysViewMonthly = {
        let view = DaysViewMonthly()
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var statuslabel:UILabel = {
       let lbl = UILabel()
        lbl.textColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        lbl.text = "Sample Status"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
        
    }
    
    fileprivate func configureView(){
        addWeekDayView()
        addMonthDay()
        addStatusLable()

    }
    
    
    fileprivate func addStatusLable(){
        addSubview(statuslabel)
        statuslabel.textColor = UIColor.blue
        statuslabel.topAnchor.constraint(equalTo: daysViewMonthly.bottomAnchor, constant: 16.0).isActive = true
        statuslabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8.0).isActive = true
    }
    
    
    fileprivate func addWeekDayView(){
        addSubview(weekDayView)
        weekDayView.topAnchor.constraint(equalTo: topAnchor, constant: 8.0).isActive = true
        weekDayView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0.0).isActive = true
        weekDayView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0.0).isActive = true
        weekDayView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    fileprivate func addMonthDay(){
        addSubview(daysViewMonthly)
        daysViewMonthly.topAnchor.constraint(equalTo: weekDayView.bottomAnchor, constant: 8.0).isActive = true
        daysViewMonthly.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8.0).isActive = true
        daysViewMonthly.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8.0).isActive = true
        daysViewMonthly.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0.0).isActive = true
        daysViewMonthly.delegate = self
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
