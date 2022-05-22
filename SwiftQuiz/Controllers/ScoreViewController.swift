//
//  ScoreViewController.swift
//  SwiftQuiz
//
//  Created by Aleksandr Morozov on 02.05.2022.
//

import UIKit
import SAConfettiView

class ScoreViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var backgroundView: UIImageView!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    //MARK: - Variables
    var result = 0
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        playAgainButton.addShadowView()
        shareButton.addShadowView()
        scoreLabel.text = "\(result)"
        
        //MARK: - SAConfettiView
        let confettiView = SAConfettiView(frame: self.view.bounds)
        confettiView.type = .Star
        backgroundView.addSubview(confettiView)
        confettiView.startConfetti()
    }
    //MARK: - IBActions
    @IBAction func shareButtonPressed(_ sender: Any) {
        let activityController = UIActivityViewController(activityItems: ["I got \(result)/20 in Swifty Quiz! Check it out!\nhttps://apps.apple.com/us/app/swifty-quiz-app/id1624964426"], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") else {return}
        self.navigationController?.pushViewController(vc, animated: true)
//        navigationController?.popToRootViewController(animated: true)
    }
}
