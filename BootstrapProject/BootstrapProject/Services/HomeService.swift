//
//  HomeService.swift
//  BootstrapProject
//
//  Created by Md Sulayman on 9/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation

protocol HasHomeServices {
    var homeService: HomeService { get }
}

struct HomeServices: HasHomeServices {
    var homeService: HomeService
}

class HomeService {

}
