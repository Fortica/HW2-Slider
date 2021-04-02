//
//  ViewController.swift
//  HW2 Slider
//
//  Created by Larisa on 01.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    @IBOutlet var viewSecondary: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewSecondary.layer.cornerRadius = 10
        
        // Slider
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        sliderBlue.minimumTrackTintColor = .blue
        
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        
    }

    @IBAction func changeValueOfLabel(_ slider: UISlider) {
        //let sliderValue = CGFloat(slider.value)
        
        switch slider {
        case sliderRed:
        labelRed.text = String(format: "%.2f", sliderRed.value)
            changeColorOfView()
        case sliderGreen:
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
            changeColorOfView()
        default:
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
            changeColorOfView()
        }
        
    }
    private func changeColorOfView() {
        viewSecondary.backgroundColor = .init(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
}
}


