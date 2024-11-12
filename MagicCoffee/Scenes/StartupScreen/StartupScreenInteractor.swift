//
//  StartupScreenInteractor.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 08.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

final class StartupScreenInteractor {
    private let presenter: StartupScreenPresentationLogic
    private let worker: StartupScreenWorkingLogic

    var model: StartupScreen.Model?

    init(presenter: StartupScreenPresentationLogic, worker: StartupScreenWorkingLogic) {
        self.presenter = presenter
        self.worker = worker
    }
}

extension StartupScreenInteractor: StartupScreenBusinessLogic {
    func request(_ request: StartupScreen.Fetch.Request) {
        let group = DispatchGroup()

        group.enter()
        worker.fetch { result in
            group.leave()
            switch result {
            case .success(let model):
                self.model = model
            case .failure:
                break
            }
        }

        group.enter()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            group.leave()
        }

        group.notify(queue: .main) {
            self.presenter.present(StartupScreen.Fetch.Response(model: self.model))
        }
    }
}

extension StartupScreenInteractor: StartupScreenDataStore {}
