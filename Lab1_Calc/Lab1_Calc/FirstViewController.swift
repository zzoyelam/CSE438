//
//  FirstViewController.swift
//  Lab1_Calc
//
//  Created by Zayid Oyelami on 6/10/19.
//  Copyright © 2019 Zayid Oyelami. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    func calculate() {
        if let orgAmt = orgLabel.text, let taxAmt = taxLabel.text, let discAmt = discountLabel.text {
            if (Float(orgAmt) != nil && Float(taxAmt) != nil && Float(discAmt) != nil ){
                let orgAmtF = Float(orgAmt)!
                let taxAmtF = Float(taxAmt)!
                let discAmtF = Float(discAmt)!
                
                if (orgAmtF >= 0 && taxAmtF >= 0 && discAmtF >= 0 ){
                    orgLabel.backgroundColor = UIColor.white
                    taxLabel.backgroundColor = UIColor.white
                    discountLabel.backgroundColor = UIColor.white
                    let discounted = orgAmtF-(orgAmtF * discAmtF/100.00)
                    let total =  discounted+(discounted * taxAmtF/100.00)
                    
                    totalLabel.text =  "$\(String(format: "%.2f", total))"
                }
                else{
                    if (orgAmtF < 0){
                        orgLabel.backgroundColor = UIColor.red
                        orgLabel.placeholder = "No negatives"
                    }
                    else {
                        orgLabel.backgroundColor = UIColor.white
                        orgLabel.placeholder = "Enter Amount"
                    }
                    if (taxAmtF < 0){
                        taxLabel.backgroundColor = UIColor.red
                        taxLabel.placeholder = "No negatives"
                    }
                    else {
                        taxLabel.backgroundColor = UIColor.white
                        taxLabel.placeholder = "Enter Percent"
                    }
                    if (discAmtF < 0){
                        discountLabel.backgroundColor = UIColor.red
                        discountLabel.placeholder = "No negatives"
                    }
                    else {
                        discountLabel.backgroundColor = UIColor.white
                        discountLabel.placeholder = "Enter Percent"
                    }
                    
                    
                    totalLabel.text = "Try again"
                }
                
            }
            else{
                
                totalLabel.text = "Try again. Need to fill in all values."
            }
        }
    }
    @IBOutlet weak var orgLabel: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var taxLabel: UITextField!
    @IBOutlet weak var discountLabel: UITextField!
    
    @IBAction func calcOrg(_ sender: Any) {
        calculate()
        }
    @IBAction func calcTax(_ sender: Any) {
        calculate()
    }
    @IBAction func calcDisc(_ sender: Any) {
        calculate()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         //+ (Double(orgAmt!) + Double(taxAmt!))
        orgLabel.text = "0"
        taxLabel.text = "0"
        discountLabel.text = "0"
        totalLabel.layer.cornerRadius = 30
    }
    
    


}

