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
    
    
    
    let playC: NSURL = Bundle.main.url(forResource: "C", withExtension: "mp3")! as NSURL;
    let playDb: NSURL = Bundle.main.url(forResource: "C#", withExtension: "mp3")! as NSURL;
    let playD: NSURL = Bundle.main.url(forResource: "D", withExtension: "mp3")! as NSURL;
////    let playEb: NSURL = Bundle.main.url(forResource: "D#", withExtension: "mp3")! as NSURL;
    let playE: NSURL = Bundle.main.url(forResource: "E", withExtension: "mp3")! as NSURL;
    let playF: NSURL = Bundle.main.url(forResource: "F", withExtension: "mp3")! as NSURL;
////    let playGb: NSURL = Bundle.main.url(forResource: "F#", withExtension: "mp3")! as NSURL;
    let playG: NSURL = Bundle.main.url(forResource: "G", withExtension: "mp3")! as NSURL;
////    let playAb: NSURL = Bundle.main.url(forResource: "G#", withExtension: "mp3")! as NSURL;
    let playA: NSURL = Bundle.main.url(forResource: "A", withExtension: "mp3")! as NSURL;
    //let playBb: NSURL = Bundle.main.url(forResource: "G#", withExtension: "mp3")! as NSURL;
    let playB: NSURL = Bundle.main.url(forResource: "B", withExtension: "mp3")! as NSURL;
    let playC4: NSURL = Bundle.main.url(forResource: "C4", withExtension: "mp3")! as NSURL

    var audioPlayerC = AVAudioPlayer()
    var audioPlayerDb = AVAudioPlayer()
    var audioPlayerD = AVAudioPlayer()
////    var audioPlayerEb = AVAudioPlayer()
    var audioPlayerE = AVAudioPlayer()
    var audioPlayerF = AVAudioPlayer()
////    var audioPlayerGb = AVAudioPlayer()
    var audioPlayerG = AVAudioPlayer()
////    var audioPlayerAb = AVAudioPlayer()
    var audioPlayerA = AVAudioPlayer()
////    var audioPlayerBb = AVAudioPlayer()
    var audioPlayerB = AVAudioPlayer()
    var audioPlayerC4 = AVAudioPlayer()
    
    var musicatIsTalking = true
    var touchCount = 0
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self);
            
            if musicatIsTalking == true {
                touchCount += 1
                createSpeechBubble()
            }
            
            if musicatIsDemonstrating == true {
                HansZimmerDemo()
                touchCount += 1
                
            }
            
            if userIsPlaying == true {
                pianoActivated(location: location)
                //hbreak out of play mode wit OK button
            }
            
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do {
            try audioPlayerC = AVAudioPlayer(contentsOf: playC as URL)
            audioPlayerC.prepareToPlay()
            

            try audioPlayerDb = AVAudioPlayer(contentsOf: playDb as URL)
            audioPlayerDb.prepareToPlay()
////
            try audioPlayerD = AVAudioPlayer(contentsOf: playD as URL)
            audioPlayerDb.prepareToPlay()
////
////            try audioPlayerEb = AVAudioPlayer(contentsOf: playEb as URL)
////            audioPlayerEb.prepareToPlay()
////            
            try audioPlayerE = AVAudioPlayer(contentsOf: playE as URL)
            audioPlayerE.prepareToPlay()
////
            try audioPlayerF = AVAudioPlayer(contentsOf: playF as URL)
            audioPlayerF.prepareToPlay()
////
////            try audioPlayerGb = AVAudioPlayer(contentsOf: playGb as URL)
////            audioPlayerGb.prepareToPlay()
////            
            try audioPlayerG = AVAudioPlayer(contentsOf: playG as URL)
            audioPlayerG.prepareToPlay()
////
////            try audioPlayerAb = AVAudioPlayer(contentsOf: playAb as URL)
////            audioPlayerAb.prepareToPlay()
////            
            try audioPlayerA = AVAudioPlayer(contentsOf: playA as URL)
            audioPlayerA.prepareToPlay()
////
////            try audioPlayerBb = AVAudioPlayer(contentsOf: playBb as URL)
////            audioPlayerBb.prepareToPlay()
////            
            try audioPlayerB = AVAudioPlayer(contentsOf: playB as URL)
            audioPlayerA.prepareToPlay()
////
            try audioPlayerC4 = AVAudioPlayer(contentsOf: playC4 as URL)
            audioPlayerC4.prepareToPlay()
            
            
        } catch {}
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func C(_ sender: UIButton) {
        
        audioPlayerC.currentTime=0;
        audioPlayerC.play()
        
    }
    
    @IBAction func Db(_ sender: UIButton) {
        audioPlayerDb.currentTime=0;
        audioPlayerDb.play()
    }
    @IBAction func D(_ sender: UIButton) {
        audioPlayerD.currentTime=0;
        audioPlayerD.play()
    }
    @IBAction func E(_ sender: UIButton){
        audioPlayerE.currentTime=0;
        audioPlayerE.play()
    }
    @IBAction func F(_ sender: UIButton) {
        audioPlayerF.currentTime=0;
        audioPlayerF.play()
    }
    @IBAction func G(_ sender: UIButton) {
        audioPlayerG.currentTime=0;
        audioPlayerG.play()
    }
    @IBAction func A(_ sender: UIButton) {
        audioPlayerA.currentTime=0;
        audioPlayerA.play()
    }
    @IBAction func B(_ sender: UIButton) {
        audioPlayerB.currentTime=0;
        audioPlayerB.play()
    }
    @IBAction func C4(_ sender: UIButton) {
        audioPlayerC4.currentTime=0;
        audioPlayerC4.play()
    }
    
    
}




