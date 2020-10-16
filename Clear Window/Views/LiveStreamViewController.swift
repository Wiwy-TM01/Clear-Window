//
//  LiveStreamViewController.swift
//  Clear Window
//
//  Created by Edward A. Barber on 10/6/20.
//

import UIKit
import AVKit
import AVFoundation

class LiveStreamViewController: UIViewController {
    
    @IBOutlet weak var playerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://firebasestorage.googleapis.com/v0/b/clear-window.appspot.com/o/coverr-drone-shot-in-tierra-del-fuego-argentina-6-4247.mp4?alt=media&token=4c3a625b-f0ed-4202-aae7-0cc665514ed1")
        else {
            return
        }
        
        let player = AVPlayer(url: url)
        let controller = AVPlayerLayer()
        
        controller.player = player
        
        controller.frame = playerView.bounds
        controller.videoGravity = .resizeAspect

        playerView.layer.addSublayer(controller)
        
        player.play()
    }
    
}
