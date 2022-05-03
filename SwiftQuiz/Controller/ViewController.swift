//
//  ViewController.swift
//  SwiftQuiz
//
//  Created by Aleksandr Morozov on 30.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func playButtonAction(_ sender: UIButton) {
        
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") else {return}
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
