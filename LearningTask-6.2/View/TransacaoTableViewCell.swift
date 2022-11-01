//
//  TransacaoTableViewCell.swift
//  LearningTask-6.2
//
//  Created by Noelle Figueiredo on 01/11/22.
//

import UIKit

class TransacaoTableViewCell: UITableViewCell {

    @IBOutlet weak var transacaoImageView: TransacaoImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var interessadoLabel: UILabel!
    @IBOutlet weak var valorTransacaoLabel: UILabel!
    @IBOutlet weak var subtipoLabel: UILabel!
    
    func setup(_ transacao: Transacao) {
        transacaoImageView.tipoDeTransacao = transacao.tipo
        tituloLabel.text = transacao.tipo.titulo
        dataLabel.text = DateFormatter.format(date: transacao.data, to: .dayPlusAbbreviatedMonth)
        valorTransacaoLabel.text = NumberFormatter.formatToCurrency(decimal: transacao.valor)

        if let interessado = transacao.interessado {
            interessadoLabel.text = interessado
            interessadoLabel.isHidden = false
        }
        
        if let subtipo = transacao.tipo.subtipo {
            subtipoLabel.text = subtipo
            subtipoLabel.isHidden = false
        }
    }
    
    override func prepareForReuse() {
        interessadoLabel.text = nil
        interessadoLabel.isHidden = true
        
        subtipoLabel.text = nil
        subtipoLabel.isHidden = true
    }
}
