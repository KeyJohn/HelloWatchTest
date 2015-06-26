//
//  InterfaceController.swift
//  HelloWatchTest WatchKit Extension
//
//  Created by keyzhang on 15/6/26.
//  Copyright (c) 2015年 keyzhang. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet weak var table: WKInterfaceTable!
    
    let contents = ["😱","😰","😳","😨","😔","😂","😀","😇","☺️","😏","😈","😖","😡","😘","😎"]

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        table.setNumberOfRows(contents.count, withRowType: "Row")
        for index in 0..<contents.count {
            let row = table.rowControllerAtIndex(index) as FaceRow
            row.label.setText(contents[index])
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        self.pushControllerWithName("Second", context: contents[rowIndex])
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
