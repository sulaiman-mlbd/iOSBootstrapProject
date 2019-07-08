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
    
    //MARK: Api names
    case getProductList
    
    //MARK: Method get/post/..
    
    var method: HTTPMethod {
        switch self {
        case .getProductList:
            return .get
        }
    }
    
    //MARK: Api endpoint
    
    var path: String {
        switch self {
        case .getProductList:
            return "/hdsfj/getproductlist"
        }
    }
    
    //MARK: Parameter's for an api endpoint
    
    private var parameters: Parameters? {
        switch self {
        default:
            return nil
        }
    }
    
    //MARK: Query item for get api request
    
    private var queryItems: [URLQueryItem]? {
        switch self {
        case .getProductList:
            return [URLQueryItem.init(name: "name", value: "TEstr name ")]
        default:
            return nil
        }
    }
    
    
    func asURLRequest() throws -> URLRequest {
        return URLRequest.init(url: )
    }
    
    
}
