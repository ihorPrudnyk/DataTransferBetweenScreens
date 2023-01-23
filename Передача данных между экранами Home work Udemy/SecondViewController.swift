//
//  SecondViewController.swift
//  Передача данных между экранами Home work Udemy
//
//  Created by Ihor on 23.01.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var valueLabel = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Score:"
    }
    func valueLabelText(){
        valueLabel += 1
        label.text = "Score: \(valueLabel)"
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        
    }
    
    @IBAction func greenTapPressed(_ sender: Any) {
        valueLabelText()
    }
    @IBAction func blueTapPressed(_ sender: Any) {
        valueLabelText()
    }
    @IBAction func redTapPressed(_ sender: Any) {
        valueLabelText()
    }
    
    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showThirdScreen" else {return}
            guard let destVC = segue.destination as? ThirdViewController else {return}
        destVC.scoreValue = valueLabel
    }
    
}
