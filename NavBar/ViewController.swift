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
    var seconds:Int = 210
    
    @IBOutlet weak var lblTimer: UILabel!
    
    @IBAction func btnPlay(_ sender: Any) {
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.tickDown), userInfo: nil, repeats: true)
        }
    }
    
    
    @IBAction func btnPause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func btnPlusTen(_ sender: Any) {
        // Increase timer by 10 secs
        if seconds <= 200 {
            seconds = seconds + 10
            
            updateLabel()
        }
    }
    
    @IBAction func btnMinusTen(_ sender: Any) {
        // Decrease timer by 10 secs
        if seconds >= 10 {
            seconds = seconds - 10
            
            updateLabel()
        }
    }
    
    @IBAction func btnReset(_ sender: Any) {
        // Reset timer to 210 (03:30 minutes)
        
        seconds = 210
        
        updateLabel()
    }
    
    @objc func tickDown() {
        if seconds > 0 {
            seconds -= 1
        
            updateLabel()
        } else {
            timer.invalidate()
        }
    }
    
    func updateLabel() {
        let min = seconds / 60
        let sec = seconds % 60
        let minsec = String(format: "%02d:%02d", min, sec)
        lblTimer.text = String(minsec)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
    }

}

