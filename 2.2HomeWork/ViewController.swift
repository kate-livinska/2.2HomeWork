//
//  ViewController.swift
//  2.2HomeWork
//
//  Created by Ekaterina Livinska on 15.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var colorViewRed: CGFloat = 0.0
    var colorViewGreen: CGFloat = 0.0
    var colorViewBlue: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 30
        colorView.backgroundColor = .black
        setSliderValue(for: redSlider, greenSlider, blueSlider)
        setColor(for: redSlider, greenSlider, blueSlider)
       
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        
        switch sender.tag {
        case 1:
            redLabel.text = String(Int(sender.value))
            colorViewRed = CGFloat(sender.value)
        case 2:
            greenLabel.text = String(Int(sender.value))
            colorViewGreen = CGFloat(sender.value)
        case 3:
            blueLabel.text = String(Int(sender.value))
            colorViewBlue = CGFloat(sender.value)
        default: break
        }
        setColorViewBackground()
        
    }
    
    func setColorViewBackground() {
        colorView.backgroundColor = UIColor(red: colorViewRed/255,
                                            green: colorViewGreen/255,
                                            blue: colorViewBlue/255,
                                            alpha: 1)
    }
    
    
    func setSliderValue(for sliders: UISlider...) {
        for slider in sliders {
            slider.value = 0
            slider.minimumValue = 0
            slider.maximumValue = 255
        }
    }
    
    func setColor(for sliders: UISlider...) {
        for slider in sliders {
            switch slider.tag {
            case 1:
                slider.minimumTrackTintColor = .red
                slider.thumbTintColor = .red
            case 2:
                slider.minimumTrackTintColor = .green
                slider.thumbTintColor = .green
            case 3:
                slider.minimumTrackTintColor = .blue
                slider.thumbTintColor = .blue
            default: break
            }
        }
    }
    
    
}


