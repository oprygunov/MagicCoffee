//
//  SeparatorView.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 02.07.2021.
//

import UIKit

class SeparatorView: UIView {
    var color: UIColor? {
        didSet {
            layer.backgroundColor = color?.cgColor
        }
    }
    
    init(heigth: CGFloat) {
        super.init(frame: .zero)
        setupView()
        setupContent()
        setupLayout()
        heightAnchor.constraint(equalToConstant: heigth).isActive = true
        
    }
    
    init(width: CGFloat) {
        super.init(frame: .zero)
        setupView()
        setupContent()
        setupLayout()
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    private init() {
        super.init(frame: .zero)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.backgroundColor = UIColor(red: 0.235, green: 0.235, blue: 0.263, alpha: 0.36).cgColor
    }
    
    func setupContent() {}
    
    func setupLayout() {}
}
