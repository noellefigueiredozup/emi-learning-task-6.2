//
//  ViewController.swift
//  LearningTask-6.2
//
//  Created by rafael.rollo on 20/04/2022.
//

import UIKit

class ContaViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TransacaoCell", for: indexPath) as? TransacaoTableViewCell else {
            fatalError("Não foi possível obter célula com identificador TransacaoCell para a tabela.")
        }
        let transacao = Transacao(tipo: .transferenciaRecebida(.pix), valor: 200, interessado: "Alberto Souza")
        cell.setup(transacao)
        return cell
    }
    
    
    
}
