//
//  UserPreferencesUserPreferencesConfigurator.swift
//  NNGU
//
//  Created by vladimir on 30/01/2020.
//  Copyright © 2020 NNGU. All rights reserved.
//

import UIKit

class UserPreferencesModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? UserPreferencesViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: UserPreferencesViewController) {

        let router = UserPreferencesRouter()

        let presenter = UserPreferencesPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = UserPreferencesInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
