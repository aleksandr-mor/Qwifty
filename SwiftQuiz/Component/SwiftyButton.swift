//
//  SwiftyButton.swift
//  SwiftQuiz
//
//  Created by Aleksandr Morozov on 18.05.2022.
//

import UIKit

class SwiftyButton: UIButton {

    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = true
      //  restoreTheButton()
        self.backgroundColor = UIColor(named: "ButtonColor")
        self.titleLabel?.textAlignment = NSTextAlignment.center
    }
    
    
    func updateEnableButtonState()  {
        self.isEnabled = true
        self.setTitleColor(UIColor.white, for: .normal)
        self.backgroundColor = UIColor.orangeColor
    }
    
    func restoreTheButton()  {
        self.isEnabled = true
        self.setTitleColor(UIColor.orangeColor, for: .normal)
        self.backgroundColor = UIColor(named: "ButtonColor")
        self.titleLabel?.textAlignment = NSTextAlignment.center
        
    }

}
