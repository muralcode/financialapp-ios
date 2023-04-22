//
//  LengthFormatter.swift
//  WatchKit Extension
//
//  Author/Engineer: Lerato Mokoena on 22/04/2023.
//  Copyright © 2023 Arurea Murals. All rights reserved.
//

import Foundation

public struct LengthFormatters {
    public static let imperialLengthFormatter: LengthFormatter = {
        let formatter = LengthFormatter()
        formatter.isForPersonHeightUse = true
        formatter.unitStyle = .short

        return formatter
    }()
}
