//
//  ViewController.swift
//  TrafficLight
//
//  Created by Denis on 29.01.2020.
//  Copyright © 2020 Denis. All rights reserved.
//

import UIKit

enum CurrentLigth {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    private let ligthIsOff = CGFloat(0.3)
    private let ligthIsOn = CGFloat(1)
    private var currentLight = CurrentLigth.red

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultConfiguration()
    }
    
    private func defaultConfiguration() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        redView.alpha = ligthIsOff
        yellowView.alpha = ligthIsOff
        greenView.alpha = ligthIsOff
        startButton.layer.cornerRadius = 20
    }
    
    private func changeColor() {
        switch currentLight {
        case .red:
            redView.alpha = ligthIsOn
            greenView.alpha = ligthIsOff
            currentLight = .yellow
        case .yellow:
            redView.alpha = ligthIsOff
            yellowView.alpha = ligthIsOn
            currentLight = .green
        case .green:
            yellowView.alpha = ligthIsOff
            greenView.alpha = ligthIsOn
            currentLight = .red
        }
    }
    
    @IBAction func selectNext(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        changeColor()
    }
}
