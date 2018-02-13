//
//  CurrencyTxtField.swift
//  windowShopper
//
//  Created by Duong Dang Hoang on 2/1/18.
//  Copyright © 2018 Duong Dang Hoang. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    override func prepareForInterfaceBuilder() {
        customize()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customize()
        
    }
    
    func customize(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        guard let p = placeholder else {return;}
        let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }
}

