//
//  ViewController.swift
//  Lesson 2.04
//
//  Created by Ларин Василий on 25.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rectangleView: UIView!
    
    @IBOutlet weak var redValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redValueLabel.text = String(redSlider.value)
        rectangleView.layer.cornerRadius = 20
    }
    
    @IBAction func sliderColorChange(_ sender: UISlider) {
        redValueLabel.text = String(format: "%0.2f", redSlider.value)
        changeColor()
    }
    
    @IBAction func sliderGreenColor(_ sender: Any) {
        changeColor()
    }
    
    @IBAction func sliderBlueColor(_ sender: Any) {
        changeColor()
    }
    
    private func changeColor() {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        rectangleView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
    }
}

