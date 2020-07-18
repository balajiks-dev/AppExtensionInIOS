//
//  ViewController.swift
//  TodaExtensionTech\
//
//  Created by Balaji Sundaram on 13/07/20.
//  Copyright © 2020 Balaji Sundaram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shareButtonAction(_ sender: Any) {
        welcomeLabel.text = "Welcome"
        let activityViewController = UIActivityViewController(activityItems: [welcomeLabel.text!], applicationActivities: nil)
        present(activityViewController, animated: true, completion: nil)
        
    }
    
}

