//
//  ViewController.swift
//  FinalDestination
//
//  Created by 류진혁 on 2020/07/19.
//  Copyright © 2020 Jin-Hyuck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
        var storyBrain = StoryBrain()

    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
       updateUI()
    }
    
    @IBAction func choiceSelected(_ sender: UIButton) {
        storyBrain.getNextStory(userChoice : sender.currentTitle ?? "")
        updateUI()
        
    }
    
    func updateUI(){
        storyText.text = storyBrain.goToNextTitle(sNumber: storyBrain.storyNumber)
        button1.setTitle(storyBrain.goToNextChoice1(sNumber: storyBrain.storyNumber), for: .normal)
        button2.setTitle(storyBrain.goToNextChoice2(sNumber: storyBrain.storyNumber), for: .normal)
    }
    
}

