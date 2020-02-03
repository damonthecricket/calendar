//
//  ViewController.swift
//  Calendar
//
//  Created by Damon Cricket on 03.02.2020.
//  Copyright © 2020 DC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var yearLabel = UILabel()
    var januaryMonthView: MonthView!
    var februaryMonthView: MonthView!
    var marchMonthView: MonthView!
    var aprilMonthView: MonthView!
    var mayMonthView: MonthView!
    var juneMonthView: MonthView!
    var julyMonthView: MonthView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        yearLabel.frame = CGRect(x: 0.0, y: 0.0, width: view.bounds.width, height: 50.0)
        yearLabel.font = UIFont.boldSystemFont(ofSize: 25.0)
        yearLabel.text = "\(year())"
        yearLabel.textAlignment = .center
        yearLabel.adjustsFontSizeToFitWidth = true
        view.addSubview(yearLabel)
        yearLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 0.0).isActive = true
        yearLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0.0).isActive = true
        yearLabel.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        yearLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0.0).isActive = true
        
        let width = view.bounds.width/3
        let height = (view.bounds.height - yearLabel.bounds.height)/4
        januaryMonthView = MonthView(frame: CGRect(x: 0.0, y: 50.0, width: width, height: height))
        januaryMonthView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(januaryMonthView)
        januaryMonthView.topAnchor.constraint(equalTo: yearLabel.bottomAnchor, constant: 0.0).isActive = true
        januaryMonthView.widthAnchor.constraint(equalToConstant: width).isActive = true
        januaryMonthView.heightAnchor.constraint(equalToConstant: height).isActive = true
        januaryMonthView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0.0).isActive = true
        
        februaryMonthView = MonthView(frame: CGRect(x: januaryMonthView.frame.maxX, y: januaryMonthView.frame.minY, width: width, height: height))
        februaryMonthView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(februaryMonthView)
        februaryMonthView.topAnchor.constraint(equalTo: yearLabel.bottomAnchor, constant: 0.0).isActive = true
        februaryMonthView.widthAnchor.constraint(equalToConstant: width).isActive = true
        februaryMonthView.heightAnchor.constraint(equalToConstant: height).isActive = true
        februaryMonthView.leftAnchor.constraint(equalTo: januaryMonthView.rightAnchor, constant: 0.0).isActive = true
        
        marchMonthView = MonthView(frame: CGRect(x: februaryMonthView.frame.maxX, y: februaryMonthView.frame.minY, width: width, height: height))
        marchMonthView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(marchMonthView)
        marchMonthView.topAnchor.constraint(equalTo: yearLabel.bottomAnchor, constant: 0.0).isActive = true
        marchMonthView.widthAnchor.constraint(equalToConstant: width).isActive = true
        marchMonthView.heightAnchor.constraint(equalToConstant: height).isActive = true
        marchMonthView.leftAnchor.constraint(equalTo: februaryMonthView.rightAnchor, constant: 0.0).isActive = true
        
        aprilMonthView = MonthView(frame: CGRect(x: 0.0, y: januaryMonthView.frame.maxY, width: width, height: height))
        aprilMonthView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aprilMonthView)
        aprilMonthView.topAnchor.constraint(equalTo: januaryMonthView.bottomAnchor, constant: 0.0).isActive = true
        aprilMonthView.widthAnchor.constraint(equalToConstant: width).isActive = true
        aprilMonthView.heightAnchor.constraint(equalToConstant: height).isActive = true
        aprilMonthView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0.0).isActive = true
        
        mayMonthView = MonthView(frame: CGRect(x: aprilMonthView.frame.maxX, y: februaryMonthView.frame.maxY, width: width, height: height))
        mayMonthView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mayMonthView)
        mayMonthView.topAnchor.constraint(equalTo: februaryMonthView.bottomAnchor, constant: 0.0).isActive = true
        mayMonthView.widthAnchor.constraint(equalToConstant: width).isActive = true
        mayMonthView.heightAnchor.constraint(equalToConstant: height).isActive = true
        mayMonthView.leftAnchor.constraint(equalTo: aprilMonthView.rightAnchor, constant: 0.0).isActive = true
        
        juneMonthView = MonthView(frame: CGRect(x: mayMonthView.frame.maxX, y: marchMonthView.frame.maxY, width: width, height: height))
        juneMonthView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(juneMonthView)
        juneMonthView.topAnchor.constraint(equalTo: marchMonthView.bottomAnchor, constant: 0.0).isActive = true
        juneMonthView.widthAnchor.constraint(equalToConstant: width).isActive = true
        juneMonthView.heightAnchor.constraint(equalToConstant: height).isActive = true
        juneMonthView.leftAnchor.constraint(equalTo: mayMonthView.rightAnchor, constant: 0.0).isActive = true
        
        julyMonthView = MonthView(frame: CGRect(x: 0.0, y: aprilMonthView.frame.maxY, width: width, height: height))
        julyMonthView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(julyMonthView)
        julyMonthView.topAnchor.constraint(equalTo: aprilMonthView.bottomAnchor, constant: 0.0).isActive = true
        julyMonthView.widthAnchor.constraint(equalToConstant: width).isActive = true
        julyMonthView.heightAnchor.constraint(equalToConstant: height).isActive = true
        julyMonthView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0.0).isActive = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let y = year()
        januaryMonthView.adjustWith(year: y, month: 1)
        februaryMonthView.adjustWith(year: y, month: 2)
        marchMonthView.adjustWith(year: y, month: 3)
        aprilMonthView.adjustWith(year: y, month: 4)
        mayMonthView.adjustWith(year: y, month: 5)
        juneMonthView.adjustWith(year: y, month: 6)
        julyMonthView.adjustWith(year: y, month: 7)
//        augustMonthView.adjustWith(year: year, month: 8)
//        septemberMonthView.adjustWith(year: year, month: 9)
//        octoberMonthView.adjustWith(year: year, month: 10)
//        novemberMonthView.adjustWith(year: year, month: 11)
//        decemberMonthView.adjustWith(year: year, month: 12)
    }
    
    func year() -> Int {
        let calendar = Calendar.current
        let date = Date()
        return calendar.component(.year, from: date)
    }
}

