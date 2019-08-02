//
//  ViewController.swift
//  Lab3_Drawing
//
//  Created by Zayid Oyelami on 7/3/19.
//  Copyright © 2019 Zayid Oyelami. All rights reserved.
// Followed guide from RayWanderlich
//https://www.raywenderlich.com/5895-uikit-drawing-tutorial-how-to-make-a-simple-drawing-app

import UIKit

class ViewController: UIViewController, ColorMixerControllerDelegate {

    @IBOutlet weak var color1: UIButton!
    @IBOutlet weak var color2: UIButton!
    @IBOutlet weak var color3: UIButton!
    @IBOutlet weak var color4: UIButton!
    @IBOutlet weak var color5: UIButton!
    @IBOutlet weak var color6: UIButton!
    @IBOutlet weak var color7: UIButton!
    @IBOutlet weak var newColor8: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var main: UIImageView!
    @IBOutlet weak var temp: UIImageView!
    
    
    // Main Code
    var arrayOfViews: [UIImage] = []
    var lastPoint = CGPoint.zero
    var color = UIColor.black
    var brushWidth: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    var swiped = false

    
    @IBAction func brushSizeChange(_ sender: Any) {
        let brushSize = slider.value
        brushWidth = CGFloat(brushSize)
    }
    
    func drawLine(from fromPoint: CGPoint, to toPoint: CGPoint) {
        UIGraphicsBeginImageContext(view.frame.size)
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        temp.image?.draw(in: view.bounds)
        context.move(to: fromPoint)
        context.addLine(to: toPoint)
        context.setLineCap(.round)
        context.setBlendMode(.normal)
        context.setLineWidth(brushWidth)
        context.setStrokeColor(color.cgColor)
        context.strokePath()
        temp.image = UIGraphicsGetImageFromCurrentImageContext()
        temp.alpha = opacity
        UIGraphicsEndImageContext()
    }
    @IBAction func undo(_ sender: Any) {
        if arrayOfViews.count >= 1{
            print(arrayOfViews)
            UIGraphicsBeginImageContext(main.frame.size)
            main.image?.draw(in: view.bounds, blendMode: .normal, alpha: 1.0)
            arrayOfViews=arrayOfViews.dropLast()
            main.image = arrayOfViews.last
            UIGraphicsEndImageContext()
            temp.image = nil
        }
        else{
            main.image = nil
            temp.image = nil
        }
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        swiped = false
        lastPoint = touch.location(in: view)
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        swiped = true
        let currentPoint = touch.location(in: view)
        drawLine(from: lastPoint, to: currentPoint)
        lastPoint = currentPoint
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if swiped == false {
            drawLine(from: lastPoint, to: lastPoint)
        }
        UIGraphicsBeginImageContext(main.frame.size)
        main.image?.draw(in: view.bounds, blendMode: .normal, alpha: 1.0)
        temp?.image?.draw(in: view.bounds, blendMode: .normal, alpha: opacity)
        main.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        arrayOfViews.append((main.image!))
        temp.image = nil
    }
    
    // Functions
    @IBAction func colorPicked(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        color = button.backgroundColor!
    }
    @IBAction func share(_ sender: Any) {
        guard let image = main.image else {
            return
        }
        let activity = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(activity, animated: true)
    }
    @IBAction func clear(_ sender: Any) {
        main.image = nil
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        color1.backgroundColor = UIColor.red
        color2.backgroundColor = UIColor.orange
        color3.backgroundColor = UIColor.yellow
        color4.backgroundColor = UIColor.green
        color5.backgroundColor = UIColor.blue
        color6.backgroundColor = UIColor.purple
        color7.backgroundColor = UIColor.magenta
        newColor8.backgroundColor=UIColor.white
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "addNewColor") {
            let controller = segue.destination as! ColorMixerController
            controller.delegate = self
        }
    }

    func setNewColor(newColor: UIColor) {
        self.color7.backgroundColor = newColor
    }
}

