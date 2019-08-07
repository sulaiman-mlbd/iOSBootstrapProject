//
//  APIRouter.swift
//  dev
//
//  Created by Md Sulayman on 8/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation
import Alamofire

enum APIRouter: URLRequestConvertible {

    // MARK: Api names
    case getProductList
    case login

    // MARK: Method get/post/..

    var method: HTTPMethod {
        switch self {
        case .getProductList:
            return .get
        case .login:
            return .post
        }
    }

    // MARK: Api endpoint

    var path: String {
        switch self {
        case .getProductList:
            return "/hdsfj/getproductlist"
        case .login:
            return "/api/login"
        }
    }

    // MARK: Parameter's for an api endpoint

    private var parameters: Parameters? {
        switch self {
        default:
            return nil
        }
    }

    // MARK: Query item for get api request

    private var queryItems: [URLQueryItem]? {
        switch self {
        case .getProductList:
            return [URLQueryItem.init(name: "name", value: "TEstr name ")]
        default:
            return nil
        }
    }

    // MARK: URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        //  let url = try ApiPath.baseURLString.asURL()
        var urlParameters = URLComponents(string: ApiPath.baseURLString)
        urlParameters?.path = path
        urlParameters?.queryItems = queryItems

        guard let _url = urlParameters?.url else { fatalError("Not a valid URL") }
        var urlRequest = URLRequest(url: _url)

        // HTTP Method
        urlRequest.httpMethod = method.rawValue

        // Common Headers
        //urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)

        // MARK: - Addy HTTPHeaderFields here if needed

        // Parameters
        if let parameters = parameters {
            switch self {
            default:
                do {
                    let jsonData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
                    urlRequest.httpBody = jsonData
                } catch {
                    throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
                }
            }
        }

        return urlRequest
    }

}
