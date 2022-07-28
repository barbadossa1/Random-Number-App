//
//  ViewController.swift
//  Random Number App
//
//  Created by VK on 27.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var minNumber: UILabel!
    @IBOutlet var maxNumber: UILabel!
    @IBOutlet var randomNumber: UILabel!
    
    @IBOutlet var getResultBtn: UIButton!
    
    // init model instance
    
    private var randomNumberModel = RandomNumber(minNumber: 0, maxNumber: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minNumber.text = String(randomNumberModel.minNumber)
        maxNumber.text = String(randomNumberModel.maxNumber)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else {
            return
        }
        settingsVC.minValue.text = minNumber.text
        settingsVC.maxValue.text = minNumber.text
    }

}

