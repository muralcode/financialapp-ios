//
//  Optional+Extension.swift
//  FinancialApp
//
//  Author/Engineer: Lerato Mokoena on 22/04/2023.
//  Copyright © 2023 Arurea Murals. All rights reserved.
//

import Foundation

extension Optional where Wrapped == String {
    var _value: String? {
        get {
            return self
        }
        set {
            self = newValue
        }
    }

    public var value: String {
        get {
            return _value ?? ""
        }
        set {
            _value = newValue.isEmpty ? nil : newValue
        }
    }
}
