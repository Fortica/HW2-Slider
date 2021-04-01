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
    
    @IBOutlet var secondView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderRed.minimumTrackTintColor = .red

    }


}

