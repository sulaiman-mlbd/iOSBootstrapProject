//
//  SplashViewController.swift
//  BootstrapProject
//
//  Created by Md Sulayman on 9/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation
import Reusable
import UIKit
import RxSwift
import Lottie
import SnapKit

class SplashViewController: UIViewController, StoryboardBased, ViewModelBased {
    var viewModel: SplashViewModel!

    private let disposeBag = DisposeBag()

    override var prefersStatusBarHidden: Bool { return true }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Timer.scheduledTimer(withTimeInterval: 3, repeats: false, block: { _ in
            self.viewModel.onSplashComplete()
        })
    }

}
