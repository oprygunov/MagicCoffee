//
//  CookTimeView.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 12.08.2021.
//

import UIKit

class CookTimeView: View {
    enum Action {
        case cookSwitch(Bool)
        case cookTime(Date)
    }
    var actionHandler: (Action) -> Void = { _ in }
    
    var cookSwitch: Bool? {
        didSet {
            cookSwitchView.isOn = cookSwitch ?? false
            pickerContainer.isHidden = !(self.cookSwitch ?? false)
        }
    }

    var cookTime: Date? {
        didSet {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.timePicker.date = self.cookTime ?? Date()
            }
        }
    }
    
    var minuteInterval: Int? {
        didSet {
            timePicker.minuteInterval = minuteInterval ?? 0
        }
    }
    
    private lazy var titleLabel: Label = {
        let view = Label(size: 14, weight: .medium)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.viewModel = .init(text: "Приготовить к определенному времени сегодня?", textAlignment: .left, textColor: .black)
        view.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        view.setContentHuggingPriority(.defaultLow, for: .horizontal)

        view.setContentCompressionResistancePriority(.required, for: .vertical)
        view.setContentHuggingPriority(.defaultLow, for: .vertical)

        return view
    }()
    
    private lazy var cookSwitchView: UISwitch = {
        let view = UISwitch()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addAction(
            UIAction(
                handler: { _ in
                    self.actionHandler(.cookSwitch(view.isOn))
                }
            ),
            for: .valueChanged
        )
        return view
    }()

    private lazy var switchContainer: UIView = {
        let view = UIView()
        view.addSubview(titleLabel)
        view.addSubview(cookSwitchView)
        titleLabel.pinToSuperview(excluding: [.right])
        cookSwitchView.topAnchor >= view.topAnchor
        cookSwitchView.centerYAnchor ~= view.centerYAnchor
        cookSwitchView.rightAnchor ~= view.rightAnchor
        cookSwitchView.leftAnchor ~= titleLabel.rightAnchor + 5
        return view
    }()
    
    private lazy var timePicker: UIDatePicker = {
        let view = UIDatePicker()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.datePickerMode = .time
        view.timeZone = TimeZone.current
        view.locale = Locale(identifier: "ru_RU")
        view.subviews.first?.subviews.last?.backgroundColor = UIColor(red: 0.463, green: 0.463, blue: 0.502, alpha: 0.12)
        view.tintColor = .black
        view.addAction(
            UIAction(
                handler: { _ in
                    if self.cookTime != nil {
                        self.actionHandler(.cookTime(view.date))
                    }
                }
            ),
            for: .valueChanged
        )
        view.heightAnchor ~= 36
        view.widthAnchor ~= 86
        return view
    }()

    private lazy var pickerContainer: UIView = {
        let view = UIView()
        view.addSubview(timePicker)
        timePicker.pinToSuperview(excluding: [.left])
        return view
    }()

    private lazy var stackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [switchContainer, pickerContainer])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 10
        return view
    }()

    override func setupContent() {
        super.setupContent()
        addSubview(stackView)
    }
    
    override func setupLayout() {
        super.setupLayout()
        stackView.pinToSuperview(left: 10, top: 6, right: 10, bottom: 6)
    }

    public func switchWithAnimation(_ value: Bool) {
        cookSwitchView.isOn = value

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.pickerContainer.alpha = 0
            UIView.animate(withDuration: 0.2) {
                self.pickerContainer.isHidden = !value
            } completion: { _ in
                self.pickerContainer.alpha = 1
            }
        }
    }
}


