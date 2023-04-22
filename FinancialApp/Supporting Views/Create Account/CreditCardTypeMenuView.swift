//
//  CreditCardTypeMenuView.swift
//  FinancialApp
//
//  Author/Engineer: Lerato Mokoena on 21/04/2023.
//  Copyright © 2023 Arurea Murals. All rights reserved.
//

import SwiftUI

struct CreditCardTypeMenuView: View {
    let logos = [
        "mc-logo-selector",
        "visa-logo-selector",
        "am-logo-selector"
    ]


    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 3) {
                Text("SELECT A CARD TYPE")
                    .customFont(.custom(.bold, 18))
                    .foregroundColor(.basePrussianBlue)
                    .padding(.leading, 10)

                Divider()
            }.padding(.top, 15)

            HStack {
                ForEach(0..<logos.count) { index in
                    Button(action:{ }) {
                        VStack {
                            Image(self.logos[index])
                            Image("checkmark-outline-selector")
                        }
                    }
                    .buttonStyle(CreditCardStyle())
                }
            }.padding(.top, 20)
        }.background(Color.clear)
    }
}

struct CreditCardTypeMenuView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardTypeMenuView()
            .previewLayout(.fixed(width: 400, height: 180))
    }
}
