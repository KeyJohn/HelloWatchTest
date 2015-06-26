//
//  SecondInterfaceController.swift
//  HelloWatch
//
//  Created by keyzhang on 15/6/26.
//  Copyright © 2015年 keyzhang. All rights reserved.
//

import WatchKit
import Foundation


class SecondInterfaceController: WKInterfaceController {
    

    @IBOutlet var label: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        label.setText(context as? String)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
