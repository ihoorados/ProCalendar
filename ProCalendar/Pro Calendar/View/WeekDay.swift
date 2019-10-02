//
//  WeekDay.swift
//  ProCalendar
//
//  Created by Hoorad on 10/2/19.
//  Copyright © 2019 Hoorad. All rights reserved.
//

import Foundation
import UIKit

class WeekDayView: UIView {
    
    
    // Mark: - Properties
    let weekDayStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
        configureView()
    }
    
    func configureView() {
        
        addSubview(weekDayStackView)
        weekDayStackView.topAnchor.constraint(equalTo: topAnchor).isActive=true
        weekDayStackView.leftAnchor.constraint(equalTo: leftAnchor).isActive=true
        weekDayStackView.rightAnchor.constraint(equalTo: rightAnchor).isActive=true
        weekDayStackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive=true
        
        var weekDay = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
        for i in 0..<7 {
            let lbl = UILabel()
            lbl.text = weekDay[i]
            lbl.textAlignment = .center
            lbl.textColor = UIColor.green
            weekDayStackView.addArrangedSubview(lbl)
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
