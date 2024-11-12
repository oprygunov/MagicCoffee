//
//  RewardWorker.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 13.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

final class RewardWorker: RewardWorkingLogic {
    func fetch(_ completion: Reward.FetchCompletion?) {
        completion?(.init(totalCupCount: 8, currentCupCount: 6, bonusPoints: 23))
    }
}
