//
//  StackListInterfaceController.swift
//  VAWatchOS2
//
//  Created by victor augusteo on 11/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import WatchKit
import Foundation


class StackListInterfaceController: WKInterfaceController {

    @IBOutlet var stackPicker: WKInterfacePicker!
    
    let dinnerTitleArray = ["Pizza", "Burger", "Noodle", "Gnocchi", "Meatball"]
    var selectedIndex = 0

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        stackPicker.setItems(setupDinnerMenu())
    }
    
    func setupDinnerMenu() -> [WKPickerItem] {
        var menuArray: [WKPickerItem] = []
        
        for item in dinnerTitleArray {
            let x = WKPickerItem()
            x.contentImage = WKImage(image: UIImage(named: item)!)
            x.caption = item
            menuArray.append(x)
        }
        
        return menuArray
    }

    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        return dinnerTitleArray[selectedIndex]
    }
    
    @IBAction func onPickerChange(value: Int) {
        selectedIndex = value
    }
}
