//
//  PostAudioInterfaceController.swift
//  VAWatchOS2
//
//  Created by victor augusteo on 11/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import WatchKit
import Foundation


class PostAudioInterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let url = NSURL()
        
        presentAudioRecordingControllerWithOutputURL(url, preset: WKAudioRecordingPreset.HighQualityAudio, maximumDuration: 60.0, actionTitle: "Send") { (success, error) -> Void in
            print("recorded in \(url.absoluteString)")
        }
    }

}
