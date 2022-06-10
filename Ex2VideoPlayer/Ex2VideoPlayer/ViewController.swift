//
//  ViewController.swift
//  Ex2VideoPlayer
//
//  Created by Deepak B on 03/06/22.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    
    @IBAction func TapPlay(_ sender: Any) {
        if let videoPath = Bundle.main.path(forResource: "4. Getters", ofType: "mp4")
        {
            let video  = AVPlayer(url: URL(fileURLWithPath: videoPath))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true) {
                video.play()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

