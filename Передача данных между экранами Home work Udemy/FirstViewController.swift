//
//  FirstViewController.swift
//  Передача данных между экранами Home work Udemy
//
//  Created by Ihor on 23.01.2023.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var valueLabel1: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let value = valueLabel1{
            label.text = "Score: \(Int(value))"
        }else{
            label.text = "Last score:"
        }
       
    }
    @IBAction func backToFirstScreen(_ segue: UIStoryboardSegue){
        guard let secondVC = segue.source as? SecondViewController else {return}
        label.text = "Score: \(secondVC.valueLabel)"
    }
    @IBAction func backFromThird(_ segue: UIStoryboardSegue){
        guard let thirdVC = segue.source as? ThirdViewController else {
            return
        }
        label.text = "Last score: \(thirdVC.scoreValue ?? 007)"
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showSecondScreen" else {return}
        guard let destVC = segue.source as? SecondViewController else {return}
        destVC.valueLabelText()
}
}
