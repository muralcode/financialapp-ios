//
//  AccountTypeView.swift
//  FinancialApp
//
//  Author/Engineer: Lerato Mokoena on 22/04/2023.
//  Copyright © 2023 Arurea Murals. All rights reserved.
//

import SwiftUI

struct AccountTypeView: View {

    var body: some View {
        HStack(spacing: 15) {
            ForEach(0..<2) { index in
                Button(action: {}) {
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color.basePrussianBlue)
                                .frame(width: 18, height: 18)
                            Image("checkmark-selector")
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 10, height: 8)
                                .foregroundColor(.white)
                        }

                        Text("Account Types")
                            .customFont(.custom(.medium, 14))
                            .foregroundColor(.baseDustyGray)
                    }
                }.buttonStyle(PlainButtonStyle())
            }
            Spacer()
        }

    }
}

struct AccountTypeView_Previews: PreviewProvider {
    static var previews: some View {
        AccountTypeView()
    }
}
