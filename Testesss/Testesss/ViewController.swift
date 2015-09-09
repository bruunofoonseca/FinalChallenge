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
    
    //lista de palavras para teste
    var sujeitoLista = ["eu", "você", "Mayara","Bruno", "André", "Gabi"]
    var verboLista = ["ir", "comprar", "gostar"]
    var objetoLista = ["banana", "surfar"]
    var tempoLista = ["amanhã", "hoje"]
    var lugarLista = ["mercado", "praia"]
    
    //frase digitada pelo usuário.
    var frase: String = "eu mercado amanhã Mayara ir";
    
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
            if contains(lista, palavra[i]){
                fraseOrganizada.append(palavra[i])
                count = count + 1
            }
        }
    }
    
    func apareceNaTela(){
        println("Frase Librês: " + frase)
        print("Frase Português: ")
        for i in 0...fraseOrganizada.count - 1{
            print(fraseOrganizada[i] + " ")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

