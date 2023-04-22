//
//  HomeHeaderView.swift
//  FinancialApp
//
//  Author/Engineer: Lerato Mokoena on 21/04/2023.
//  Copyright © 2023 Arurea Murals. All rights reserved.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: -8) {
                Text("Hi, Lerato Mokoena")
                    .customFont(.custom(.bold, 24))
                Text("Welcome to your favorite app.")
                    .customFont(.custom(.demibold, 16))
            }.foregroundColor(.basePrussianBlue)
            Spacer()
            Image("avatar")
        }.padding(.horizontal, 20)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}

