//
//  ViewController.swift
//  JustWatch
//
//  Created by SEO on 2020/09/20.
//  Copyright © 2020 SEO. All rights reserved.
//

import UIKit
import Then

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        setupTimer()
    }
    
    func setupTimer() {
        print("setupTimer")
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func update() {
        let date = Date()
        print("update")
        let format = DateFormatter().with {
            $0.dateFormat = "HH:mm:ss"
        }
        timeLabel.text = format.string(from: date)
        
    }


}

