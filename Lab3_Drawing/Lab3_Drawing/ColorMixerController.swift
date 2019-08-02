//
//  ColorMixerController.swift
//  Lab3_Drawing
//
//  Created by Zayid Oyelami on 7/4/19.
//  Copyright © 2019 Zayid Oyelami. All rights reserved.
//

import UIKit
protocol ColorMixerControllerDelegate : NSObjectProtocol{
    func setNewColor(newColor: UIColor)
}
class ColorMixerController: UIViewController {
    weak var delegate : ColorMixerControllerDelegate?
    
    
    @IBOutlet weak var previewColor: UIImageView!
    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBAction func colorChange(_ sender: Any) {
        let newColor = UIColor.init(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: CGFloat(opacitySlider.value))
        previewColor.backgroundColor = newColor
    }
   
    @IBAction func addColor(_ sender: Any) {
       delegate?.setNewColor(newColor: previewColor.backgroundColor!)
        dismiss(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

}
