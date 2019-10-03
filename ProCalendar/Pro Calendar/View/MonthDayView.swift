//
//  MonthDayView.swift
//  ProCalendar
//
//  Created by Hoorad on 10/3/19.
//  Copyright © 2019 Hoorad. All rights reserved.
//

import UIKit

class MonthDayView: UIView , UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initConfigView()
        
    }
    
    fileprivate func initConfigView(){
        
        addSubview(myCollectionView)
        myCollectionView.topAnchor.constraint(equalTo: topAnchor, constant: 0.0).isActive = true
        myCollectionView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0.0).isActive = true
        myCollectionView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0.0).isActive = true
        myCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0.0).isActive = true
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        myCollectionView.register(daysCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        


    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! daysCollectionViewCell
        cell.backgroundColor = UIColor.clear
        cell.daylbl.text = "\(indexPath.row)"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        let lbl = cell?.subviews[1] as! UILabel
        lbl.textColor = UIColor.white
        cell?.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//        let cell = collectionView.cellForItem(at: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width/7 - 8
        let height: CGFloat = 40
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8.0
    }
    
    let myCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let myCollectionView=UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        myCollectionView.showsHorizontalScrollIndicator = false
        myCollectionView.translatesAutoresizingMaskIntoConstraints = false
        myCollectionView.backgroundColor=UIColor.clear
        myCollectionView.allowsMultipleSelection = false
        return myCollectionView
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
