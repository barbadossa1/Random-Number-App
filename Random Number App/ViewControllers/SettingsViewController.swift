//
//  SettingsViewController.swift
//  Random Number App
//
//  Created by VK on 27.07.2022.
//

import UIKit

protocol SettingsVCDelegate: AnyObject {
    func setMinMaxValues()
}

class SettingsViewController: UIViewController {

    @IBOutlet var minValue: UITextField!
    @IBOutlet var maxValue: UITextField!
    
    var randomNumber: RandomNumber! // нафига хардкодим?
    var delegate: SettingsViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minValue.text = String(randomNumber.minNumber)
        maxValue.text = String(randomNumber.maxNumber)
        
    }
    
    @IBAction func cancelBtnPressed() {
        dismiss(animated: true)
    }
    
    
    @IBAction func saveBtnPressed(_ sender: Any) {
        view.endEditing(true)
        
    }
    
    
    
}
