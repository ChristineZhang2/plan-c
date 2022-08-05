//
//  ViewController.swift
//  plan-c
//
//  Created by Christine Zhang on 8/2/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
   
    var backGroundPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func playBackGroundMusic (fileNamed: String){
        
        let url = Bundle.main.url(forResource: fileNamed, withExtension: nil)
        guard let newUrl = url else {
            
            print("Could not find filed called \(fileNamed)")
            return
        }
        do {
            
            backGroundPlayer = try AVAudioPlayer(contentsOf: newUrl)
            backGroundPlayer.numberOfLoops = -1
            backGroundPlayer.prepareToPlay()
            backGroundPlayer.play()
        }
        catch let error as NSError {
            
            print(error.description)
        }
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
        playBackGroundMusic(fileNamed: "Lofi.m4a")
    
}

}
