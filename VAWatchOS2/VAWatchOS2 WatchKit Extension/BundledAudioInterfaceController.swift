//
//  BundledAudioInterfaceController.swift
//  VAWatchOS2
//
//  Created by victor augusteo on 11/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import WatchKit
import Foundation


class BundledAudioInterfaceController: WKInterfaceController {

    @IBOutlet var player: WKInterfaceMovie!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let fileUrl = NSBundle.mainBundle().URLForResource("sampleAudio", withExtension: "mp3")
        player.setMovieURL(fileUrl!)
    }
}
