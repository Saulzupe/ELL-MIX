//
//  ArtistaUnoViewController.swift
//  Reproductor
//
//  Created by Saul Zuñiga Perez on 19/01/21.
//

import UIKit
import AVFoundation

class ArtistaUnoViewController: UIViewController {
    
    // Se almacena ...
    var player: AVAudioPlayer = AVAudioPlayer()
    var playerTwo: AVAudioPlayer = AVAudioPlayer()
    
    
      @IBAction func playButton(_ sender: UIButton) {
        player.play()
      }
      
      
      @IBAction func pauseBotton(_ sender: UIButton) {
        player.pause()
      }
      
      
      @IBAction func replayButton(_ sender: UIButton) {
        player.currentTime = 0 // Devuelve a estado 0 la canción
      }
      
      
      
      
      @IBAction func playBottonTwo(_ sender: UIButton) {
        
        playerTwo.play()
      }
      
      @IBAction func pauseBottonTwo(_ sender: UIButton) {
        playerTwo.pause()
      }
      
      
      @IBAction func replayBottonTwo(_ sender: UIButton) {
        playerTwo.currentTime = 0
      }

    override func viewDidLoad() {
        super.viewDidLoad()

        music()
        musicTwo()
    }
    
    func music () {
        do  { // Cargamos la canción
            let audioPath = Bundle.main.path(forResource: "songone", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        } catch {
            // ERROR EN LA MÚSICA
        }
    }
    
    func musicTwo () {
        do  { // Cargamos la canción
            let audioPathTwo = Bundle.main.path(forResource: "songtwo", ofType: "mp3")
            try playerTwo = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathTwo!) as URL)
        } catch {
            // ERROR EN LA MÚSICA
        }
    }
    


}
