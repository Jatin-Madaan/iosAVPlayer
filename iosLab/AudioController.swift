//
//  AudioController.swift
//  iosLab
//
//  Created by Student on 04/11/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit
import AVKit
class AudioController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var strPath : String!
    var urlPath : URL!
    var videoPlayer : AVPlayer!
    var VideoController = AVPlayerViewController()
    
    
    @IBAction func playAudio(_ sender: Any) {
        strPath = Bundle.main.path(forResource: "audio", ofType: "mp3")
        urlPath = URL(fileURLWithPath: strPath)
        videoPlayer = AVPlayer(url: urlPath)
        VideoController.player = videoPlayer
        present(VideoController, animated: true, completion: nil)
        VideoController.player?.play()    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
