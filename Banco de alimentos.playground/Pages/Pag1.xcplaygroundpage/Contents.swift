//: [Previous](@previous)

import Foundation

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    let button = UIButton()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        
        let appName = UILabel()
        appName.frame = CGRect(x: 30, y: 21, width: 503, height: 47)
        appName.text = "Banco de Alimentos"
        appName.textColor = .black
        
        let mainQuestion = UILabel()
        mainQuestion.frame = CGRect(x: 382, y: 216, width: 539, height: 79)
        mainQuestion.text = "O que você busca?"
        mainQuestion.textColor = .black
        
        let imagemDePratoFeito = UIImage(named: "Macarronada.jpg")
        let botaoDePratoFeito = UIButton()
        botaoDePratoFeito.frame = CGRect(x: 142, y: 377, width: 371, height: 376)
        botaoDePratoFeito.setTitle("Prato feito", for: .normal)
        botaoDePratoFeito.setTitleColor(.black, for: .normal)
        botaoDePratoFeito.setImage(imagemDePratoFeito, for: .normal)
        
        let imagemDeIngredientes = UIImage(named: "Ingredientes.jpg")
        let botaoDeIngredientes = UIButton()
        botaoDeIngredientes.frame = CGRect(x: 642.21, y: 413, width: 455.56, height: 325)
        botaoDeIngredientes.setTitle("Ingredientes", for: .normal)
        botaoDeIngredientes.setTitleColor(.black, for: .normal)
        botaoDeIngredientes.setImage(imagemDeIngredientes, for: .normal)
        
        
        
        view.addSubview(appName)
        view.addSubview(mainQuestion)
        view.addSubview(botaoDePratoFeito)
        view.addSubview(botaoDeIngredientes)
        self.view = view
        
       
        
    }
}
let mvc = MyViewController()
          mvc.preferredContentSize = CGSize(width: 768, height: 1024)
          PlaygroundPage.current.liveView = mvc
//: [Next](@next)
