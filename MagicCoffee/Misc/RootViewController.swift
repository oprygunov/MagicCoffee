//
//  RootViewController.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 01.07.2021.
//

import UIKit

class RootViewController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBarHidden(true, animated: false)
        viewControllers = [StartupScreenBuilder.build()]
    }
}

