//
//  Wage.swift
//  windowShopper
//
//  Created by Duong Dang Hoang on 8/1/18.
//  Copyright © 2018 Duong Dang Hoang. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price/wage))
    }
}
