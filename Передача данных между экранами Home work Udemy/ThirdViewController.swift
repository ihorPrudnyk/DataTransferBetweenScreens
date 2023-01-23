//
//  ThirdViewController.swift
//  Передача данных между экранами Home work Udemy
//
//  Created by Ihor on 23.01.2023.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var gameOverLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var scoreValue: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameOverLabel.text = "GAME OVER"
        
        if let value = scoreValue{
            scoreLabel.text = "Score: \(value)"
        }else{
            scoreLabel.text = "NONE! you are Fucked up"
        }
    }
    
    @IBAction func menuButtonPressed(_ sender: UIStoryboardSegue) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
