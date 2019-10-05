//
//  ViewController.swift
//  IntroToXcode
//
//  Created by Néstor I. Martínez Ostoa on 10/5/19.
//  Copyright © 2019 Néstor I. Martínez Ostoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.backgroundColor = UIColor.red
    }
    
    func determineGameState() {
        print(GameState.win)
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        print("click en el botón")
        myView.backgroundColor = .yellow
        myButton.setTitle("😇", for: .normal)
        myButton.isHidden = true
    }
    
    
}

