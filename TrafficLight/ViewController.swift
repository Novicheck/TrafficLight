//
//  ViewController.swift
//  TrafficLight
//
//  Created by Denis on 29.01.2020.
//  Copyright © 2020 Denis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultConfiguration()
        
    }
    
    private func defaultConfiguration() {
        redView.alpha = 0.3
        redView.layer.cornerRadius = 60
        yellowView.alpha = 0.3
        yellowView.layer.cornerRadius = 60
        greenView.alpha = 0.3
        greenView.layer.cornerRadius = 60
        startButton.layer.cornerRadius = 20
    }
    
    private func changeColor() {
        if redView.alpha != 1 && yellowView.alpha != 1 && greenView.alpha != 1{
            redView.alpha = 1
        } else if redView.alpha != 0.3 && yellowView.alpha != 1 && greenView.alpha != 1{
            yellowView.alpha = 1
            redView.alpha = 0.3
        } else if redView.alpha != 1 && yellowView.alpha != 0.3 && greenView.alpha != 1{
            greenView.alpha = 1
            yellowView.alpha = 0.3
        } else if redView.alpha != 1 && yellowView.alpha != 1 && greenView.alpha != 0.3{
            redView.alpha = 1
            greenView.alpha = 0.3
        }
    }
    
    @IBAction func selectNext(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        changeColor()
    }
}
