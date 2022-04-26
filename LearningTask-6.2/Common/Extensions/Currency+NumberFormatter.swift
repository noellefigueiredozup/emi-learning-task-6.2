//
//  Currency+NumberFormatter.swift
//  LearningTask-6.2
//
//  Created by rafael.rollo on 22/04/2022.
//

import Foundation

extension NumberFormatter {
    
    private static var currencyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "pt_BR")
        return formatter
    }()
    
    static func formatToCurrency(decimal: Decimal) -> String {
        return currencyFormatter.string(from: decimal as NSDecimalNumber)!
    }
    
}

extension Decimal {
    typealias FormattedText = String
    
    var asCurrency: FormattedText {
        return NumberFormatter.formatToCurrency(decimal: self)
    }
}
