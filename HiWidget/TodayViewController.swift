//
//  TodayViewController.swift
//  HiWidget
//
//  Created by Balaji Sundaram on 13/07/20.
//  Copyright © 2020 Balaji Sundaram. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var labelOutletr: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        extensionContext?.widgetLargestAvailableDisplayMode = .expanded
        let tap = UITapGestureRecognizer(target: self, action: #selector(TodayViewController.tapFunction))
                                     self.labelOutletr.isUserInteractionEnabled = true
                                     self.labelOutletr.addGestureRecognizer(tap)
        
        // Do any additional setup after loading the view.
    }
    
    @objc func tapFunction(sender:UITapGestureRecognizer) {
        print("tap working")
        let url = URL(string: "sample://1")
        self.extensionContext?.open(url!, completionHandler: {(success) in
         if(!success){
             print("Unable to open the URL as expected!!!")
         }
     })
    }
        
//    @IBAction func buttonAction(_ sender: Any) {
//        print("TAP WORKING")
//        let url = URL(string: "sample://1")
//        self.extensionContext?.open(url!, completionHandler: {(success) in
//            print("Success")
//        })
//    }
    
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
    func widgetActiveDisplayModeDidChange(_ activeDisplayMode: NCWidgetDisplayMode, withMaximumSize maxSize: CGSize) {
        switch activeDisplayMode {
            case .compact:
            preferredContentSize = maxSize
            case .expanded:
            preferredContentSize = maxSize
        }
        
    }
    
}
