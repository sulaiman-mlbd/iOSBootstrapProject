//
//  HomeViewModel.swift
//  BootstrapProject
//
//  Created by Md Sulayman on 9/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation
import RxFlow
import RxCocoa
import RxSwift

class HomeViewModel: ServicesViewModel {
    typealias Services = HomeServices
    var services: HomeServices!
    var steps: PublishRelay<Step> = PublishRelay<Step>()

}

extension HomeViewModel: Stepper {

}
