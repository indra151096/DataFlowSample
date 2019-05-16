//
//  ViewController.swift
//  DataFlowSample
//
//  Created by Indra Sumawi on 16/05/19.
//  Copyright © 2019 Indra Sumawi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {//bisa gini, tapi code not readeble UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self //view controller kita
        phoneTextField.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func registerButton(_ sender: Any) {
        if nameTextField.text == "" || phoneTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "All text field required", preferredStyle: .alert)
            
            let action = UIAlertAction(title: "OK", style: .default) { (alertAction) in
                alert.dismiss(animated: true, completion: nil)
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
        else {
            performSegue(withIdentifier: "toConfirmPage", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ConfirmViewController {
            destination.nameText = nameTextField.text
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField == nameTextField) {
            //set focus to phone text field
            phoneTextField.becomeFirstResponder()
        }
        else if (textField == phoneTextField) {
            //bisa ini
            textField.resignFirstResponder()
            //atau ini
           // view.endEditing(true)
        }
        return true
    }
    
    /*func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
    }*/
}

