//
//  ViewController.swift
//  MiraclePills
//
//  Created by Eugenio Contreras on 2/28/19.
//  Copyright © 2019 Eugenio Contreras. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let states = ["New York", "Alabama", "Utah", "California", "Texas"]

    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    
    }
    
    
    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden = false
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count // how many rows we are going to have
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row] // the row variable is a int from the func behind
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControl.State.normal)
        statePicker.isHidden = true
    }
    
    


}

