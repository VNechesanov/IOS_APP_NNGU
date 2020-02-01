//
//  UserPreferencesUserPreferencesViewController.swift
//  NNGU
//
//  Created by vladimir on 30/01/2020.
//  Copyright © 2020 NNGU. All rights reserved.
//

import UIKit

class UserPreferencesViewController: UIViewController, UserPreferencesViewInput {
    
    
    var output: UserPreferencesViewOutput!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        output.viewIsReady()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    @IBAction func closePressed(_ sender: Any) {
        if let navigation = self.navigationController {
            navigation.popViewController(animated: true)
        } else {
            self.dismiss(animated: true)
        }
    }
    
    // MARK: UserPreferencesViewInput
    func setupInitialState() {
    }
}
