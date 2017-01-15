//
//  ViewController.swift
//  Miracle Pills
//
//  Created by Carlos on 15/1/17.
//  Copyright © 2017 Chichiri Games. All rights reserved.
//

import UIKit

class ViewController2: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func volverHome(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "home") as! ViewController
        self.present(vc, animated: true, completion: nil)
    }
}

