//
//  AuthWorker.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 01.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

final class AuthWorker: AuthWorkingLogic {

    func fetch(_ completion: Auth.FetchCompletion?) {
            let model = Auth.Model(
                showPassword: true
            )
            completion?(
                .success(
                    model
                )
            )
        }
    
    func login(username: String, password: String) {
        UserDefaults.standard.set(true, forKey: "hasUser")
        //completion()
    }
}

enum AuthError: Error {
    case unknown
}
