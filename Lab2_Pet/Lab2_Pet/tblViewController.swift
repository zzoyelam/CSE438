//
//  tblViewController.swift
//  Lab2_Pet
//
//  Created by Zayid Oyelami on 6/30/19.
//  Copyright © 2019 Zayid Oyelami. All rights reserved.
//

import Foundation
import UIKit

class tblViewController: UIViewController {
    @IBOutlet weak var dogIndicator: UIView!
    @IBOutlet weak var catIndicator: UIView!
    @IBOutlet weak var birdIndicator: UIView!
    @IBOutlet weak var bunnyIndicator: UIView!
    @IBOutlet weak var fishIndicator: UIView!
    
    
    
    var dogHlth:CGFloat = 0.0
    var catHlth:CGFloat = 0.0
    var birdHlth:CGFloat = 0.0
    var bunnyHlth:CGFloat = 0.0
    var fishHlth:CGFloat = 0.0
    var currentPet_tbl:pet = pet(petType: .dog,happinessLevel: 5,foodLevel: 5)
    
    func indicator(health:CGFloat,indView:UIView){
        var color: UIColor
        print(health)
        if health == 1.0 {
            color = UIColor(red: 0, green: 1, blue: 0, alpha: 0.7)
            indView.backgroundColor = color
        }
        else{
            color = UIColor(red: 1, green: 0, blue: 0, alpha: 0.7)
            indView.backgroundColor = color
        }
    }

    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        
        indicator(health: dogHlth,indView: dogIndicator)
        indicator(health: catHlth, indView: catIndicator)
        indicator(health: birdHlth,indView: birdIndicator)
        indicator(health: bunnyHlth, indView: bunnyIndicator)
        indicator(health: fishHlth, indView: fishIndicator)
        
        
    }
}

