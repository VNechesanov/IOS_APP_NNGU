//
//  AboutAboutPresenter.swift
//  NNGU
//
//  Created by vladimir on 02/02/2020.
//  Copyright © 2020 NNGU. All rights reserved.
//

class AboutPresenter: AboutModuleInput, AboutViewOutput, AboutInteractorOutput {

    weak var view: AboutViewInput!
    var interactor: AboutInteractorInput!
    var router: AboutRouterInput!

    func viewIsReady() {

    }
}
