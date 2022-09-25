//
//  ViewController.swift
//  SliderHomeTask
//
//  Created by Байсаев Зубайр on 25.09.2022.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet var viewWithColors: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewWithColors.layer.cornerRadius = viewWithColors.frame.height / 5
        setupSliders()
        setupLabels()
    }

    //MARK: IBActions
    
    @IBAction func redSliderAction() {
        setupLabels()
        setupView()
    }
    @IBAction func blueSliderAction() {
        blueSlider.tintColor = .blue
        setupLabels()
        setupView()
    }
    @IBAction func greenSliderAction() {
        greenSlider.tintColor = .green
        setupLabels()
        setupView()
    }
    
    //MARK: Private Methods
    
    private func setupView() {
        viewWithColors.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setupLabels() {
        redValueLabel.text = redSlider.value.formatted()
        greenValueLabel.text = greenSlider.value.formatted()
        blueValueLabel.text = blueSlider.value.formatted()
    }
    
    private func setupSliders() {
        blueSlider.tintColor = .blue
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
        greenSlider.tintColor = .green
        greenSlider.value = 0.5
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        
        redSlider.tintColor = .red
        redSlider.value = 0.5
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
    }
    
}

