//
//  SettingsViewController.swift
//  Random Number App
//
//  Created by VK on 27.07.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minValue: UITextField!
    @IBOutlet var maxValue: UITextField!
    
    var randomNumber: RandomNumber! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func cancelBtnPressed() {
        dismiss(animated: true)
    }
    
    
    @IBAction func saveBtnPressed(_ sender: Any) {
    }
    
    
}
