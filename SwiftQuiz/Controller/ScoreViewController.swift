//
//  ScoreViewController.swift
//  SwiftQuiz
//
//  Created by Aleksandr Morozov on 02.05.2022.
//

import UIKit

class ScoreViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(result)"
    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
