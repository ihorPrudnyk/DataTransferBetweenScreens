//
//  SecondViewController.swift
//  Передача данных между экранами Home work Udemy
//
//  Created by Ihor on 23.01.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    var valueLabel = 0
    var timer: Timer?
    var counter = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        allDefaultValue()
        timerStart()
        hidenView()
      
    }
    
    func hidenView(){
        if counter >= 1{
            greenView.isHidden = true
        } else{
            greenView.isHidden = false
        }
    }
    
    func allDefaultValue(){
        label.text = "Score:"
        counterLabel.text = "Counter value: 0"
    }
    
    @objc func timerTickHandler(){
            counter -= 1
        if counter <= 0{
            timer?.invalidate()
            timer = nil
        }
         counterLabel.text = "Counter value: \(counter)"
         nextVC()
        }
    
    func nextVC(){
        if counter == 0{
            self.performSegue(withIdentifier: "VCsegue", sender: self)
        }else{
            return
        }
    }
    
    func timerStart(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerTickHandler) , userInfo: nil, repeats: true)
       
    }

    func valueLabelText(){
        valueLabel += 1
        label.text = "Score: \(valueLabel)"
    }
    
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        
    }
    
    @IBAction func greenTapPressed(_ sender: Any) {
        greenView.isHidden = false
        blueView.isHidden = false
        redView.isHidden = true
        valueLabelText()
    }
    @IBAction func blueTapPressed(_ sender: Any) {
        greenView.isHidden = false
        blueView.isHidden = true
        redView.isHidden = true
        valueLabelText()
    }
    @IBAction func redTapPressed(_ sender: Any) {
        greenView.isHidden = false
        blueView.isHidden = true
        redView.isHidden = false
        valueLabelText()
    }
    
    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "VCsegue" else {return}
            guard let destVC = segue.destination as? ThirdViewController else {return}
        destVC.scoreValue = valueLabel
        
    }
    
}
