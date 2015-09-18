//
//  ViewController.swift
//  Testesss
//
//  Created by Gabriela  Gomes Pires on 09/09/15.
//  Copyright (c) 2015 Gabriela Gomes Pires. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //variavel que define qundo a palavra será separada.
    let separadorDasPalavras = NSCharacterSet(charactersInString: " ")
    
    @IBOutlet var txtFrase: UITextField!
    @IBOutlet weak var lblConvertido: UILabel!
    
    //lista de palavras para teste
    var sujeitoLista = ["eu", "você", "Mayara","Bruno", "André", "Gabi"]
    var verboLista = ["ir", "comprar", "gostar"]
    var objetoLista = ["banana", "surfar"]
    var tempoLista = ["amanhã", "hoje"]
    var lugarLista = ["mercado", "praia"]
    
    //frase digitada pelo usuário.
    var frase: String = "";
    
    //variaveis.
    var count = 0
    var palavra: [String] = []
    var fraseOrganizada : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //separa a frase em palavras.
        palavra = frase.componentsSeparatedByCharactersInSet(separadorDasPalavras)

        verifica(sujeitoLista)
        verifica(verboLista)
        verifica(objetoLista)
        verifica(lugarLista)
        verifica(tempoLista)
        apareceNaTela()
    }
    
    func verifica(lista : [String]){
        for i in 0...palavra.count - 1{
            if lista.contains(palavra[i]){
                fraseOrganizada.append(palavra[i])
                count = count + 1
            }
        }
    }
    
    @IBAction func btnTraduzir(sender: AnyObject) {
        self.frase = txtFrase.text!
        
    }
    
    func apareceNaTela(){
        print("Frase Librês: " + frase)
        print("Frase Português: ", terminator: "")
        for i in 0...fraseOrganizada.count - 1{
            print(fraseOrganizada[i] + " ", terminator: "")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

