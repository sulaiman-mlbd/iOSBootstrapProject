//
//  AppStateService.swift
//  BootstrapProject
//
//  Created by Md Sulayman on 9/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation

protocol HasAppStateServices {
    var appStateService: AppStateService { get }
}

class AppStateService {
    public func isOnboardDone() -> Bool {
        let isOnboardDone = PersistenceManager.shared.isOnboardDone()
        return isOnboardDone
    }
    public func setOnboardDone() {
        PersistenceManager.shared.setOnboardDone()
    }
}
