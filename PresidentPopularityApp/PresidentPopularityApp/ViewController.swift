//
//  ViewController.swift
//  PresidentPopularityApp
//
//  Created by Zayid Oyelami on 6/17/19.
//  Copyright © 2019 Zayid Oyelami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentPresident: President?
    
    @IBOutlet weak var ratingLabel: UILabel!
    func updateView() {
        ratingLabel.text = String((currentPresident?.approvalRating)!)
    }
    
    @IBAction func tweetButton(_ sender: Any) {
        currentPresident?.tweet()
    }
    
    @IBAction func magaButton(_ sender: Any) {
        currentPresident?.MAGA()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currentPresident = President(name: "Donald Trump", party: .republican)
        let approval = (currentPresident?.approvalRating)!
        print(approval)
    }
    
    


}

