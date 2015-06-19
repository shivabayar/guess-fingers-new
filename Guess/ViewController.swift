//
//  ViewController.swift
//  Guess
//
//  Created by Shivraj on 19/06/15.
//  Copyright (c) 2015 Shivraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func checkIfCountIsCorrect(sender: UIButton) {
        var random = Int(arc4random_uniform(10))
        println(random)
        if random == sender.currentTitle!.toInt() {
            result.text = "Eureka!!"
            result.textColor = UIColor.greenColor()
        } else {
            result.text = "Better luck next time"
            result.textColor = UIColor.redColor()
        }
    }

}

