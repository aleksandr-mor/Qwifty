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
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playAgainButton.addShadowView()
        shareButton.addShadowView()
        scoreLabel.text = "\(result)"
        
        let confettiView = SAConfettiView(frame: self.view.bounds)
        confettiView.type = .Star
        
        backgroundView.addSubview(confettiView)
        confettiView.startConfetti()
    }
    
    @IBAction func shareButtonPressed(_ sender: Any) {
        let activityController = UIActivityViewController(activityItems: ["I got \(result)/20 in Swifty Quiz! Check it out!\nhttps://apps.apple.com/ru/app/splito/id1602086746?l=en"], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
