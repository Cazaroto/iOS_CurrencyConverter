//
//  Currency_ConverterApp.swift
//  Currency Converter
//
//  Created by Danilo Cazaroto de Oliveira on 23/03/23.
//

import SwiftUI

@main
struct Currency_ConverterApp: App {
    var body: some Scene {
        WindowGroup {
            ConverterView(selectedCurrency1: Currency.init(id: 1, description: "USD"), selectedCurrency2: Currency.init(id: 2, description: "CAD"))
        }
    }
}
