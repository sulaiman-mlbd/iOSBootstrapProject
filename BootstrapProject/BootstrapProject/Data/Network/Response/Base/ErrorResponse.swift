//
//  ErrorResponse.swift
//  dev
//
//  Created by Md Sulayman on 8/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation

public enum ErrorResponse: Swift.Error, CustomStringConvertible {

    case error(Int, String)

    public var description: String {
        switch self {
        case .error(_, let message):
            return message
        }
    }

    public var code: Int {
        switch self {
        case .error(let code, _):
            return code
        }
    }
}
