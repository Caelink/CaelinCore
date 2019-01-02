//
//  Colours.swift
//  CaelinCore
//
//  Created by Caelin Jackson-King on 2019-01-02.
//

import UIKit

public extension UIColor {
    public convenience init(red: Int, green: Int, blue: Int) {
        guard red < 256, green < 256, blue < 256 else {
            self.init(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
            return
        }
        
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1.0)
    }
}

public struct InterfaceColours {
    public static var green: UIColor { return UIColor(red: 40, green: 190, blue: 155) }
    public static var lightBlue: UIColor { return UIColor(red: 146, green: 220, blue: 224) }
    public static var steel: UIColor { return UIColor(red: 96, green: 145, blue: 147) }
    public static var orange: UIColor { return UIColor(red: 239, green: 153, blue: 80) }
    public static var rust: UIColor { return UIColor(red: 215, green: 156, blue: 140) }
    public static var offwhite: UIColor { return UIColor(red: 255, green: 250, blue: 250) }
}
