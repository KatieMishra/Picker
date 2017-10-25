//
//  ViewController.swift
//  pickerExample
//
//  Created by Katie Mishra on 10/25/17.
//  Copyright © 2017 ATCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var picker: UIPickerView!
    let colors = ["red", "yellow", "green", "blue"]
    let shapes = ["circle", "square", "triangle"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return colors.count
        } else {
            return shapes.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return colors[row]
        } else {
            return shapes[row]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sillyButton(_ sender: UIButton) {
        sender.setTitle(colors[picker.selectedRow(inComponent: 0)], for: UIControlState.normal)
    }
    
}

