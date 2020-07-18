//
//  ActionViewController.swift
//  TechAction
//
//  Created by Balaji Sundaram on 13/07/20.
//  Copyright © 2020 Balaji Sundaram. All rights reserved.
//

import UIKit
import MobileCoreServices
import commonframework

class ActionViewController: UIViewController {


    @IBOutlet weak var displayLabelOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Get the item[s] we're handling from the extension context.
        
        // For example, look for an image and place it into an image view.
        // Replace this with something appropriate for the type[s] your extension supports.
        let textItem = extensionContext!.inputItems[0] as! NSExtensionItem
        let textItemProvider = textItem.attachments![0] as! NSItemProvider
        
        if textItemProvider.hasItemConformingToTypeIdentifier(kUTTypeText as String){
            textItemProvider.loadItem(forTypeIdentifier: kUTTypeText as String,
                                      options: nil, completionHandler:{(result, error) in
                                        let commonName = result as? String
                                        self.displayLabelOutlet.text = commonTranslator.translate(commonName: commonName!)
            })
        }
    }

    @IBAction func done() {
        // Return any edited content to the host app.
        // This template doesn't do anything, so we just echo the passed in items.
        self.extensionContext!.completeRequest(returningItems: self.extensionContext!.inputItems, completionHandler: nil)
    }

}
