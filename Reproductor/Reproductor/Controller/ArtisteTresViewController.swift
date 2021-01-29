//
//  ArtisteTresViewController.swift
//  Reproductor
//
//  Created by Saul Zuñiga Perez on 19/01/21.
//

import UIKit
import AVFoundation

class ArtisteTresViewController: UIViewController {
    
    var playerFive: AVAudioPlayer = AVAudioPlayer()
    var playerSix: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        musicFive()
        musicSix()
    }
    

    @IBAction func playButtonFive(_ sender: UIButton) {
        playerFive.play()
    }
    
    
    @IBAction func pauseBottonFive(_ sender: UIButton) {
        playerFive.pause()
    }
    
    
    @IBAction func replayButtonFive(_ sender: UIButton) {
        playerFive.currentTime = 0
    }
    
    
    
    
    @IBAction func playBottonSix(_ sender: UIButton) {
        playerSix.play()
    }
    
    @IBAction func pauseBottonSix(_ sender: UIButton) {
        playerSix.pause()
    }
    
    
    @IBAction func replayBottonSix(_ sender: UIButton) {
        playerSix.currentTime = 0
    }
    
    
    func musicFive () {
        do  { // Cargamos la canción
            let audioPathFive = Bundle.main.path(forResource: "songfive", ofType: "mp3")
            try playerFive = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathFive!) as URL)
        } catch {
            // ERROR EN LA MÚSICA
        }
    }
    
    func musicSix () {
        do  { // Cargamos la canción
            let audioPathSix = Bundle.main.path(forResource: "songsix", ofType: "mp3")
            try playerSix = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathSix!) as URL)
        } catch {
            // ERROR EN LA MÚSICA
        }
    }
}
