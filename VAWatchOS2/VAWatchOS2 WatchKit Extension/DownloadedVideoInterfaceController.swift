//
//  DownloadedVideoInterfaceController.swift
//  VAWatchOS2
//
//  Created by victor augusteo on 11/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import WatchKit
import Foundation


class DownloadedVideoInterfaceController: WKInterfaceController {

    @IBOutlet var player: WKInterfaceMovie!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let url = NSURL(string: "http://localhost:8000/sampleVideo.m4v")
        
        player.setMovieURL(url!)
    }
}
