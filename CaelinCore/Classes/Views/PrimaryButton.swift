//
//  PrimaryButton.swift
//  CaelinCore
//
//  Created by Caelin Jackson-King on 2019-01-02.
//

import UIKit

class PrimaryButton: UIButton {
    static let height: CGFloat          = 40
    static let outsideMargin: CGFloat   = 40
    
    let colour: UIColor
    
    override var isEnabled: Bool {
        didSet {
            self.backgroundColor = isEnabled ? colour : InterfaceColours.steel
        }
    }
    
    init(text: String, colour: UIColor = .red) {
        self.colour = colour
        super.init(frame: .zero)
        self.setTitle(text, for: .normal)
        self.setTitle("Unavailable (\(text))", for: .disabled)
        self.layer.cornerRadius = PrimaryButton.height / 6
        self.backgroundColor = colour
        self.translatesAutoresizingMaskIntoConstraints = false
        self.showsTouchWhenHighlighted = true
    }
    
    // MARK: Annoying Boilerplate
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PrimaryButton: OpinionatedView {
    func buildConstraints() -> [NSLayoutConstraint] {
        guard let superview = superview else {
            return []
        }
        
        return [
            heightAnchor.constraint(equalToConstant: PrimaryButton.height),
            leftAnchor.constraint(equalTo: superview.leftAnchor, constant: PrimaryButton.outsideMargin),
            centerXAnchor.constraint(equalTo: superview.centerXAnchor)
        ]
    }
}
