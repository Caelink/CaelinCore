//
//  Standards.swift
//  CaelinCore
//
//  Created by Caelin Jackson-King on 2019-01-02.
//

import UIKit

class Standards: NSObject {
    static func button(called name: String) -> UIButton {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.showsTouchWhenHighlighted = true
        button.setTitle(name, for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }
    
    static func label(showing text: String) -> UILabel {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 26.0)
        label.textAlignment = .center
        label.text = text
        return label
    }

    static func view(base colour: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = colour
        return view
    }
    
    static func stack(showing views: [UIView], along axis: NSLayoutConstraint.Axis) -> UIStackView {
        let stack = UIStackView(arrangedSubviews: views)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.alignment = .center
        stack.axis = axis
        stack.spacing = 20
        return stack
    }
}
