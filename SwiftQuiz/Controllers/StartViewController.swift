//
//  ViewController.swift
//  SwiftQuiz
//
//  Created by Aleksandr Morozov on 30.04.2022.
//

import UIKit

class StartViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var appImage: UIImageView!
    @IBOutlet weak var rightCatImage: UIImageView!
    @IBOutlet weak var leftCatImage: UIImageView!
    @IBOutlet weak var topCatImage: UIImageView!
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.addShadowView()
        titleLabel.alpha = 0
        subtitleLabel.alpha = 0
        appImage.alpha = 0
        leftCatImage.alpha = 0
        rightCatImage.alpha = 0
        topCatImage.alpha = 0
    }
    //MARK: - Animation
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, animations: {
            self.appImage.alpha = 1
        }) {(true) in
            UIView.animate(withDuration: 0.5, animations: {
                self.titleLabel.alpha = 1
            }) {(true) in
                UIView.animate(withDuration: 0.5, animations: {
                    self.subtitleLabel.alpha = 1
                }) {(true) in
                    UIView.animate(withDuration: 1, delay: 1, animations: {
                        self.leftCatImage.alpha = 1
                    }) {(true) in
                        UIView.animate(withDuration: 1, delay: 3, animations: {
                            self.leftCatImage.alpha = 0
                        }) {(true) in
                            UIView.animate(withDuration: 1, delay: 3, animations: {
                                self.rightCatImage.alpha = 1
                            }) {(true) in
                                UIView.animate(withDuration: 1, delay: 3, animations: {
                                    self.rightCatImage.alpha = 0
                                }) {(true) in
                                    UIView.animate(withDuration: 1, delay: 3, animations: {
                                        self.topCatImage.alpha = 1
                                    }) {(true) in
                                        UIView.animate(withDuration: 1, delay: 3, animations: {
                                            self.topCatImage.alpha = 0
                                        }, completion: { (true) in
                                        })
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    //MARK: - IBActions
    @IBAction func playButtonAction(_ sender: UIButton) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

