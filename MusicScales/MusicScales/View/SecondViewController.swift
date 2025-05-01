//
//  SecondViewController.swift
//  Assignment7
//
//  Created by Justin Bell on 11/25/24.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController, AVAudioPlayerDelegate {

    @IBOutlet weak var scaleNotesLabel: UILabel!
    
    var audioPlayer: AVAudioPlayer?
    var scaleName = ""
    var majorScaleLogic = MajorScalesLogic()
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scaleNotesLabel.text = "Scale Notes: \(majorScaleLogic.getScaleNotes(index))"
        playMusic()
        // Do any additional setup after loading the view.
    }
    
    //replay music
    @IBAction func playAgainPressed(_ sender: UIButton) {
        playMusic()
    }
    
    
    
    //create button and button action to return to start page
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    func playMusic() {
        guard let url = Bundle.main.url(forResource: scaleName, withExtension: "m4a") else {
                print("Error: Audio file not found")
                return
            }
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.delegate = self // Set the delegate to handle audio playback events (optional)
                audioPlayer?.play()
            } catch {
                print("Error playing music: \(error.localizedDescription)")
            }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
