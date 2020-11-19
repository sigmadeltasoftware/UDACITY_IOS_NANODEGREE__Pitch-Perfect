//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Bojan Belic on 05/11/2020.
//

import UIKit

class RecordSoundsViewController: UIViewController {

    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
    }


    @IBAction func recordAudio(_ sender: Any) {
        recordLabel.text = "Recording in Progress"
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        print("Stop recording")
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
        recordLabel.text = "Tap to Record"
    }
}

