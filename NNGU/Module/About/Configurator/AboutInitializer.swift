//
//  AboutAboutInitializer.swift
//  NNGU
//
//  Created by vladimir on 02/02/2020.
//  Copyright © 2020 NNGU. All rights reserved.
//

import UIKit

class AboutModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var aboutViewController: AboutViewController!

    override func awakeFromNib() {

        let configurator = AboutModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: aboutViewController)
    }

}
