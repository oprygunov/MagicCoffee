//
//  PatternView.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 23.07.2021.
//

import UIKit

class PatternView: View {
    struct Model { }

    var viewModel: Model = .init() {
        didSet {
            
        }
    }
    
    enum Action { }

    var actionHandler: (Action) -> Void = { _ in }

    
    override func setupContent() {
        super.setupContent()

    }
    
    override func setupLayout() {
        super.setupLayout()
        
    }
}
