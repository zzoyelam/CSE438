//
//  President.swift
//  PresidentPopularityApp
//
//  Created by Zayid Oyelami on 6/17/19.
//  Copyright © 2019 Zayid Oyelami. All rights reserved.
//

import Foundation

class President {
    
    enum politicalParty{
        case democrat
        case republican
    }
    
    //Data
    var approvalRating: Int
    var name : String?
    var partyAffiliation : politicalParty
    

    // Init
    init(name:String, party: politicalParty) {
        self.name = name
        self.partyAffiliation = party
        approvalRating = 50
    }
    
    // Behavior
    func tweet(){
        // approvalRating -= 20
        approvalRating -= 20
        if approvalRating < 0
        {
            approvalRating = 0
        }
    }
    func MAGA() {
        approvalRating += 5
        if approvalRating > 100
        {
            approvalRating = 100
        }
    }
}
