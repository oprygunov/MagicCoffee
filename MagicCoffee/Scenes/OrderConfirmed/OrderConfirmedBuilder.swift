//
//  OrderConfirmedBuilder.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 15.09.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class OrderConfirmedBuilder {
    static func build() -> UIViewController {
        let viewController = OrderConfirmedViewController()
        let presenter = OrderConfirmedPresenter(view: viewController)
        let interactor = OrderConfirmedInteractor(
            presenter: presenter,
            worker: OrderConfirmedWorker()
        )
        let router = OrderConfirmedRouter(
            viewController: viewController,
            dataStore: interactor
        )
        viewController.interactor = interactor
        viewController.router = router
        return viewController
    }
}
