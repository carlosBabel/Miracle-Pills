//
//  ViewController.swift
//  Miracle Pills
//
//  Created by Carlos on 15/1/17.
//  Copyright © 2017 Chichiri Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var paisPicker: UIPickerView!
    @IBOutlet weak var paisPickerBoton: UIButton!
    let paises = ["España","Portugal","Francia","Italia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paisPicker.dataSource = self
        paisPicker.delegate = self
        
        self.view.backgroundColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func presionarBotonPaisPicker(_ sender: Any) {
        paisPicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return paises.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return paises[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        paisPickerBoton.setTitle(paises[row], for: UIControlState.normal)
        paisPicker.isHidden = true
    }

}

