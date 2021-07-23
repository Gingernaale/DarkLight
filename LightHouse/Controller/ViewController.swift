//
//  ViewController.swift
//  LightHouse
//
//  Created by Irunya =} on 23/07/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pinkButton: UIButton!
    var pinkIsOn = false
    
    @IBOutlet weak var clickCounter: UILabel!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pinkButtonTapped(_ sender: Any) {
        if pinkIsOn {
            print("Pink color theme is on")
            self.pinkIsOn = false
            self.pinkButton.setTitle("Turn Black!", for: .normal)
            self.pinkButton.setTitleColor(UIColor.systemPink, for: .normal)
            self.view.backgroundColor = .black
            clickCounter.textColor = .systemPink
            counter += 1
            clickCounter.text = "\(counter)"
            print(counter)
        } else {
            print("Pink color theme is off")
            self.pinkIsOn = true
            self.pinkButton.setTitle("Turn Pink!", for: .normal)
            self.pinkButton.setTitleColor(UIColor.black, for: .normal)
            clickCounter.textColor = .black
            self.view.backgroundColor = .systemPink
            counter += 1
            clickCounter.text = "\(counter)"
            print(counter)
        }
        
    }
}

