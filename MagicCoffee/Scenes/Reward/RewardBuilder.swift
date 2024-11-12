//
//  RewardBuilder.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 13.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class RewardBuilder {
    static func build() -> UIViewController {
        let viewController = RewardViewController()
        let presenter = RewardPresenter(view: viewController)
        let interactor = RewardInteractor(
            presenter: presenter,
            worker: RewardWorker()
        )
        let router = RewardRouter(
            viewController: viewController,
            dataStore: interactor
        )
        viewController.interactor = interactor
        viewController.router = router
        return viewController
    }
}
