import Foundation
class pet{
    // Data
    var happinessLevel: Int
    var foodLevel: Int
    var petType: animal
    
    enum animal: String {
        case dog,cat,bird,bunny,fish
    }
    
    func play() {
        happinessLevel += 1
        foodLevel -= 1
        if happinessLevel > 10 {
            happinessLevel = 10
        }
        if foodLevel < 0 {
            foodLevel = 0
        }
    }
    
    func feed() {
        happinessLevel -= 1
        foodLevel += 1
        if happinessLevel < 0 {
            happinessLevel = 0
        }
        if foodLevel > 10 {
            foodLevel = 10
        }
    }
    
    //Initialize
    init(petType: animal, happinessLevel: Int, foodLevel: Int) {
        self.petType = petType
        self.happinessLevel = 5
        self.foodLevel = 5
        }
    
}
