//
//  ViewController.swift
//  firstApp
//
//  Created by Zayid Oyelami on 6/10/19.
//  Copyright © 2019 Zayid Oyelami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var theSlider: UISlider!
    @IBAction func sliderMoved(_ sender: Any) {
        updateStuff()
    }
    
    func updateStuff() {
        let sliderVal = theSlider.value
        theLabel.text = String(Int(sliderVal))

    }
    @IBAction func buttonPressed(_ sender: Any) {
        theSlider.value = 0
        updateStuff()
        //sliderMoved(self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

