//
//  LiveStreamViewController.swift
//  Clear Window
//
//  Created by Edward A. Barber on 10/6/20.
//

import UIKit
import AVKit

class LiveStreamViewController: UIViewController {
    
    private let playerLayer = PlayerView()
    
    @IBOutlet weak var playerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpPlayer()
    }
    
    private func setUpPlayer() {
        guard let url = URL(string: "https://firebasestorage.googleapis.com/v0/b/clear-window.appspot.com/o/coverr-drone-shot-in-tierra-del-fuego-argentina-6-4247.mp4?alt=media&token=4c3a625b-f0ed-4202-aae7-0cc665514ed1")
        else {
            return
        }
        
        let player = AVPlayer(url: url)
        
        playerLayer.player = player
        
        playerView.addSubview(playerLayer)
        
        playerLayer.translatesAutoresizingMaskIntoConstraints = false
        playerLayer.leadingAnchor.constraint(equalTo: playerView.leadingAnchor).isActive = true
        playerLayer.trailingAnchor.constraint(equalTo: playerView.trailingAnchor).isActive = true
        playerLayer.heightAnchor.constraint(equalTo: playerView.widthAnchor, multiplier: 16/9).isActive = true
        playerLayer.centerYAnchor.constraint(equalTo: playerView.centerYAnchor).isActive = true
        
        playerLayer.player?.play()
    }

}
