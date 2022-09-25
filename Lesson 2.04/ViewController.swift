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
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redValueLabel.text = String(redSlider.value)
        greenValueLabel.text = String(greenSlider.value)
        blueValueLabel.text = String(blueSlider.value)
        
        rectangleView.layer.cornerRadius = 20
    }
    
    @IBAction func sliderRedColor(_ sender: UISlider) {
        redValueLabel.text = String(format: "%0.2f", redSlider.value)
        changeColor()
    }
    
    @IBAction func sliderGreenColor(_ sender: UISlider) {
        greenValueLabel.text = String(format: "%0.2f", greenSlider.value)
        changeColor()
    }
    
    @IBAction func sliderBlueColor(_ sender: UISlider) {
        blueValueLabel.text = String(format: "%0.2f", blueSlider.value)
        changeColor()
    }
    
    private func changeColor() {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        rectangleView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
    }
}

