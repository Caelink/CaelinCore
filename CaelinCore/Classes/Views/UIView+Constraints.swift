//
//  UIView+Constraints.swift
//  CaelinCore
//
//  Created by Caelin Jackson-King on 2019-01-02.
//

import UIKit

public extension UIView {
    public func verticalCascadeLayout(of views: [UIView], from anchor: NSLayoutYAxisAnchor, margin: CGFloat) {
        guard let first = views.first else {
            return
        }
        var previousAnchor: NSLayoutAnchor = anchor
        for view in views {
            addSubview(view)
            if let opinionatedView = view as? OpinionatedView {
                addConstraints(opinionatedView.buildConstraints())
            }
            addConstraints([
                view.topAnchor.constraint(equalTo: previousAnchor, constant: margin),
                view.heightAnchor.constraint(equalTo: first.heightAnchor)
                ])
            previousAnchor = view.bottomAnchor
        }
    }
    
    public func snapToBounds(view: UIView) {
        addConstraints([
            view.leftAnchor.constraint(equalTo: leftAnchor),
            view.rightAnchor.constraint(equalTo: rightAnchor),
            view.topAnchor.constraint(equalTo: topAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
    }
}
