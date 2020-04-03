//: [Previous](@previous)

import Foundation

import UIKit
import PlaygroundSupport

var cfURL = Bundle.main.url(forResource: "PTSans-Bold", withExtension: "ttf")! as CFURL
  CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

cfURL = Bundle.main.url(forResource: "PTSans-BoldItalic", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

cfURL = Bundle.main.url(forResource: "PTSans-Italic", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

cfURL = Bundle.main.url(forResource: "PTSans-Regular", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

class MyViewController2 : UIViewController {
    
    let button = UIButton()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        
        let appName = UILabel()
        appName.frame = CGRect(x: 42, y: 42, width: 361, height: 68)
        appName.text = "Banco alimentar"
        appName.textColor = .black
        let fonteDoAppName = UIFont (name: "PT Sans", size: 50)
        appName.font = fonteDoAppName
        
        let anuncioDeDisponibilidade = UILabel()
        anuncioDeDisponibilidade.frame = CGRect(x: 42, y: 197, width: 582, height: 100)
        anuncioDeDisponibilidade.text = "Hoje perto de você"
        anuncioDeDisponibilidade.textColor = .black
        let fonteDoAnuncio = UIFont (name: "PTSans-Bold", size: 70)
        anuncioDeDisponibilidade.font = fonteDoAnuncio
        
        let descricaoDoAnuncio = UILabel()
        descricaoDoAnuncio.frame = CGRect(x: 42, y: 297, width: 1086, height: 51)
        descricaoDoAnuncio.text = "Esses são os alimentos disponíveis nas proximidades para o dia de hoje."
        descricaoDoAnuncio.textColor = .black
        let fonteDaDescricao = UIFont (name: "PT Sans", size: 35)
        descricaoDoAnuncio.font = fonteDaDescricao
        
        let mainQuestion = UILabel()
        mainQuestion.frame = CGRect(x: 280, y: 455, width: 805, height: 53)
        mainQuestion.text = "Escolha uma das categorias para ver mais"
        mainQuestion.textColor = .black
        let fonteDaQuestion2 = UIFont (name: "PTSans-Bold", size: 45)
        mainQuestion.font = fonteDaQuestion2
        
        
        let imagemDeFrutas = UIImage(named: "Frutas.jpg")
        let botaoDeFrutas = UIButton()
        botaoDeFrutas.frame = CGRect(x: 512, y: 552, width: 341, height: 273)
        botaoDeFrutas.setImage(imagemDeFrutas, for: .normal)
        let labelDeFrutas = UILabel()
        labelDeFrutas.frame = CGRect(x: 624, y: 844, width: 117, height: 37)
        labelDeFrutas.text = "Frutas"
        labelDeFrutas.textColor = .black
        let fonteDeFrutas = UIFont(name: "PTSans-Bold", size: 40)
        labelDeFrutas.font = fonteDeFrutas
        
        
        let imagemDeLegumes = UIImage(named: "Legumes.jpg")
        let botaoDeLegumes = UIButton()
        botaoDeLegumes.frame = CGRect(x: 109, y: 559, width: 342, height: 266)
        botaoDeLegumes.setImage(imagemDeLegumes, for: .normal)
        let labelDeLegumes = UILabel()
        labelDeLegumes.frame = CGRect(x: 198, y: 837, width: 154, height: 37)
        labelDeLegumes.text = "Legumes"
        labelDeLegumes.textColor = .black
        let fonteDeLegumes = UIFont(name: "PTSans-Bold", size: 40)
        labelDeLegumes.font = fonteDeLegumes
        
        
        let imagemDeCarne = UIImage(named: "proteinas.jpg")
        let botaoDeCarnes = UIButton()
        botaoDeCarnes.frame = CGRect(x: 914, y: 552, width: 342, height: 273)
        botaoDeCarnes.setImage(imagemDeCarne, for: .normal)
        let labelDeCarnes = UILabel()
        labelDeCarnes.frame = CGRect(x: 1021, y: 844, width: 117, height: 42)
        labelDeCarnes.text = "Carnes"
        let fonteDeCarnes = UIFont(name: "PTSans-Bold", size: 40)
        labelDeCarnes.font = fonteDeCarnes
       
        
        view.addSubview(appName)
        view.addSubview(anuncioDeDisponibilidade)
        view.addSubview(descricaoDoAnuncio)
        view.addSubview(mainQuestion)
        view.addSubview(botaoDeCarnes)
        view.addSubview(labelDeCarnes)
        view.addSubview(botaoDeFrutas)
        view.addSubview(labelDeFrutas)
        view.addSubview(botaoDeLegumes)
        view.addSubview(labelDeLegumes)
        
        self.view = view
        
    }
}
let mvc = MyViewController2(screenType: .ipadPro12_9, isPortrait: false)
          //mvc.preferredContentSize = CGSize(width: 768, height: 1024)
PlaygroundPage.current.liveView = mvc.scale(to: 0.3)
//: [Next](@next)



//: [Next](@next)
