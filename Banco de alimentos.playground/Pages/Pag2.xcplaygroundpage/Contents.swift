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
        
        let anuncioDeDisponibilidade = UILabel()
        anuncioDeDisponibilidade.frame = CGRect(x: 42, y: 197, width: 582, height: 100)
        anuncioDeDisponibilidade.text = "Hoje perto de você"
        anuncioDeDisponibilidade.textColor = .black
        
        let descricaoDoAnuncio = UILabel()
        descricaoDoAnuncio.frame = CGRect(x: 42, y: 297, width: 1086, height: 51)
        descricaoDoAnuncio.text = "Esses são os alimentos disponíveis nas proximidades para o dia de hoje."
        descricaoDoAnuncio.textColor = .black
        
        let mainQuestion = UILabel()
        mainQuestion.frame = CGRect(x: 280, y: 455, width: 805, height: 53)
        mainQuestion.text = "Escolha uma das categorias para ver mais"
        mainQuestion.textColor = .black
        
        
        //CONTINUAR A PARTIR DAQUI
        let imagemDePratoFeito = UIImage(named: "Macarronada.jpg")
               let botaoDePratoFeito = UIButton()
               botaoDePratoFeito.frame = CGRect(x: 136, y: 441, width: 473, height: 426)
              // botaoDePratoFeito.setTitle("Prato feito", for: .normal)
               //botaoDePratoFeito.setTitleColor(.black, for: .normal)
               botaoDePratoFeito.setImage(imagemDePratoFeito, for: .normal)
               //botaoDePratoFeito.imageRect(forContentRect: CGRect(x: 722, y: 377, width: 354, height: 324))
        
        view.addSubview(appName)
        view.addSubview(anuncioDeDisponibilidade)
        view.addSubview(descricaoDoAnuncio)
        view.addSubview(mainQuestion)
        
        view.addSubview(botaoDePratoFeito)
        
        self.view = view
        
       
        
    }
}
let mvc = MyViewController(screenType: .ipad, isPortrait: false)
          //mvc.preferredContentSize = CGSize(width: 768, height: 1024)
PlaygroundPage.current.liveView = mvc.scale(to: 0.3)
//: [Next](@next)



//: [Next](@next)
