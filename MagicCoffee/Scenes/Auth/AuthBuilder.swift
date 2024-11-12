//
//  AuthBuilder.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 01.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class AuthBuilder {
    static func build() -> UIViewController {
        let viewController = AuthViewController()
        let presenter = AuthPresenter(view: viewController)
        let interactor = AuthInteractor(
            presenter: presenter,
            worker: AuthWorker()
        )
        let router = AuthRouter(
            viewController: viewController,
            dataStore: interactor
        )
        viewController.interactor = interactor
        viewController.router = router
        return viewController
    }
}
