//
//  ViewController.swift
//  Traffic lights
//
//  Created by Михаил Иванов on 13.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    var lightColor = "red"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 90
        yellowLight.layer.cornerRadius = 90
        greenLight.layer.cornerRadius = 90
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    @IBAction func changeLightColors() {
        
        if lightColor == "red" {
            greenLight.alpha = 0.3
            redLight.alpha = 1
            lightColor = "yellow"
        } else if lightColor == "yellow" {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            lightColor = ""
        } else {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            lightColor = "red"
        }
        
        startButton.setTitle("Next", for: .normal)
    }
    
}

