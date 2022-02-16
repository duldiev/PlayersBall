//
//  ViewController.swift
//  PlayersBall
//
//  Created by Raiymbek Duldiev on 16.02.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!

    @IBOutlet weak var coverImage: UIImageView!
    
    @IBOutlet weak var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(playButton.currentTitle!)
    }

    @IBAction func playButtonPressed(_ sender: UIButton) {
        print(sender.currentTitle!)
        if sender.currentTitle! == "Play" {
            sender.setTitle("Stop", for: .normal)
            playSound(true)
        } else {
            sender.setTitle("Play", for: .normal)
            playSound(false)
        }
    }
    
    func playSound(_ state: Bool) {
        let url = Bundle.main.url(forResource: "song", withExtension: "mp3")
        
        player = try! AVAudioPlayer(contentsOf: url!)
        
        if state {
            player.play()
        } else {
            player.pause()
        }
    }
    
}

