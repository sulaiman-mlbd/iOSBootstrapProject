//
//  Response.swift
//  dev
//
//  Created by Md Sulayman on 8/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation

enum ResponseStatus {
    case success
    case error(ErrorResponse)
}

class Response {
    public let status: ResponseStatus
    public let data: Data?

    init (status: ResponseStatus, data: Data?) {
        self.status = status
        self.data = data
    }

    public static func success(data: Data?) -> Response {
        return Response(status: ResponseStatus.success, data: data)
    }

    public static func error(errorResponse: ErrorResponse, data: Data? = nil) -> Response {
        return Response(status: ResponseStatus.error(errorResponse), data: data)
    }
}

struct RootResponse<T: Decodable>: Decodable {
    let data: T
}

struct RootErrorResponse<T: Decodable>: Decodable {
    let error: T
}
