//
//  CoffeeTypePresenter.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 26.08.2021.
//  Copyright (c) 2021. All rights reserved.
//

final class CoffeeTypePresenter {
    weak var view: CoffeeTypeDisplayLogic?

    init(view: CoffeeTypeDisplayLogic) {
        self.view = view
    }
}

extension CoffeeTypePresenter: CoffeeTypePresentationLogic {
    func present(_ response: CoffeeType.Fetch.Response) {
        view?.display(
            CoffeeType.Fetch.ViewModel(
                root: response.model.viewModel()
            )
        )
    }
    func present(_ response: CoffeeType.Close.Response) {
        view?.display(CoffeeType.Close.ViewModel())
    }

    func present(_ response: CoffeeType.Buy.Response) {
        view?.display(CoffeeType.Buy.ViewModel())
    }

    func present(_ response: CoffeeType.SelectVariety.Response) {
        view?.display(CoffeeType.SelectVariety.ViewModel())
    }
}

private extension CoffeeType.Model {
    func viewModel() -> CoffeeType.RootViewModel {
        .init(
            varietyNameItems: items
        )
    }
}
