//
//  AccountSummaryView.swift
//  FinancialApp
//
//  Author/Engineer: Lerato Mokoena on 21/04/2023.
//  Copyright © 2023 Arurea Murals. All rights reserved.
//

import SwiftUI

struct AccountSummaryView: View {
    private var type = "creditcard"

    var body: some View {
        VStack {
            if type == "creditcard" {
                creditcard
            } else {
                Text("Debit code here")
            }
        }
        .padding(.horizontal, 10)
        .onAppear {
            UITableView.appearance().tableFooterView = UIView()
            UITableView.appearance().backgroundColor = UIColor.clear
        }
    }
}

struct AccountSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSummaryView()
    }
}

private extension AccountSummaryView {
    var creditcard: some View {
        VStack {
            VStack {
                VStack(spacing: 0) {
                    HStack {
                        Text("ACCOUNT")
                            .customFont(.custom(.bold, 20))
                            .foregroundColor(.basePrussianBlue)
                        Spacer()
                        Text("****  ****  ****  2864")
                            .customFont(.custom(.medium, 15))
                            .foregroundColor(.gray)
                    }

                    Divider()
                }

                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Credit Utilized")
                            .customFont(.custom(.medium, 12))
                            .foregroundColor(.gray)
                        Text("R9999")
                            .customFont(.custom(.bold, 20))
                            .foregroundColor(.basePrussianBlue)
                    }
                    Spacer()
                    VStack(alignment: .trailing, spacing: 0) {
                        Text("Available Credit Limit")
                            .customFont(.custom(.medium, 12))
                            .foregroundColor(.gray)

                        Text("R999,999")
                            .customFont(.custom(.bold, 20))
                            .foregroundColor(.basePrussianBlue)
                    }
                }
                .padding(.top, 10)

                ZStack(alignment: .leading) {
                    Rectangle()
                        .fill(Color.baseMediumGray)
                        .cornerRadius(4.5)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 10)

                    Rectangle()
                        .fill(Color.basePrussianBlue)
                        .cornerRadius(4.5)
                        .frame(width:120, height: 10)
                }
                .padding(.bottom)
            }
            .padding(.horizontal, 10)

            Divider()

            List {
                HStack {
                    Text("Last Bill Amount")
                        .customFont(.custom(.bold, 14))
                        .foregroundColor(.basePrussianBlue)
                    Spacer()
                    Text("R 2300")
                        .customFont(.custom(.medium, 14))
                        .foregroundColor(.gray)
                }.listRowBackground(Color.baseWhite)

                HStack {
                    Text("Payment Due Date")
                        .customFont(.custom(.bold, 14))
                        .foregroundColor(.basePrussianBlue)
                    Spacer()
                    Text("Aug 25, 2023")
                        .customFont(.custom(.medium, 14))
                        .foregroundColor(.gray)
                }.listRowBackground(Color.baseWhite)

                HStack {
                    Text("Min. Amount Due Date")
                        .customFont(.custom(.bold, 14))
                        .foregroundColor(.basePrussianBlue)
                    Spacer()
                    Text("R 130")
                        .customFont(.custom(.medium, 14))
                        .foregroundColor(.gray)
                }.listRowBackground(Color.baseWhite)
            }
            .frame(height: 150)

        }
        .padding(.top, 10)
        .background(Color.baseWhite)
    }

    var debitcard: some View {
        VStack {
            VStack(spacing: 0) {
                HStack {
                    Text("TRANSACTIONS")
                        .customFont(.custom(.bold, 20))
                        .padding(.bottom, 2)
                        .foregroundColor(.basePrussianBlue)
                    Spacer()
                }

                Divider().padding(.bottom, 10)
            }

            VStack {
                ForEach(0 ..< 3) { _ in
                    TransactionItemView()
                }
            }.padding(.horizontal, 10)
        }.padding(.horizontal, 10)

    }

}
