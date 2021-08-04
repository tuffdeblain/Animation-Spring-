//
//  ViewController.swift
//  KudinovSA_HW2.9
//
//  Created by Сергей Кудинов on 05.08.2021.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var presetView: SpringView!
    
    var iterator = 0
    let anims = Animation.getAnim()

    @IBAction func presetButton(_ sender: UIButton) {
        if iterator < anims.count {
            presetView.animation = anims[iterator].presets
            presetView.curve = anims[iterator].curves
            presetView.force = 2
            presetView.duration = 1
            presetView.delay = 0.3
            
            presetView.animate()
            
            presetLabel.text = anims[iterator].presets
            curveLabel.text = anims[iterator].curves
            
            if iterator < anims.count - 1 {
                sender.titleLabel?.text = "Next \(anims[iterator + 1])"
            } else {
                sender.titleLabel?.text = "Start"
            }
            
            iterator += 1
        } else {
            iterator = 0
        }
        
    }
}

