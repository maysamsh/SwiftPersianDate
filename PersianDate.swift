//
//  PersianDate.swift
//  PersianDate
//
//  Created by Maysam Shahsavari on 2/14/17.
//  Copyright © 2017 Maysam Shahsavari. All rights reserved.
//

import Foundation
struct PersianDate {
    static func today() -> String{
        let date = Date()
        var _date = ""
        let formatter = DateFormatter()
        //In case of failure returns Gregorian date
        formatter.dateFormat = "yyyy.MM.dd"
        _date = formatter.string(from: date)
        
        let units: Set<Calendar.Component> = [.hour, .day, .month, .year]
        let calender = Calendar(identifier: Calendar.Identifier.persian)
        let components =  calender.dateComponents(units, from: date)
        
        let day = components.day ?? 0
        let month = components.month ?? 0
        let year = components.year ?? 0
        if day > 0 && month > 0 && year > 0 {
            _date = "\(year)/\(month)/\(day)"
        }
        return _date
    }
}
