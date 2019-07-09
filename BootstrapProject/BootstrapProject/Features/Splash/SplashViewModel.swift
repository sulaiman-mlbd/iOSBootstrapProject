//
//  SplashViewModel.swift
//  BootstrapProject
//
//  Created by Md Sulayman on 9/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation
import RxFlow
import RxSwift
import RxCocoa

class SplashViewModel: ServicesViewModel {
    typealias Services = SplashServices
    internal var services: Services!
    private let disposeBag = DisposeBag()
    let steps: PublishRelay<Step> = PublishRelay<Step>()

}

extension SplashViewModel: Stepper {

    func onSplashComplete() {
        self.steps.accept(AppStep.splashComplete)
    }
}
