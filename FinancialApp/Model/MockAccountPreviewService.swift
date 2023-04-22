//
//  MockAccountPreviewService.swift
//  FinancialApp
//
//  Author/Engineer: Lerato Mokoena on 21/04/2023.
//  Copyright © 2023 Arurea Murals. All rights reserved.
//

import Foundation


struct MockAccountPreviewService {
    static let mockData = CoreDataManager.shared.context

     // Checking Account
    static var checkingAccount: Account = {
        let account = Account(context: mockData)
        account.acctNumber = "99999"
        account.balance = 9000.00
        account.firstName = "Test"
        account.lastName = "Last"
        account.type = "Checking"
        account.card = visaCard
        return account
    }()

    // Credit Account
    static var creditAccount: Account = {
        let account = Account(context: mockData)
        account.acctNumber = "99999"

        account.balance = 99000.00
        account.firstName = "Test"
        account.lastName = "Last"
        account.type = "Credit Card"
        account.card = amexCard
        return account
    }()

    static var visaCard: Card = {
        let card = Card(context: mockData)
        card.color = "#000000"
        card.cvv = "681"
        card.dateCreated = Date()
        card.expirationDate = Date()
        card.logo = "visa-logo"
        return card
    }()

    static var amexCard: Card = {
        let card = Card(context: mockData)
        card.color = "#000000"
        card.cvv = "341"
        card.dateCreated = Date()
        card.expirationDate = Date()
        card.logo = "amex-logo"
        return card
    }()
}
