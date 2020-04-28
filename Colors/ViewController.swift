//
//  ViewController.swift
//  Colors
//
//  Created by Egor on 26/04/2020.
//  Copyright © 2020 Egor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    // MARK: - Actions
    
    @IBAction func button(_ sender: UIButton) {
        self.textField()
    }
    
    // MARK: - Methods
    func textField() {
        guard let red = firstTextField.text, let firstValue = Int(red), (0...255).contains(firstValue) else {
            showInputAlert()
            return
        }
        guard let green = secondTextField.text, let secondValue = Int(green), (0...255).contains(secondValue) else {
            showInputAlert()
            return
        }
        guard let blue = thirdTextField.text, let thirdValue = Int(blue), (0...255).contains(thirdValue) else {
            showInputAlert()
            return
        }
        
        self.colorView.backgroundColor = UIColor(red: CGFloat(firstValue / 255), green: CGFloat(secondValue / 255), blue: CGFloat(thirdValue / 255), alpha: 1)
        
    }
    
    func showInputAlert() {
        let alert = UIAlertController(title: "Error", message: "Check the correctness of the fields", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
