//
//  AccountHomeView.swift
//  FinancialApp
//
//  Author/Engineer: Lerato Mokoena on 21/04/2023.
//  Copyright © 2023 Arurea Murals. All rights reserved.
//

import SwiftUI

struct AccountHomeView: View {
    var body: some View {
        ZStack {
            Color(.baseLightWhite)
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack {
                    HomeHeaderView()
                    CardView()
                    Divider()
                    AccountSummaryView()
                    HomeSubmenuView()
                }
            }
        }

    }
}

struct AccountHomeView_Previews: PreviewProvider {
    static var previews: some View {
        AccountHomeView()
    }
}
