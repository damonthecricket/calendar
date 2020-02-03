//
//  ViewController.swift
//  Calendar
//
//  Created by Damon Cricket on 03.02.2020.
//  Copyright © 2020 DC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var monthView: MonthView!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let calendar = Calendar.current
        let date = Date()
        let year = calendar.component(.year, from: date)
        let month = calendar.component(.month, from: date)
        monthView.adjustWith(year: year, month: month)
    }
}

