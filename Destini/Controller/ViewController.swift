//
//  ViewController.swift
//  Destini
//
//  Created by Barry on 4/8/20.
//  Copyright © 2020 Barry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var firstChoiceBtn: UIButton!
    @IBOutlet weak var secondChoiceBtn: UIButton!
    
    var storyBrain = StoryBrain();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI();
        
    }

   
    @IBAction func selectedBtnPressed(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!);
        
        updateUI();
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getStoryTitle();
        
        firstChoiceBtn.setTitle(storyBrain.getTextChoice1(),for: .normal);
        
        secondChoiceBtn.setTitle(storyBrain.getTextChoice2(),for: .normal);
    }
}

