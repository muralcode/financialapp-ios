//
//  Optional+Extension.swift
//  FinancialApp
//
//  Author/Engineer: Lerato Mokoena on 21/04/2023.
//  Copyright © 2023 Arurea Murals. All rights reserved.
//

import Foundation

extension Optional where Wrapped == Bool {
    var _value: Bool? {
        get {
            return self
        }
        set {
            self = newValue
        }
    }

    public var boolValue: Bool {
        get {
            return _value ?? false
        }
        set {
            _value = newValue
        }
    }
}


