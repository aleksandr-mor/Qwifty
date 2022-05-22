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
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.addShadowView()
    }
    
    //MARK: - IBActions
    @IBAction func playButtonAction(_ sender: UIButton) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

