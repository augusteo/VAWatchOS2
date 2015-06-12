//
//  BundledVideoInterfaceController.swift
//  VAWatchOS2
//
//  Created by victor augusteo on 11/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import WatchKit
import Foundation


class BundledVideoInterfaceController: WKInterfaceController {

    @IBOutlet var player: WKInterfaceMovie!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let bundleUrl = NSBundle.mainBundle().URLForResource("sampleVideo", withExtension: "m4v")
        player.setMovieURL(bundleUrl!)
        player.setLoops(true)
    }


}
