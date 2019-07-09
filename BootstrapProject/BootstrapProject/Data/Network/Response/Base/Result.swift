//
//  Result.swift
//  dev
//
//  Created by Md Sulayman on 8/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation

//TODO: Need to replace this Result with Swift 5's default result enum
enum Result<T, E> {
    case success(T)
    case failure(E)
}
