//
//  SettingsViewController.swift
//  Random Number App
//
//  Created by VK on 27.07.2022.
//

import UIKit

protocol SettingsVCDelegate: AnyObject {
    func setMinMaxValues(minValue: Int, maxValue: Int)

}

class SettingsViewController: UIViewController {

    @IBOutlet var minValue: UITextField!
    @IBOutlet var maxValue: UITextField!
    
    var randomNumber = RandomNumber(minNumber: 0, maxNumber: 10)
    weak var delegate: SettingsVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minValue.text = String(randomNumber.minNumber)
        maxValue.text = String(randomNumber.maxNumber)
        
    }
    
    @IBAction func cancelBtnPressed() {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func saveBtnPressed(_ sender: Any) {
        let minValue = Int(minValue.text ?? "0") ?? randomNumber.minNumber
        let maxValue = Int(maxValue.text ?? "0") ?? randomNumber.maxNumber
        delegate?.setMinMaxValues(minValue: minValue, maxValue: maxValue)
        navigationController?.popViewController(animated: true)
    }
    
}
