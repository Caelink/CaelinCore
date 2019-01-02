//
//  UIControl+Closures.swift
//  CaelinCore
//
//  Created by Caelin Jackson-King on 2019-01-02.
//

// Full credit for this voodoo to: https://stackoverflow.com/a/41438789/9323727
// Seriously improves quality of life writing delegate method callbacks in swift

import UIKit

class ClosureSleeve {
    let closure: ()->()
    
    init (_ closure: @escaping ()->()) {
        self.closure = closure
    }
    
    @objc func invoke () {
        closure()
    }
}

extension UIControl {
    func addAction(for controlEvents: UIControl.Event, _ closure: @escaping ()->()) {
        let sleeve = ClosureSleeve(closure)
        addTarget(sleeve, action: #selector(ClosureSleeve.invoke), for: controlEvents)
        objc_setAssociatedObject(self, String(format: "[%d]", arc4random()), sleeve, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
    }
}
