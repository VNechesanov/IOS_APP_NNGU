//
//  AboutAboutConfigurator.swift
//  NNGU
//
//  Created by vladimir on 02/02/2020.
//  Copyright © 2020 NNGU. All rights reserved.
//

import UIKit

class AboutModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? AboutViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: AboutViewController) {

        let router = AboutRouter()

        let presenter = AboutPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = AboutInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
