//
//  MonthDayCell.swift
//  ProCalendar
//
//  Created by Hoorad on 10/2/19.
//  Copyright © 2019 Hoorad. All rights reserved.
//

import Foundation
import UIKit

class daysCollectionViewCell: UICollectionViewCell {
    
    let daylbl: UILabel = {
        let label = UILabel()
        label.text = "00"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor     = UIColor.clear
        layer.cornerRadius  = self.layer.cornerRadius / 2
        layer.masksToBounds = true
        setupViews()
    }
    
    func setupViews() {
        addSubview(daylbl)
        daylbl.topAnchor.constraint(equalTo: topAnchor).isActive       = true
        daylbl.leftAnchor.constraint(equalTo: leftAnchor).isActive     = true
        daylbl.rightAnchor.constraint(equalTo: rightAnchor).isActive   = true
        daylbl.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
