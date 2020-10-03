//
//  Closures+guarding.swift
//  CaelinCore
//
//  Created by Caelin Jackson-King on 2020-10-02.
//

import Foundation

class Closure {
    typealias NoParameterClosure = () -> Void
    typealias SingleParameterClosure<P> = (P) -> Void
    typealias DualParamaterClosure<A, B> = (A, B) -> Void

    /// Weak captures the object passed and returns a closure that will invoke your payload if it still exists when it's requested.
    ///
    /// - Parameter object: the object being captured
    /// - Parameter payload: a closure that is captured within the returned closure, with a weak reference to   `object`.
    public class func guarded<O: AnyObject>(object: O, payload: @escaping SingleParameterClosure<O>) -> NoParameterClosure {
        return { [weak object] in
            guard let object = object else { return }
            payload(object)
        }
    }

    /// Weak captures the object passed and returns a closure that will invoke your payload if it still exists when it's requested.
    ///
    /// - Parameter object: the object being captured
    /// - Parameter payload: a closure that is captured within the returned closure, with a weak reference to   `object`.
    public class func guarded<O: AnyObject, P>(object: O, payload: @escaping DualParamaterClosure<O, P>) -> SingleParameterClosure<P> {
        return { [weak object] (p) in
            guard let object = object else { return }
            payload(object, p)
        }
    }
}
