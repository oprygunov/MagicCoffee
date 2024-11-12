//
//  ForgotPasswordWorker.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 11.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

final class ForgotPasswordWorker: ForgotPasswordWorkingLogic {
    func fetch(_ completion: ForgotPassword.FetchCompletion?) {
        let model = ForgotPassword.Model()
        completion?(.success(model))
        completion?(.failure(ForgotPasswordError.unknown))
    }
    
    func saveEmailText(text: String, _ completion: ForgotPassword.EnterTextCompletion?) {
        print("запрос в базу данных и текст \"\(text)\"")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion?()
        }
    }
}

enum ForgotPasswordError: Error {
    case unknown
}
