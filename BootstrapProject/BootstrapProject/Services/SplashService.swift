//
//  SplashService.swift
//  BootstrapProject
//
//  Created by Md Sulayman on 9/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation

protocol HasSplashServices {
    var splashService: SplashService { get }
    var appStateService: AppStateService { get }
}

struct SplashServices: HasSplashServices {
    var splashService: SplashService
    var appStateService: AppStateService
}

class SplashService {

}
