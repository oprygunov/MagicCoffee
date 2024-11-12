//
//  WelcomeViewController.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 01.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class WelcomeViewController: UIViewController {
    var interactor: WelcomeBusinessLogic?
    var router: WelcomeRoutingLogic?

    private lazy var rootView = WelcomeView()

    override func loadView() {
        super.loadView()
        view = rootView
        rootView.actionHandler = { action in
            switch action {
            case .next:
                self.interactor?.request(Welcome.Continue.Request())
            }
        }
    }
}

extension WelcomeViewController: WelcomeDisplayLogic {
    func display(_ viewModel: Welcome.Fetch.ViewModel) { }

    func display(_ viewModel: Welcome.Continue.ViewModel) {
        router?.showAuth()
    }
}
