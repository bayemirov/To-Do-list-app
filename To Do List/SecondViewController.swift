//
//  SecondViewController.swift
//  To Do List
//
//  Created by Beket on 01.07.17.
//  Copyright © 2017 Beket Bayemirov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

   
    @IBOutlet weak var itemTextField: UITextField!
    
   
    @IBAction func addItem(_ sender: UIButton) {
        if itemTextField.text! == "" {
            return
        }
        let itemInStorage = UserDefaults.standard.object(forKey: "items")
        var items: [String]
        if let checker = itemInStorage as? [String] {
            items = checker
            items.append(itemTextField.text!)
        }
        else {
            items = [itemTextField.text!]
        }
        UserDefaults.standard.set(items, forKey: "items")
        itemTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

