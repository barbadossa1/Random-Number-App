//
//  ViewController.swift
//  Random Number App
//
//  Created by VK on 27.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var minNumberLabel: UILabel!
    @IBOutlet var maxNumberLabel: UILabel!
    @IBOutlet var randomNumberLabel: UILabel!
    
    // init model instance
    
    private var randomNumberModel = RandomNumber(minNumber: 0, maxNumber: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minNumberLabel.text = String(randomNumberModel.minNumber)
        maxNumberLabel.text = String(randomNumberModel.maxNumber)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else {return}
        settingsVC.randomNumber = randomNumberModel
    }
    
    @IBAction func getResultBtn() {
        randomNumberLabel.text = String(randomNumberModel.getRandomNumber)
    }
    

}

