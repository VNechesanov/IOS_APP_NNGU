//
//  ViewController.swift
//  NNGU
//
//  Created by Nechesanov Vladimir on 30.01.2020.
//  Copyright © 2020 Nechesanov Vladimir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var setUpPrefButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPrefButton.layer.cornerRadius = 15
        setUpPrefButton.clipsToBounds = true
        setUpPrefButton.layer.borderWidth = 1
        setUpPrefButton.layer.borderColor = UIColor.red.cgColor
    }
    
@IBAction func unwindToStartViewScreen(segue: UIStoryboardSegue) { }

}

