//
//  Conta.swift
//  LearningTask-6.2
//
//  Created by rafael.rollo on 22/04/2022.
//

import Foundation

struct Conta {
    let saldo: Decimal
    let montanteInvestido: Decimal
    let rendimentoMensalAtual: Decimal
    var historico: [Transacao]
    
    init(saldoInicial: Decimal, montanteInvestido: Decimal,
         rendimentoMensalAtual: Decimal, historico: [Transacao] = []) {
        self.saldo = saldoInicial
        self.montanteInvestido = montanteInvestido
        self.rendimentoMensalAtual = rendimentoMensalAtual
        self.historico = historico
    }
}
