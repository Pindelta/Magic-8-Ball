//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Osmani Perez on 8/29/19.
//  Copyright © 2019 Osmani Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var eightBallImage: UIImageView!
    @IBOutlet weak var shakeButton: UIButton!
    
    let answers = ["Ball1","Ball2","Ball3","Ball4","Ball5","Ball6","Ball7","Ball8"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shakeButton.layer.cornerRadius = 10
        shakeButton.clipsToBounds = true
        updateAnswer()
    }
    
    func updateAnswer(){
        let index = Int.random(in: 0 ... 7)
        eightBallImage.image = UIImage.init(named: answers[index])
    }
    
    @IBAction func shakeButtonPressed(_ sender: UIButton) {
        updateAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateAnswer()
    }
}

