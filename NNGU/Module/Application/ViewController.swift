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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setUpPrefButton.setImage(UIImage(named: ""), for: .normal)
    }

    @IBAction func setPrefButtonPressed(_ sender: Any) {
        setUpPrefButton.setImage(UIImage(named: ""), for: .normal)
    }
}

