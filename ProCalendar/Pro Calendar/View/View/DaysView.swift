//
//  MonthDayView.swift
//  ProCalendar
//
//  Created by Hoorad on 10/3/19.
//  Copyright © 2019 Hoorad. All rights reserved.
//

import UIKit

protocol proCalendarDelegate {
    func didSelectItemAt(selectedIndex: Int)
    func didDeselectItemAt(selectedIndex: Int)
}

class DaysView: UIView , UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{

    var delegate:proCalendarDelegate?

    
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
        myCollectionView.reloadData()

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
        cell?.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        cell?.layer.cornerRadius = (cell?.layer.frame.width)! / 2
        
        if self.delegate != nil {
            delegate!.didSelectItemAt(selectedIndex: indexPath.row)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width/7 - 8
        //let height: CGFloat = 40
        return CGSize(width: width, height: width)
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
