//
//  CalculatorViewController.swift
//  Calculator1
//
//  Created by Deven Day on 10/12/20.
//

import UIKit

class CalculatorViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    //MARK: - Properties
    var viewsLaidOut = false
    
    //MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if viewsLaidOut == false {
            setupViews()
            viewsLaidOut = true
        }
    }
    
    //MARK: - Actions
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billTextField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    //MARK: - Helper Functions
    func setupViews() {
        self.view.backgroundColor = .purpleAccent
        tipControl.backgroundColor = .lightGray
        tipLabel.tintColor = .spaceBlack
        totalLabel.tintColor = .spaceBlack
        billTextField.tintColor = .spaceBlack
        billTextField.backgroundColor = .subtleText
        
    }
    
}//END OF CLASS
