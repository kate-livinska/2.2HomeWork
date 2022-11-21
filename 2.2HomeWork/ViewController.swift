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
        
        //MARK: red slider
        setSliderValue(slider: redSlider)
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        redLabel.text = String(redSlider.value)
        
        //MARK: green slider
        setSliderValue(slider: greenSlider)
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        greenLabel.text = String(greenSlider.value)
        
        //MARK: blue slider
        setSliderValue(slider: blueSlider)
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
        blueLabel.text = String(blueSlider.value)
        
        
    }
    
    @IBAction func redSliderAction(_ sender: Any) {
        redLabel.text = String(Int(redSlider.value))
        colorViewRed = CGFloat(redSlider.value)
        setColorViewBackground()
    }
    
    @IBAction func greenSliderAction(_ sender: Any) {
        greenLabel.text = String(Int(greenSlider.value))
        colorViewGreen = CGFloat(greenSlider.value)
        setColorViewBackground()
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        blueLabel.text = String(Int(blueSlider.value))
        colorViewBlue = CGFloat(blueSlider.value)
        setColorViewBackground()
    }
    
    func setColorViewBackground() {
        colorView.backgroundColor = UIColor(red: colorViewRed/255,
                                            green: colorViewGreen/255,
                                            blue: colorViewBlue/255,
                                            alpha: 1)
    }
    
    func setSliderValue(slider: UISlider) {
        slider.value = 0
        slider.minimumValue = 0
        slider.maximumValue = 255
    }
    
    
}


