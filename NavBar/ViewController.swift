//
//  ViewController.swift
//  NavBar
//
//  Created by Alan Van Art on 12/16/19.
//  Copyright © 2019 Alan Van Art. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func startButton(_ sender: Any) {
        startTimer()
    }
    
    func startTimer() {
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            print("Timer fired!")
        }
    }
    
}

