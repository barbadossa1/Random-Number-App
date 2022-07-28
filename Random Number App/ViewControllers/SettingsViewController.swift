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
    
    
    @IBAction func cancelBtnPressed() {
        dismiss(animated: true)
    }
}
