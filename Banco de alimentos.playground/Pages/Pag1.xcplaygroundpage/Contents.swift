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
        appName.frame = CGRect(x: 42, y: 42, width: 361, height: 68)
        appName.text = "Banco de Alimentos"
        appName.textColor = .black
        
        let mainQuestion = UILabel()
        mainQuestion.frame = CGRect(x: 403, y: 252, width: 559, height: 95)
        mainQuestion.text = "O que você busca?"
        mainQuestion.textColor = .black
        
        let imagemDePratoFeito = UIImage(named: "Macarronada.jpg")
        let botaoDePratoFeito = UIButton()
        botaoDePratoFeito.frame = CGRect(x: 136, y: 441, width: 473, height: 426)
       // botaoDePratoFeito.setTitle("Prato feito", for: .normal)
        //botaoDePratoFeito.setTitleColor(.black, for: .normal)
        botaoDePratoFeito.setImage(imagemDePratoFeito, for: .normal)
        //botaoDePratoFeito.imageRect(forContentRect: CGRect(x: 722, y: 377, width: 354, height: 324))
        
        let imagemDeIngredientes = UIImage(named: "Ingredientes.jpg")
        let botaoDeIngredientes = UIButton()
        botaoDeIngredientes.frame = CGRect(x: 767, y: 441, width: 473, height: 426)
        //botaoDeIngredientes.setTitle("Ingredientes", for: .normal)
        //botaoDeIngredientes.setTitleColor(.black, for: .normal)
        botaoDeIngredientes.setImage(imagemDeIngredientes, for: .normal)
        //botaoDeIngredientes.imageRect(forContentRect: CGRect(x: 142, y: 377, width: 352, height: 324))
        
        
        
        view.addSubview(appName)
        view.addSubview(mainQuestion)
        view.addSubview(botaoDePratoFeito)
        view.addSubview(botaoDeIngredientes)
        self.view = view
        
       
        
    }
}
let mvc = MyViewController(screenType: .ipadPro12_9, isPortrait: false)
          //mvc.preferredContentSize = CGSize(width: 768, height: 1024)
PlaygroundPage.current.liveView = mvc.scale(to: 0.3)
//: [Next](@next)

