//
//  ViewController.swift
//  TrafficLight
//
//  Created by Anton Akhmedzyanov on 30.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    var counter = 0
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewWillLayoutSubviews()
        startButton.layer.cornerRadius = 10
        
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        
        
        redView.alpha = 0.2
        yellowView.alpha = 0.2
        greenView.alpha = 0.2
            }

    @IBAction func pressStar() {
        startButton.setTitle(redView.alpha == 0.2 ? "Start" : "Next", for: .normal)
        
        counter += 1
        switch counter {
        case 1:
            redView.alpha = 1
        case 2:
            redView.alpha = 0.2
            yellowView.alpha = 1
        case 3:
            yellowView.alpha = 0.2
            greenView.alpha = 1
        default:
            greenView.alpha = 0.2
            counter = 0
            }
        
        
        
        
    }
}

