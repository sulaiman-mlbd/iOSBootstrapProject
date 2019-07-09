//
//  UIView+Transform.swift
//  BootstrapProject
//
//  Created by Md Sulayman on 9/7/19.
//  Copyright © 2019 Md Sulayman. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func transformScaleIfSmall() {
        let scale = min(UIScreen.main.bounds.height / 812, 1.0)
        transform = CGAffineTransform(scaleX: scale, y: scale)
    }

    func transformToCard() {
        layer.cornerRadius = 10.0
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        layer.shadowRadius = 10.0
        layer.shadowOpacity = 0.5
    }
}
