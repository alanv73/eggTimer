//
//  ViewController.swift
//  NavBar
//
//  Created by Alan Van Art on 12/16/19.
//  Copyright © 2019 Alan Van Art. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var counter:Int = 210
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func pauseBtn(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func addToCounter(_ sender: Any) {
        // Increase timer counter by 10
        if counter <= 200 {
            counter = counter + 10
            
            setLabelText()
        }
    }
    
    @IBAction func subtractFromCounter(_ sender: Any) {
        // Decrease timer counter by 10
        if counter >= 10 {
            counter = counter - 10
            
            setLabelText()
        }
    }
    
    @IBAction func resetCounter(_ sender: Any) {
        // Reset timer counter to 210
        
        counter = 210
        
        setLabelText()
    }
    
    @objc func processTimer() {
        if counter > 0 {
            counter -= 1
        
            setLabelText()
        } else {
            timer.invalidate()
        }
    }
    
    func setLabelText() {
        counterLabel.text = String(counter)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}

