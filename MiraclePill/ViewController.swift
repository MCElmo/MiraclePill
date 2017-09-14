//
//  ViewController.swift
//  MiraclePill
//
//  Created by Elom Setse on 9/13/17.
//  Copyright © 2017 CyberSeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var phoneNumberField: UITextField!
    
    @IBOutlet weak var zipCodeField: UITextField!
    @IBOutlet weak var zipCode: UITextField!
        let states = ["Alabama",
                      "Alaska",
                      "Arizona",
                      "Arkansas",
                      "California",
                      "Colorado",
                      "Connecticut",
                      "Delaware",
                      "Florida",
                      "Georgia",
                      "Hawaii",
                      "Idaho",
                      "Illinois",
                      "Indiana",
                      "Iowa",
                      "Kansas",
                      "Kentucky",
                      "Louisiana",
                      "Maine",
                      "Maryland",
                      "Massachusetts",
                      "Michigan",
                      "Minnesota",
                      "Mississippi",
                      "Missouri",
                      "Montana",
                      "Nebraska",
                      "Nevada",
                      "New Hampshire",
                      "New Jersey",
                      "New Mexico",
                      "New York",
                      "North Carolina",
                      "North Dakota",
                      "Ohio",
                      "Oklahoma",
                      "Oregon",
                      "Pennsylvania",
                      "Rhode Island",
                      "South Carolina",
                      "South Dakota",
                      "Tennessee",
                      "Texas",
                      "Utah",
                      "Vermont",
                      "Virginia",
                      "Washington",
                      "West Virginia",
                      "Wisconsin",
                      "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        zipCode.isHidden = true
        zipCodeField.isHidden = true
        phoneNumber.isHidden = true
        phoneNumberField.isHidden = true
        
    }
    
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        zipCode.isHidden = false
        zipCodeField.isHidden = false
        phoneNumber.isHidden = false
        phoneNumberField.isHidden = false
    }









}

