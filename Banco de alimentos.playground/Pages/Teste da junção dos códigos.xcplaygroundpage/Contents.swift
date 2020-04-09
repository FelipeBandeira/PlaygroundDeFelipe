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


for name in UIFont.familyNames {
   print(name)
}

for family in UIFont.familyNames.sorted(){
    let names = UIFont.fontNames(forFamilyName: family)
    print ("Family: \(family) Font names:\(names)")
}

class MyViewController : UIViewController {
    
    let button = UIButton()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        // 1) Crio uma variável para armazenar a label; 2) defino o tamanho da label; 3) defino seu texto; 4) defino a cor do texto. Depois 5) crio uma variável para receber minha fonte customizada; 6) abro a configuração de fonte da label e 7) faço ela receber minha variável que carrega a fonte customizada
        let appName = UILabel()
        appName.frame = CGRect(x: 42, y: 42, width: 361, height: 68)
        appName.text = "Banco alimentar"
        appName.textColor = .black
        let fonteDoAppName = UIFont (name: "PT Sans", size: 50)
        appName.font = fonteDoAppName
        view.addSubview(appName)
        
        let mainQuestion = UILabel()
        mainQuestion.frame = CGRect(x: 403, y: 252, width: 559, height: 95)
        mainQuestion.text = "O que você busca?"
        mainQuestion.textColor = .black
        let fonteDaQuestion = UIFont(name: "PTSans-Bold", size: 70)
        mainQuestion.font = fonteDaQuestion
        view.addSubview(mainQuestion)
        
        
        let imagemDePratoFeito = UIImage(named: "Macarronada.jpg")
        let botaoDePratoFeito = UIButton()
        botaoDePratoFeito.frame = CGRect(x: 136, y: 441, width: 473, height: 426)
        botaoDePratoFeito.setImage(imagemDePratoFeito, for: .normal)
        botaoDePratoFeito.imageView?.layer.cornerRadius = 10
        view.addSubview(botaoDePratoFeito)
        let labelDoBotaoDePratoFeito = UILabel()
        labelDoBotaoDePratoFeito.frame = CGRect(x: 244, y: 876, width: 243, height: 55)
        labelDoBotaoDePratoFeito.text = "Prato feito"
        labelDoBotaoDePratoFeito.textColor = .black
        let fonteDoBotao = UIFont (name: "PTSans-Bold", size: 45)
        labelDoBotaoDePratoFeito.font = fonteDoBotao
        view.addSubview(labelDoBotaoDePratoFeito)
        
        // 1) Crio uma variável para receber a imagem que usarei; 2) crio o botão, configuro seu tamanho e coloco nele a imagem que quero, já implementando o corner radius; 3) crio e configuro a label do botão; 4) implemento a funcionalidade do botão
        let imagemDeIngredientes = UIImage(named: "Ingredientes.jpg")
        let botaoDeIngredientes = UIButton()
        botaoDeIngredientes.frame = CGRect(x: 767, y: 441, width: 473, height: 426)
        botaoDeIngredientes.setImage(imagemDeIngredientes, for: .normal)
        botaoDeIngredientes.imageView?.layer.cornerRadius = 10
        view.addSubview(botaoDeIngredientes)
        let labelDeIngredientes = UILabel()
        labelDeIngredientes.frame = CGRect(x: 883, y: 876, width: 242, height: 64)
        labelDeIngredientes.text = "Ingredientes"
        let fonteDeIngredientes = UIFont(name: "PTSans-Bold", size: 45)
        labelDeIngredientes.font = fonteDeIngredientes
        view.addSubview(labelDeIngredientes)
        
        botaoDeIngredientes.addTarget(nil, action: #selector(tocarBotao), for: .touchUpInside)
        
        self.view = view
        
    }
    
    @objc func tocarBotao() {
        present(MyViewController2, animated: true, completion: nil)
    }
    
    
}
let mvc = MyViewController(screenType: .ipadPro12_9, isPortrait: false)
          //mvc.preferredContentSize = CGSize(width: 768, height: 1024)
PlaygroundPage.current.liveView = mvc.scale(to: 0.3)
//: [Next](@next)

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
        view.addSubview(appName)
        
        let anuncioDeDisponibilidade = UILabel()
        anuncioDeDisponibilidade.frame = CGRect(x: 42, y: 197, width: 582, height: 100)
        anuncioDeDisponibilidade.text = "Hoje perto de você"
        anuncioDeDisponibilidade.textColor = .black
        let fonteDoAnuncio = UIFont (name: "PTSans-Bold", size: 70)
        anuncioDeDisponibilidade.font = fonteDoAnuncio
        view.addSubview(anuncioDeDisponibilidade)
        
        let descricaoDoAnuncio = UILabel()
        descricaoDoAnuncio.frame = CGRect(x: 42, y: 297, width: 1086, height: 51)
        descricaoDoAnuncio.text = "Esses são os alimentos disponíveis nas proximidades para o dia de hoje."
        descricaoDoAnuncio.textColor = .black
        let fonteDaDescricao = UIFont (name: "PT Sans", size: 35)
        descricaoDoAnuncio.font = fonteDaDescricao
        view.addSubview(descricaoDoAnuncio)
        
        let mainQuestion = UILabel()
        mainQuestion.frame = CGRect(x: 280, y: 455, width: 805, height: 53)
        mainQuestion.text = "Escolha uma das categorias para ver mais"
        mainQuestion.textColor = .black
        let fonteDaQuestion2 = UIFont (name: "PTSans-Bold", size: 45)
        mainQuestion.font = fonteDaQuestion2
        view.addSubview(mainQuestion)
        

        let imagemDeFrutas = UIImage(named: "Frutas.jpg")
        let botaoDeFrutas = UIButton()
        botaoDeFrutas.frame = CGRect(x: 512, y: 552, width: 341, height: 273)
        botaoDeFrutas.setImage(imagemDeFrutas, for: .normal)
        botaoDeFrutas.imageView?.layer.cornerRadius = 10
        view.addSubview(botaoDeFrutas)
        let labelDeFrutas = UILabel()
        labelDeFrutas.frame = CGRect(x: 624, y: 844, width: 117, height: 37)
        labelDeFrutas.text = "Frutas"
        labelDeFrutas.textColor = .black
        let fonteDeFrutas = UIFont(name: "PTSans-Bold", size: 40)
        labelDeFrutas.font = fonteDeFrutas
        view.addSubview(labelDeFrutas)
        
        
        let imagemDeLegumes = UIImage(named: "Legumes.jpg")
        let botaoDeLegumes = UIButton()
        botaoDeLegumes.frame = CGRect(x: 109, y: 559, width: 342, height: 266)
        botaoDeLegumes.setImage(imagemDeLegumes, for: .normal)
        botaoDeLegumes.imageView?.layer.cornerRadius = 10
        view.addSubview(botaoDeLegumes)
        let labelDeLegumes = UILabel()
        labelDeLegumes.frame = CGRect(x: 198, y: 837, width: 154, height: 37)
        labelDeLegumes.text = "Legumes"
        labelDeLegumes.textColor = .black
        let fonteDeLegumes = UIFont(name: "PTSans-Bold", size: 40)
        labelDeLegumes.font = fonteDeLegumes
        view.addSubview(labelDeLegumes)
        
        botaoDeLegumes.addTarget(nil, action: #selector(tocarBotao), for: .touchUpInside)
        
        
        let imagemDeCarne = UIImage(named: "proteinas.jpg")
        let botaoDeCarnes = UIButton()
        botaoDeCarnes.frame = CGRect(x: 914, y: 552, width: 342, height: 273)
        botaoDeCarnes.setImage(imagemDeCarne, for: .normal)
        botaoDeCarnes.imageView?.layer.cornerRadius = 10
        view.addSubview(botaoDeCarnes)
        let labelDeCarnes = UILabel()
        labelDeCarnes.frame = CGRect(x: 1021, y: 844, width: 117, height: 42)
        labelDeCarnes.text = "Carnes"
        let fonteDeCarnes = UIFont(name: "PTSans-Bold", size: 40)
        labelDeCarnes.font = fonteDeCarnes
        view.addSubview(labelDeCarnes)
       
        self.view = view
        
    }
    
    @objc func tocarBotao(){
        present(MyViewController3, animated: true, completion: nil)
        
    }
}

let mvc2 = MyViewController2(screenType: .ipadPro12_9, isPortrait: false)
          //mvc.preferredContentSize = CGSize(width: 768, height: 1024)
PlaygroundPage.current.liveView = mvc2.scale(to: 0.3)
//: [Next](@next)


//: [Next](@next)
