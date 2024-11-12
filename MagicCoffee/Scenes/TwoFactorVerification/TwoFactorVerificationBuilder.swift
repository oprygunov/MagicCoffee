//
//  TwoFactorVerificationBuilder.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 11.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class TwoFactorVerificationBuilder {
    static func build() -> UIViewController {
        let viewController = TwoFactorVerificationViewController()
        let presenter = TwoFactorVerificationPresenter(view: viewController)
        let interactor = TwoFactorVerificationInteractor(
            presenter: presenter,
            worker: TwoFactorVerificationWorker()
        )
        let router = TwoFactorVerificationRouter(
            viewController: viewController,
            dataStore: interactor
        )
        viewController.interactor = interactor
        viewController.router = router
        return viewController
    }
}
