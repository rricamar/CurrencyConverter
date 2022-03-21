//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Ruben Sopra on 21/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var rateTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var currencySegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        label.text = "Currency Converter";
    }

    @IBAction func convertTapped(_ sender: Any) {
        let rate = Double(rateTextField.text!)!;
        let amount = Double(amountTextField.text!)!;
        let converted = rate * amount;
        
        if currencySegment.selectedSegmentIndex == 0 {
            label.text = "$\(converted)";
        } else {
            label.text = "¥\(converted)";
        }
    }
    
}

