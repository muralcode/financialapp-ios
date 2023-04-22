//
//  FinancialApp.swift
//  FinancialApp
//
//  Author/Engineer: Lerato Mokoena on 21/04/2023.
//

import SwiftUI

@main
struct FinancialApp: App {

    @StateObject private var model = CreateAccountViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
