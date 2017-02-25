//
//  ViewController.swift
//  SwiftPiano
//
//  Created by Deepak on 25/02/17.
//  Copyright © 2017 Deepak. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let url:NSURL = Bundle.main.url(forResource: "C3", withExtension: "mp3")! as NSURL
    //var PianoSoundC3 = NSURL(fileURLWithPath: Bundle.main.path(forResource: "C3",ofType: "mp3")!)
    var audioPlayerC3 = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do{
            try audioPlayerC3 = AVAudioPlayer(contentsOf: url as URL)
            audioPlayerC3.prepareToPlay()
        }catch{}
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func C3(_ sender: UIButton) {
        audioPlayerC3.currentTime=0;
        audioPlayerC3.play()
    }

}

