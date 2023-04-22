//
//  Optional+Extension.swift
//  FinancialApp
//
//  Author/Engineer: Lerato Mokoena on 22/04/2023.
//  Copyright © 2023 Arurea Murals. All rights reserved.
//

import Foundation


extension Optional where Wrapped == Int {
    var _value: Int? {
        get {
            return self
        }
        set {
            self = newValue
        }
    }

    public var intValue: Int {
        get {
            return _value ?? 0
        }
        set {
            _value = newValue
        }
    }
}
