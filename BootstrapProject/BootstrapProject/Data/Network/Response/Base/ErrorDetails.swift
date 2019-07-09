//
//  ErrorDetails.swift
//  dev
//
//  Created by Md Sulayman on 8/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation

struct ErrorDetails: Codable {
    let status: String?
    let code: Int?
    let message: String

    init(status: String? = nil, code: Int? = nil, displayText: String) {
        self.status = status
        self.code = code
        self.message = displayText
    }
}

extension Error {
    func toErrorDetails() -> ErrorDetails {
        return ErrorDetails(displayText: localizedDescription)
    }
}
