//
//  StackListOrderInterfaceController.swift
//  VAWatchOS2
//
//  Created by victor augusteo on 11/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import WatchKit
import Foundation


class StackListOrderInterfaceController: WKInterfaceController {

    @IBOutlet var dinnerLabel: WKInterfaceLabel!
    @IBOutlet var dinnerImage: WKInterfaceImage!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let dinner = context as? String {
            dinnerLabel.setText("Your order of one \(dinner) has been processed")
            dinnerImage.setImage(UIImage(named: dinner))
        }
    }

}
