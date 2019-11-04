//
//  ViewController.swift
//  iosLab
//
//  Created by Student on 04/11/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit
import AVKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var strPath : String!
    var urlPath : URL!
    var videoPlayer : AVPlayer!
    var VideoController = AVPlayerViewController()
    @IBAction func PlayVideo(_ sender: Any) {
        strPath = Bundle.main.path(forResource: "video", ofType: "mp4")
        urlPath = URL(fileURLWithPath: strPath)
        videoPlayer = AVPlayer(url: urlPath)
        VideoController.player = videoPlayer
        present(VideoController, animated: true, completion: nil)
        VideoController.player?.play()
    }
}

