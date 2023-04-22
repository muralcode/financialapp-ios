//
//  Card+Extension.swift
//  FinancialApp
//
//  Author/Engineer: Lerato Mokoena on 6/30/20.
//  Copyright © 2023 Arurea Murals. All rights reserved.
//

import Foundation

extension Card {
    public var cardExpDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/yy"
        return formatter.string(from: self.expirationDate ?? Date())
    }
}
