//
//  DownloadedAudioInterfaceController.swift
//  VAWatchOS2
//
//  Created by victor augusteo on 11/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import WatchKit
import Foundation


class DownloadedAudioInterfaceController: WKInterfaceController, NSURLSessionDownloadDelegate {

    @IBOutlet var player: WKInterfaceMovie!

    let remoteUrl = NSURL(string: "http://media.bradsucks.net/albums/gwam/02_-_Brad_Sucks_-_Come_Back.mp3")
    var localUrl = NSURL()
    lazy var session: NSURLSession = self.createDownloadSession()
    
    func createDownloadSession() -> NSURLSession {
        let config = NSURLSessionConfiguration.ephemeralSessionConfiguration()
        return NSURLSession(configuration: config, delegate: self, delegateQueue: nil)
    }
    
    func download(downloadUrl: NSURL) {
        let task = session.downloadTaskWithURL(downloadUrl) { (url, response, error) -> Void in
            self.player.setMovieURL(response!.URL!)
        }
        task!.resume()
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        download(remoteUrl!)
    }
    
    func URLSession(session: NSURLSession, downloadTask: NSURLSessionDownloadTask, didFinishDownloadingToURL location: NSURL) {
        // do stuff?
    }


}
