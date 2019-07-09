//
//  PersistenceManager.swift
//  BootstrapProject
//
//  Created by Md Sulayman on 9/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation
import KeychainAccess

class PersistenceManager {

    static let shared = PersistenceManager()
    private let keychain: Keychain
    private let defaults: UserDefaults

    private init () {
        keychain = Keychain()
        defaults = UserDefaults.standard
    }

    public func saveIdToken(idToken: String) -> Bool {
        do {
            try keychain.set(idToken, key: Constants.idToken)
            return true
        } catch let error {
            log.debug(error)
            return false
        }
    }

    public func idToken() -> String? {
        do {
            return try keychain.get(Constants.idToken)
        } catch let error {
            log.debug(error)
            return nil
        }
    }

    public func removeIdToken() -> Bool {
        do {
            try keychain.remove(Constants.idToken)
            return true
        } catch let error {
            log.debug(error)
            return false
        }
    }

    public func saveRefreshToken(refreshToken: String) -> Bool {
        do {
            try keychain.set(refreshToken, key: Constants.refreshToken)
            return true
        } catch let error {
            log.debug(error)
            return false
        }
    }

    public func refreshToken() -> String? {
        do {
            return try keychain.get(Constants.refreshToken)
        } catch let error {
            log.debug(error)
            return nil
        }
    }

    public func removeRefreshToken() -> Bool {
        do {
            try keychain.remove(Constants.refreshToken)
            return true
        } catch let error {
            log.debug(error)
            return false
        }
    }

    public func removeTokens() -> Bool {
        if removeRefreshToken() && removeIdToken() {
            return true
        } else {
            return false
        }
    }

    public func isOnboardDone() -> Bool {
        return defaults.bool(forKey: Constants.AppSettings.onboardCompletion)
    }

    public func setOnboardDone() {
        defaults.set(true, forKey: Constants.AppSettings.onboardCompletion)
    }

}
