//
//  OpinionatedView.swift
//  CaelinCore
//
//  Created by Caelin Jackson-King on 2019-01-02.
//

import UIKit

public protocol OpinionatedView {
    func buildConstraints() -> [NSLayoutConstraint]
}
