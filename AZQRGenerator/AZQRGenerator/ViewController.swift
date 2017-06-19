//
//  ViewController.swift
//  AZQRGenerator
//
//  Created by Ali on 6/19/17.
//  Copyright © 2017 Ali Azadeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var imgViewQR: UIImageView!
    @IBOutlet weak var txtInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnGeneratePressed(_ sender: UIButton) {
        self.txtInput.resignFirstResponder()
        loadQR()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
     self.txtInput.resignFirstResponder()
        loadQR()
    return false
    }
    
    private func loadQR(){
        self.imgViewQR.loadQRCode(inputString: self.txtInput.text!)
    }
    
}

