//
//  CircleButton.swift
//  CaelinCore
//
//  Created by Caelin Jackson-King on 2019-01-02.
//

import UIKit

public class CircleButton: UIButton {
    static let diameter: CGFloat = 75
    
    let colour: UIColor
    
    override public var isEnabled: Bool {
        didSet {
            self.backgroundColor = isEnabled ? colour : InterfaceColours.steel
        }
    }
    
    public init(colour: UIColor = InterfaceColours.steel) {
        self.colour = colour
        super.init(frame: .zero)
        self.layer.cornerRadius = CircleButton.diameter / 2
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1
        self.backgroundColor = colour
        self.translatesAutoresizingMaskIntoConstraints = false
        self.showsTouchWhenHighlighted = true
    }
    
    // MARK: Annoying Boilerplate
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CircleButton: OpinionatedView {
    public func buildConstraints() -> [NSLayoutConstraint] {
        guard superview != nil else {
            return []
        }
        
        return [
            heightAnchor.constraint(equalToConstant: CircleButton.diameter),
            widthAnchor.constraint(equalToConstant: CircleButton.diameter)
        ]
    }
}
