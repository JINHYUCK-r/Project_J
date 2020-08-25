//
//  ViewController.swift
//  ViewProgramingCode
//
//  Created by 류진혁 on 2020/08/25.
//  Copyright © 2020 Jin-Hyuck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - 객체생성
    let centerLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    //MARK: - 이니셜라이즈

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(centerLabel)
        setCustomLabel(centerLabel)
    }
 //MARK: - 꾸며주기
    func setCustomLabel(_ randomLabel:UILabel){
        randomLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5) .isActive = true
        randomLabel.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1) .isActive = true
        randomLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive=true
        randomLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        randomLabel.backgroundColor = UIColor.systemBlue
        randomLabel.text = "안녕"
        randomLabel.textColor = UIColor.white
        randomLabel.textAlignment = .center
        randomLabel.layer.cornerRadius = 20
        randomLabel.layer.masksToBounds = true
    }

}

