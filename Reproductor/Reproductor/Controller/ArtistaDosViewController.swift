//
//  ArtistaDosViewController.swift
//  Reproductor
//
//  Created by Saul Zuñiga Perez on 19/01/21.
//

import UIKit
import AVFoundation

class ArtistaDosViewController: UIViewController {
    
    var playerThree: AVAudioPlayer = AVAudioPlayer()
    var playerFour: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        musicThree()
        musicFour()
        // Do any additional setup after loading the view.
    }
    

    
      @IBAction func playButtonThree(_ sender: UIButton) {
        playerThree.play()
      }
      
      
      @IBAction func pauseBottonThree(_ sender: UIButton) {
        playerThree.pause()
      }
      
      
      @IBAction func replayButtonThree(_ sender: UIButton) {
        playerThree.currentTime = 0
      }
      
      
      
      
      @IBAction func playBottonFour(_ sender: UIButton) {
        playerFour.play()
      }
      
      @IBAction func pauseBottonFour(_ sender: UIButton) {
        playerFour.pause()
      }
      
      
      @IBAction func replayBottonFour(_ sender: UIButton) {
        playerFour.currentTime = 0
      }
    
    func musicThree () {
        do  { // Cargamos la canción
            let audioPathThree = Bundle.main.path(forResource: "songthree", ofType: "mp3")
            try playerThree = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathThree!) as URL)
        } catch {
            // ERROR EN LA MÚSICA
        }
    }
    
    func musicFour () {
        do  { // Cargamos la canción
            let audioPathFour = Bundle.main.path(forResource: "songfour", ofType: "mp3")
            try playerFour = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathFour!) as URL)
        } catch {
            // ERROR EN LA MÚSICA
        }
    }

}
