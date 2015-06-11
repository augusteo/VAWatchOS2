//
//  PickerListInterfaceController.swift
//  VAWatchOS2
//
//  Created by victor augusteo on 10/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import WatchKit
import Foundation


class PickerListInterfaceController: WKInterfaceController {
    @IBOutlet var listPicker: WKInterfacePicker!
    @IBOutlet var dinnerImageView: WKInterfaceImage!
    
    let dinnerTitleArray = ["Pizza", "Burger", "Noodle", "Gnocchi", "Meatball"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        listPicker.setItems(setupDinnerMenu())
        dinnerImageView.setImage(UIImage(named: dinnerTitleArray[0]))
    }
    
    func setupDinnerMenu() -> [WKPickerItem] {
        var menuArray:[WKPickerItem] = []
        
        for item in dinnerTitleArray {
            let x = WKPickerItem()
            x.title = item
            menuArray.append(x)
        }
        
        return menuArray
    }

    @IBAction func onListChanged(value: Int) {
        dinnerImageView.setImage(UIImage(named: dinnerTitleArray[value]))
    }
}
