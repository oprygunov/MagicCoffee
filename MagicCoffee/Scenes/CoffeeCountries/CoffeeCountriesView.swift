//
//  CoffeeCountriesView.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 26.08.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class CoffeeCountriesView: View {
    var viewModel: CoffeeCountries.RootViewModel = .init(countryNameItems: []) {
        didSet {
            tableView.items = viewModel.countryNameItems.enumerated().map { (index, countryName) in
                return .init(
                    text: countryName,
                    type: 0,
                    textColor: index == viewModel.selectedCountry ? .blue : .black
                )
            }
        }
    }

    enum Action {
        case close
        case buy
        case selectCountry(Int)
    }
    var actionHandler: (Action) -> Void = { _ in }

    private lazy var headerView: ConstructorHeaderView = {
        let view = ConstructorHeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.viewModel = .init(textTitle: "Конструктор заказа")
        view.actionHandler = { action in
            switch action {
            case .back:
                self.actionHandler(.close)
            case .buy:
                self.actionHandler(.buy)
            }
        }
        return view
    }()

    private var titleLabel: Label = {
        let view = Label(size: 16, weight: .medium)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.viewModel = .init(text: "Выберите страну и сорт кофе", textAlignment: .left, textColor: .darkBlue)
        view.heightAnchor.constraint(equalToConstant: 24).isActive = true
        return view
    }()

    private lazy var tableView: SimpleTableView<CoffeeCountryCell> = {
        let view = SimpleTableView<CoffeeCountryCell>()
        view.actionHandler = { action in
            switch action {
            case .select(let index):
                print("selected \(index)")
                self.actionHandler(.selectCountry(index))
            }
        }
        return view
    }()

    override func setupContent() {
        super.setupContent()
        backgroundColor = .white
        addSubview(headerView)
        addSubview(titleLabel)
        addSubview(tableView)
    }

    override func setupLayout() {
        super.setupLayout()
        headerView.topAnchor ~= safeAreaLayoutGuide.topAnchor
        headerView.leftAnchor ~= safeAreaLayoutGuide.leftAnchor
        headerView.rightAnchor ~= safeAreaLayoutGuide.rightAnchor

        titleLabel.topAnchor ~= headerView.bottomAnchor + 24
        titleLabel.leftAnchor ~= leftAnchor + 16

        tableView.topAnchor ~= titleLabel.bottomAnchor + 24
        tableView.leftAnchor ~= leftAnchor + 16
        tableView.rightAnchor ~= rightAnchor
        tableView.bottomAnchor ~= bottomAnchor
    }
}
