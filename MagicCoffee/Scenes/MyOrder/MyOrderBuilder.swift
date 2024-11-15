//
//  MyOrderBuilder.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 26.08.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class MyOrderBuilder {
    static func build() -> UIViewController {
        let viewController = MyOrderViewController()
        let presenter = MyOrderPresenter(view: viewController)
        let interactor = MyOrderInteractor(
            presenter: presenter,
            worker: MyOrderWorker()
        )
        let router = MyOrderRouter(
            viewController: viewController,
            dataStore: interactor
        )
        viewController.interactor = interactor
        viewController.router = router
        return viewController
    }
}
