//
//  ViewController.swift
//  Lab2_Pet
//
//  Created by Zayid Oyelami on 6/26/19.
//  Copyright © 2019 Zayid Oyelami. All rights reserved.
//

import UIKit
var dogHealth:CGFloat = 1.0
var catHealth:CGFloat = 1.0
var birdHealth:CGFloat = 1.0
var bunnyHealth:CGFloat = 1.0
var fishHealth:CGFloat = 1.0

class ViewController: UIViewController {

    @IBOutlet weak var background: UIView!
    @IBOutlet weak var petImg: UIImageView!
    @IBOutlet weak var happyLvlLabel: UILabel!
    @IBOutlet weak var foodLvlLabel: UILabel!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var feedBtn: UIButton!
    @IBOutlet weak var happyLvl: DisplayView!
    @IBOutlet weak var foodLvl: DisplayView!
    @IBOutlet weak var petSwitcher: UISegmentedControl!
    
    @IBAction func play(_ sender: Any) {
        currentPet.play()
        happyLvl.animateValue(to: CGFloat(currentPet.happinessLevel)/10)
        foodLvl.animateValue(to: CGFloat(currentPet.foodLevel)/10)
        happyLvlLabel.text = String(currentPet.happinessLevel)
        foodLvlLabel.text = String(currentPet.foodLevel)
    }
    
    @IBAction func feed(_ sender: Any) {
        currentPet.feed()
        happyLvl.animateValue(to: CGFloat(currentPet.happinessLevel)/10)
        foodLvl.animateValue(to: CGFloat(currentPet.foodLevel)/10)
        happyLvlLabel.text = String(currentPet.happinessLevel)
        foodLvlLabel.text = String(currentPet.foodLevel)
    }
  

//    var dog = pet(petType: .dog,happinessLevel: 5,foodLevel: 5)
    var cat = pet(petType: .cat,happinessLevel: 5,foodLevel: 5)
    var bird = pet(petType: .bird,happinessLevel: 5,foodLevel: 5)
    var bunny = pet(petType: .bunny,happinessLevel: 5,foodLevel: 5)
    var fish = pet(petType: .fish,happinessLevel: 5,foodLevel: 5)
    
    var currentPet:pet = pet(petType: .dog,happinessLevel: 5,foodLevel: 5)
    
    @IBAction func switchPets(_ sender: UISegmentedControl) {
        switch petSwitcher.selectedSegmentIndex
        {
        case 0:
            currentPet = pet(petType: .dog,happinessLevel: 5,foodLevel: 5)
            happyLvlLabel.text = String(currentPet.happinessLevel)
            foodLvlLabel.text = String(currentPet.foodLevel)
            petImg.image = UIImage(named:"dog.png")
            let dogColor = UIColor(red: 0.949, green: 0.1412, blue: 0.2902, alpha: 1.0)
            background.backgroundColor = dogColor
            happyLvl.color = dogColor
            foodLvl.color = dogColor
            happyLvl.animateValue(to: CGFloat(currentPet.happinessLevel)/10)
            foodLvl.animateValue(to: CGFloat(currentPet.foodLevel)/10)
            if (currentPet.foodLevel > 3 && currentPet.happinessLevel > 3)
            {
                dogHealth = 1
            }
            else
            {
                dogHealth = 0
            }
  
            
        case 1:
            currentPet = cat
            happyLvlLabel.text = String(currentPet.happinessLevel)
            foodLvlLabel.text = String(currentPet.foodLevel)
            petImg.image = UIImage(named:"cat.png")
            let catColor = UIColor(red: 0.1294, green: 0.6157, blue: 0.8784, alpha: 1.0)
            background.backgroundColor = catColor
            happyLvl.color = catColor
            foodLvl.color = catColor
            happyLvl.animateValue(to: CGFloat(currentPet.happinessLevel)/10)
            foodLvl.animateValue(to: CGFloat(currentPet.foodLevel)/10)
            if (currentPet.foodLevel > 3 && currentPet.happinessLevel > 3)
            {
                catHealth = 1
            }
            else
            {
               catHealth = 0
            }
         
        case 2:
            currentPet = bird
            happyLvlLabel.text = String(currentPet.happinessLevel)
            foodLvlLabel.text = String(currentPet.foodLevel)
            petImg.image = UIImage(named:"bird.png")
            let birdColor = UIColor(red: 0.949, green: 0.7725, blue: 0.1412, alpha: 1.0)
            background.backgroundColor = birdColor
            happyLvl.color = birdColor
            foodLvl.color = birdColor
            happyLvl.animateValue(to: CGFloat(currentPet.happinessLevel)/10)
            foodLvl.animateValue(to: CGFloat(currentPet.foodLevel)/10)
            if (currentPet.foodLevel > 3 && currentPet.happinessLevel > 3)
            {
                birdHealth = 1
            }
            else
            {
                birdHealth = 0
            }
            
        case 3:
            currentPet = bunny
            happyLvlLabel.text = String(currentPet.happinessLevel)
            foodLvlLabel.text = String(currentPet.foodLevel)
            petImg.image = UIImage(named:"bunny.png")
            let bunnyColor = UIColor(red: 0.2431, green: 0.6588, blue: 0.149, alpha: 1.0)
            background.backgroundColor = bunnyColor
            happyLvl.color = bunnyColor
            foodLvl.color = bunnyColor
            happyLvl.animateValue(to: CGFloat(currentPet.happinessLevel)/10)
            foodLvl.animateValue(to: CGFloat(currentPet.foodLevel)/10)
            if (currentPet.foodLevel > 3 && currentPet.happinessLevel > 3)
            {
                bunnyHealth = 1
            }
            else
            {
                bunnyHealth = 0
            }
        case 4:
            currentPet = fish
            happyLvlLabel.text = String(currentPet.happinessLevel)
            foodLvlLabel.text = String(currentPet.foodLevel)
            petImg.image = UIImage(named:"fish.png")
            let fishColor = UIColor(red: 0.8157, green: 0.4118, blue: 0.8784, alpha: 1.0)
            background.backgroundColor = fishColor
            happyLvl.color = fishColor
            foodLvl.color = fishColor
            happyLvl.animateValue(to: CGFloat(currentPet.happinessLevel)/10)
            foodLvl.animateValue(to: CGFloat(currentPet.foodLevel)/10)
            if (currentPet.foodLevel > 3 && currentPet.happinessLevel > 3)
            {
               fishHealth = 1
            }
            else
            {
               fishHealth = 0
            }
           
        default:
            currentPet = pet(petType: .dog,happinessLevel: 5,foodLevel: 5)
            happyLvlLabel.text = String(currentPet.happinessLevel)
            foodLvlLabel.text = String(currentPet.foodLevel)
            petImg.image = UIImage(named:"dog.png")
            let dogColor = UIColor(red: 0.949, green: 0.1412, blue: 0.2902, alpha: 1.0)
            background.backgroundColor = dogColor
            happyLvl.color = dogColor
            foodLvl.color = dogColor
            happyLvl.animateValue(to: CGFloat(currentPet.happinessLevel)/10)
            foodLvl.animateValue(to: CGFloat(currentPet.foodLevel)/10)
            if (currentPet.foodLevel > 3 && currentPet.happinessLevel > 3)
            {
                dogHealth = 1
            }
            else
            {
                dogHealth = 0
            }
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switchPets(petSwitcher)
        let vc = segue.destination as! tblViewController
        vc.dogHlth = dogHealth
        vc.catHlth = catHealth
        vc.birdHlth = birdHealth
        vc.bunnyHlth = bunnyHealth
        vc.fishHlth = fishHealth
        vc.currentPet_tbl = currentPet
        //print(dog)
        
    }
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view
        switchPets(petSwitcher)
       let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        leftSwipe.direction = .left
        view.addGestureRecognizer(leftSwipe)
    }
    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer)
    {
        
        if (sender.direction == .left)
        {
            print("Swipe Left")
            performSegue(withIdentifier: "summaryView", sender: self)
            
        }
        
    }
}
    

//



    


