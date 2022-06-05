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
    let reviewService = ReviewService.shared
    let deadline = DispatchTime.now() + .seconds(2)
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        playAgainButton.addShadowView()
        shareButton.addShadowView()
        scoreLabel.text = "\(result)"
        DispatchQueue.main.asyncAfter(deadline: deadline) { [weak self] in
            self?.reviewService.requestReview()
            self?.navigationItem.setHidesBackButton(true, animated: true)
        }
        
        //MARK: - SAConfettiView
        let confettiView = SAConfettiView(frame: self.view.bounds)
        confettiView.type = .Star
        backgroundView.addSubview(confettiView)
        confettiView.startConfetti()
    }
    //MARK: - IBActions
    @IBAction func shareButtonPressed(_ sender: Any) {
        let activityController = UIActivityViewController(activityItems: ["I got \(result)/20 in Qwifty! Check it out!\nhttps://apps.apple.com/us/app/qwifty/id1626605129"], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
