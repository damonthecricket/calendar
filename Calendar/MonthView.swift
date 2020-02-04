//
//  MonthView.swift
//  Calendar
//
//  Created by Damon Cricket on 03.02.2020.
//  Copyright © 2020 DC. All rights reserved.
//

import UIKit

class MonthView: UIView {
    var monthLabel = UILabel()
    var firstWeekLabels = [UILabel]()
    var secondWeekLabels = [UILabel]()
    var thirdWeekLabels = [UILabel]()
    var fourthWeekLabels = [UILabel]()
    var fifthWeekLabels = [UILabel]()
    var sixsWeekLabels = [UILabel]()

    override init(frame: CGRect) {
        super.init(frame: frame)
        postInitSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        postInitSetup()
    }
    
    func postInitSetup() {
        let monthLabelHeight = bounds.height/5
        monthLabel.frame = CGRect(x: 0.0, y: 0.0, width: bounds.width, height: monthLabelHeight)
        monthLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
        monthLabel.textAlignment = .center
        monthLabel.text = "Month"
        monthLabel.textColor = .black
        monthLabel.adjustsFontSizeToFitWidth = true
        monthLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(monthLabel)
        monthLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0.0).isActive = true
        monthLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 0.0).isActive = true
        monthLabel.heightAnchor.constraint(equalToConstant: monthLabelHeight).isActive = true
        monthLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 0.0).isActive = true
        
        var lastX: CGFloat = 0.0
        let dayLabelWidth: CGFloat = bounds.width/7
        let dayLabelHeight: CGFloat = (bounds.height - monthLabelHeight)/6
        let font = UIFont.systemFont(ofSize: 12.0)
        for idx in 0 ..< 7 {
            let lbl = UILabel(frame: CGRect(x: lastX, y: 0.0, width: dayLabelWidth, height: dayLabelHeight))
            lbl.font = font
            lbl.textAlignment = .center
            lbl.textColor = .black
            lbl.translatesAutoresizingMaskIntoConstraints = false
            addSubview(lbl)
            firstWeekLabels.append(lbl)
            lbl.topAnchor.constraint(equalTo: monthLabel.bottomAnchor, constant: 0.0).isActive = true
            lbl.widthAnchor.constraint(equalToConstant: dayLabelWidth).isActive = true
            lbl.heightAnchor.constraint(equalToConstant: dayLabelHeight).isActive = true
            if idx > 0 {
                let previousLabel = firstWeekLabels[idx - 1]
                lbl.leftAnchor.constraint(equalTo: previousLabel.rightAnchor, constant: 0.0).isActive = true
            } else {
                lbl.leftAnchor.constraint(equalTo: leftAnchor, constant: 0.0).isActive = true
            }
            lastX = lbl.frame.maxX
        }
        
        lastX = 0.0
        
        for idx in 0 ..< 7 {
            let previousFirstLabel = firstWeekLabels[0]
            let lbl = UILabel(frame: CGRect(x: lastX, y: previousFirstLabel.frame.maxY, width: dayLabelWidth, height: dayLabelHeight))
            lbl.textAlignment = .center
            lbl.textColor = .black
            lbl.font = font
            lbl.translatesAutoresizingMaskIntoConstraints = false
            addSubview(lbl)
            secondWeekLabels.append(lbl)
            lbl.topAnchor.constraint(equalTo: previousFirstLabel.bottomAnchor, constant: 0.0).isActive = true
            lbl.widthAnchor.constraint(equalToConstant: dayLabelWidth).isActive = true
            lbl.heightAnchor.constraint(equalToConstant: dayLabelHeight).isActive = true
            if idx > 0 {
                let previousLabel = secondWeekLabels[idx - 1]
                lbl.leftAnchor.constraint(equalTo: previousLabel.rightAnchor, constant: 0.0).isActive = true
            } else {
                lbl.leftAnchor.constraint(equalTo: leftAnchor, constant: 0.0).isActive = true
            }
            lastX = lbl.frame.maxX
        }
        
        lastX = 0.0
        
        for idx in 0 ..< 7 {
            let previousFirstLabel = secondWeekLabels[0]
            let lbl = UILabel(frame: CGRect(x: lastX, y: previousFirstLabel.frame.maxY, width: dayLabelWidth, height: dayLabelHeight))
            lbl.textAlignment = .center
            lbl.textColor = .black
            lbl.font = font
            lbl.translatesAutoresizingMaskIntoConstraints = false
            addSubview(lbl)
            thirdWeekLabels.append(lbl)
            lbl.topAnchor.constraint(equalTo: previousFirstLabel.bottomAnchor, constant: 0.0).isActive = true
            lbl.widthAnchor.constraint(equalToConstant: dayLabelWidth).isActive = true
            lbl.heightAnchor.constraint(equalToConstant: dayLabelHeight).isActive = true
            if idx > 0 {
                let previousLabel = thirdWeekLabels[idx - 1]
                lbl.leftAnchor.constraint(equalTo: previousLabel.rightAnchor, constant: 0.0).isActive = true
            } else {
                lbl.leftAnchor.constraint(equalTo: leftAnchor, constant: 0.0).isActive = true
            }
            lastX = lbl.frame.maxX
        }
        
        lastX = 0.0
        
        for idx in 0 ..< 7 {
            let previousFirstLabel = thirdWeekLabels[0]
            let lbl = UILabel(frame: CGRect(x: lastX, y: previousFirstLabel.frame.maxY, width: dayLabelWidth, height: dayLabelHeight))
            lbl.textAlignment = .center
            lbl.textColor = .black
            lbl.font = font
            lbl.translatesAutoresizingMaskIntoConstraints = false
            addSubview(lbl)
            fourthWeekLabels.append(lbl)
            lbl.topAnchor.constraint(equalTo: previousFirstLabel.bottomAnchor, constant: 0.0).isActive = true
            lbl.widthAnchor.constraint(equalToConstant: dayLabelWidth).isActive = true
            lbl.heightAnchor.constraint(equalToConstant: dayLabelHeight).isActive = true
            if idx > 0 {
                let previousLabel = fourthWeekLabels[idx - 1]
                lbl.leftAnchor.constraint(equalTo: previousLabel.rightAnchor, constant: 0.0).isActive = true
            } else {
                lbl.leftAnchor.constraint(equalTo: leftAnchor, constant: 0.0).isActive = true
            }
            lastX = lbl.frame.maxX
        }
        
        lastX = 0.0
        
        for idx in 0 ..< 7 {
            let previousFirstLabel = fourthWeekLabels[0]
            let lbl = UILabel(frame: CGRect(x: lastX, y: previousFirstLabel.frame.maxY, width: dayLabelWidth, height: dayLabelHeight))
            lbl.textAlignment = .center
            lbl.textColor = .black
            lbl.font = font
            lbl.translatesAutoresizingMaskIntoConstraints = false
            addSubview(lbl)
            fifthWeekLabels.append(lbl)
            lbl.topAnchor.constraint(equalTo: previousFirstLabel.bottomAnchor, constant: 0.0).isActive = true
            lbl.widthAnchor.constraint(equalToConstant: dayLabelWidth).isActive = true
            lbl.heightAnchor.constraint(equalToConstant: dayLabelHeight).isActive = true
            if idx > 0 {
                let previousLabel = fifthWeekLabels[idx - 1]
                lbl.leftAnchor.constraint(equalTo: previousLabel.rightAnchor, constant: 0.0).isActive = true
            } else {
                lbl.leftAnchor.constraint(equalTo: leftAnchor, constant: 0.0).isActive = true
            }
            lastX = lbl.frame.maxX
        }
        
        lastX = 0.0
        
        for idx in 0 ..< 7 {
            let previousFirstLabel = fifthWeekLabels[0]
            let lbl = UILabel(frame: CGRect(x: lastX, y: previousFirstLabel.frame.maxY, width: dayLabelWidth, height: dayLabelHeight))
            lbl.textAlignment = .center
            lbl.textColor = .black
            lbl.font = font
            lbl.translatesAutoresizingMaskIntoConstraints = false
            addSubview(lbl)
            sixsWeekLabels.append(lbl)
            lbl.topAnchor.constraint(equalTo: previousFirstLabel.bottomAnchor, constant: 0.0).isActive = true
            lbl.widthAnchor.constraint(equalToConstant: dayLabelWidth).isActive = true
            lbl.heightAnchor.constraint(equalToConstant: dayLabelHeight).isActive = true
            if idx > 0 {
                let previousLabel = sixsWeekLabels[idx - 1]
                lbl.leftAnchor.constraint(equalTo: previousLabel.rightAnchor, constant: 0.0).isActive = true
            } else {
                lbl.leftAnchor.constraint(equalTo: leftAnchor, constant: 0.0).isActive = true
            }
            lastX = lbl.frame.maxX
        }
    }
    
    func adjustWith(year: Int, month: Int) {
        var components = DateComponents()
        components.year = year
        components.month = month
        components.day = 1
        let calendar = Calendar.current
        let date = calendar.date(from: components)!
        let formatter = DateFormatter()
        formatter.dateFormat = "LLLL"
        monthLabel.text = formatter.string(from: date)
        let range = calendar.range(of: .day, in: .month, for: date)!
        var count: Int = 1
        calendar.enumerateDates(startingAfter: date, matching: DateComponents(hour: 1), matchingPolicy: .strict) {d, _, stop in
            let day = calendar.component(.day, from: d!)
            let weekDay = calendar.component(.weekday, from: d!)
            let weekOfMonth = calendar.component(.weekOfMonth, from: d!)
            var lbl: UILabel = firstWeekLabels[0]
            if weekOfMonth == 1 {
                lbl = firstWeekLabels[weekDay - 1]
                lbl.text = "\(day)"
            } else if weekOfMonth == 2 {
                lbl = secondWeekLabels[weekDay - 1]
                lbl.text = "\(day)"
            } else if weekOfMonth == 3 {
                lbl = thirdWeekLabels[weekDay - 1]
                lbl.text = "\(day)"
            } else if weekOfMonth == 4 {
                lbl = fourthWeekLabels[weekDay - 1]
                lbl.text = "\(day)"
            } else if weekOfMonth == 5 {
                lbl = fifthWeekLabels[weekDay - 1]
                lbl.text = "\(day)"
            } else if weekOfMonth == 6 {
                lbl = sixsWeekLabels[weekDay - 1]
                lbl.text = "\(day)"
            }
            let currentDate = Date()
            let currentYear = calendar.component(.year, from: currentDate)
            let currentMonth = calendar.component(.month, from: currentDate)
            let currentDay = calendar.component(.day, from: currentDate)
            if currentYear == year && currentMonth == month && currentDay == day {
                lbl.backgroundColor = .red
            }
            count += 1
            stop = count == range.count + 1
        }
    }
}
