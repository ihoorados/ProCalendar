//
//  ViewController.swift
//  ProCalendar
//  
//  Created by Hoorad on 10/1/19.
//  Copyright © 2019 Hoorad. All rights reserved.
//

import UIKit

class MainViewController: UIViewController{
    
    
    lazy var proCalendar: proCalenderView = {
        let view = proCalenderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.white
        configureView()
    }
    
    fileprivate func configureView(){
        
        self.title = "Pro Calender"
        self.navigationController?.navigationBar.isTranslucent=false
        
        addProCalendarView()
        
    }
    
    fileprivate func addProCalendarView(){
        
        self.view.addSubview(proCalendar)
        proCalendar.topAnchor.constraint(equalTo: view.topAnchor, constant: 0.0).isActive = true
        proCalendar.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0.0).isActive = true
        proCalendar.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0.0).isActive = true
        proCalendar.heightAnchor.constraint(equalToConstant: 350).isActive = true        
    }


}

extension MainViewController : proCalendarDelegate {
    
    func didSelectItemAt(forIndex selectedIndex: Int) {
        print(selectedIndex)
    }
    

}
