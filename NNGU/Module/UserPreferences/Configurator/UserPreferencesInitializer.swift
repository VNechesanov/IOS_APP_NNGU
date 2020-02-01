//
//  UserPreferencesUserPreferencesInitializer.swift
//  NNGU
//
//  Created by vladimir on 30/01/2020.
//  Copyright © 2020 NNGU. All rights reserved.
//

import UIKit

class UserPreferencesModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var userpreferencesViewController: UserPreferencesViewController!

    override func awakeFromNib() {

        let configurator = UserPreferencesModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: userpreferencesViewController)
    }

}
