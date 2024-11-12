//
//  TwoFactorVerificationWorker.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 11.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

final class TwoFactorVerificationWorker: TwoFactorVerificationWorkingLogic {
    func fetch(_ completion: TwoFactorVerification.FetchCompletion?) {
        let model = TwoFactorVerification.Model()
        completion?(.success(model)
        )
    }
}
