//
//  ScoreViewController.swift
//  SwiftQuiz
//
//  Created by Aleksandr Morozov on 02.05.2022.
//

import UIKit
import SAConfettiView

class ScoreViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var backgroundView: UIImageView!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(result)"
        
        let confettiView = SAConfettiView(frame: self.view.bounds)
        confettiView.type = .Star
        
        backgroundView.addSubview(confettiView)
        confettiView.startConfetti()
    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}

