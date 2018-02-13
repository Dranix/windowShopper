//
//  MainVC.swift
//  windowShopper
//
//  Created by Duong Dang Hoang on 2/1/18.
//  Copyright © 2018 Duong Dang Hoang. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxtField: CurrencyTxtField!
    @IBOutlet weak var priceTxtField: CurrencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var clearBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let calculateBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calculateBtn.setTitle("Calculate", for: .normal)
        calculateBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calculateBtn.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
        wageTxtField.inputAccessoryView = calculateBtn
        priceTxtField.inputAccessoryView = calculateBtn
        
        clearResult()
    }

    @objc func calculate(){
        view.endEditing(true)
        
        guard let wageTxt = wageTxtField.text, let priceTxt = priceTxtField.text else { return }
        let wage = (wageTxt as NSString).doubleValue
        let price = (priceTxt as NSString).doubleValue
        
        resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
        
        resultLbl.isHidden = false
        hoursLbl.isHidden = false
    }
    
    
    @IBAction func clearBtnPressed(_ sender: Any) {
        clearResult()
        wageTxtField.text = ""
        priceTxtField.text = ""
    }
    
    func clearResult(){
        resultLbl.text = ""
        resultLbl.isHidden = true
        
        hoursLbl.isHidden = true
    }
}

