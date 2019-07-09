//
//  Constants.swift
//  BootstrapProject
//
//  Created by Md Sulayman on 9/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation

enum Constants {
    static let id = "id"
    static let loginID = "loginID"
    static let idToken = "idToken"
    static let refreshToken = "refreshToken"
    static let email = "email"
    static let deviceId = "deviceId"

    enum AppSettings {
        static let onboardCompletion = "onboardCompletion"
        static let prefferedLanguage = "prefferedLanguage"
    }

    enum AuthConfig {
        static let responseType = "code"
        static let identityProviderKey = "identity_provider"
        static let identityProvider = "Salesforce"
        static let scope = "openid"
        static let stateLength: Int = 20
    }

    enum AppNotification {
        static let signOutNotification = "genelife_sign_out_notification"
    }

    enum Path {

    }

    enum Query {
    }
}
