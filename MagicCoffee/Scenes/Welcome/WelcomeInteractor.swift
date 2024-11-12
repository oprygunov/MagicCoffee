//
//  WelcomeInteractor.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 01.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

final class WelcomeInteractor {
    private let presenter: WelcomePresentationLogic
    private let worker: WelcomeWorkingLogic

    init(presenter: WelcomePresentationLogic, worker: WelcomeWorkingLogic) {
        self.presenter = presenter
        self.worker = worker
    }
}

extension WelcomeInteractor: WelcomeBusinessLogic {
    func request(_ request: Welcome.Fetch.Request) {
        presenter.present(Welcome.Fetch.Response())
    }

    func request(_ request: Welcome.Continue.Request) {
        presenter.present(Welcome.Continue.Response())
    }
}

extension WelcomeInteractor: WelcomeDataStore {}
