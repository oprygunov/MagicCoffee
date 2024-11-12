//
//  DesignerBuilder.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 10.08.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class DesignerBuilder {
    static func build() -> UIViewController {
        let viewController = DesignerViewController()
        let presenter = DesignerPresenter(view: viewController)
        let interactor = DesignerInteractor(
            presenter: presenter,
            worker: DesignerWorker()
        )
        let router = DesignerRouter(
            viewController: viewController,
            dataStore: interactor
        )
        viewController.interactor = interactor
        viewController.router = router
        return viewController
    }
}
