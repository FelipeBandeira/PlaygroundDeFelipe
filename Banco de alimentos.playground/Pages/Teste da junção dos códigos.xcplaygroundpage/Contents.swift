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
        navigationController?.pushViewController(MyViewController2(), animated: true)
        
    }
    
    
}


class MyViewController2 : UIViewController {
    
    let button = UIButton()
    
    override func viewDidLoad() {
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
        navigationController?.pushViewController(MyViewController3(), animated: true)
        
    }
}

class MyViewController3 : UIViewController {
    
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
        
        let anuncioDoCatalogo = UILabel()
        anuncioDoCatalogo.frame = CGRect(x: 42, y: 193, width: 780, height: 88)
        anuncioDoCatalogo.text = "Catálogo de disponibilidade"
        anuncioDoCatalogo.textColor = .black
        let fonteDoAnuncioDoCatalogo = UIFont (name: "PTSans-Bold", size: 70)
        anuncioDoCatalogo.font = fonteDoAnuncioDoCatalogo
        view.addSubview(anuncioDoCatalogo)
        
        let descricaoDoCatalogo = UILabel()
        descricaoDoCatalogo.frame = CGRect(x: 45, y: 276, width: 288, height: 54)
        descricaoDoCatalogo.text = "Categoria: legumes"
        descricaoDoCatalogo.textColor = .black
        let fonteDaDescricaoDoCatalogo = UIFont (name: "PT Sans", size: 35)
        descricaoDoCatalogo.font = fonteDaDescricaoDoCatalogo
        view.addSubview(descricaoDoCatalogo)
        
        let mainQuestion3 = UILabel()
        mainQuestion3.frame = CGRect(x: 274, y: 452, width: 807, height: 70)
        mainQuestion3.text = "Escolha uma das opções para ver detalhes"
        mainQuestion3.textColor = .black
        let fonteDaQuestion3 = UIFont (name: "PTSans-Bold", size: 45)
        mainQuestion3.font = fonteDaQuestion3
        view.addSubview(mainQuestion3)
        
        let imagemDeCoentro = UIImage(named: "coentro-5.jpg")
        let botaoDeCoentro = UIButton()
        botaoDeCoentro.frame = CGRect(x: 87.05, y: 552, width: 337.7, height: 91.67)
        botaoDeCoentro.setImage(imagemDeCoentro, for: .normal)
        botaoDeCoentro.imageView?.layer.cornerRadius = 10
        view.addSubview(botaoDeCoentro)
        let labelDeCoentro = UILabel()
        labelDeCoentro.frame = CGRect(x: 107, y: 571, width: 142, height: 36)
        labelDeCoentro.text = "Coentro"
        labelDeCoentro.textColor = .white
        let fonteDeCoentro = UIFont(name: "PTSans-Bold", size: 40)
        labelDeCoentro.font = fonteDeCoentro
        view.addSubview(labelDeCoentro)
        
        let imagemDeBeringela = UIImage(named: "sh_beringela_432696973.jpg")
        let botaoDeBeringela = UIButton()
        botaoDeBeringela.frame = CGRect(x: 87.05, y: 687.37, width: 337.7, height: 91.67)
        botaoDeBeringela.setImage(imagemDeBeringela, for: .normal)
        botaoDeBeringela.imageView?.layer.cornerRadius = 10
        view.addSubview(botaoDeBeringela)
        let labelDeBeringela = UILabel()
        labelDeBeringela.frame = CGRect(x: 107, y: 703, width: 167, height: 48)
        labelDeBeringela.text = "Beringela"
        labelDeBeringela.textColor = .white
        let fonteDeBeringela = UIFont(name: "PTSans-Bold", size: 40)
        labelDeBeringela.font = fonteDeBeringela
        view.addSubview(labelDeBeringela)
        
        let imagemDeCebolaRoxa = UIImage(named: "cebola-roxa-768x307-b88dde90.jpg")
        let botaoDeCebolaRoxa = UIButton()
        botaoDeCebolaRoxa.frame = CGRect(x: 86, y: 831.27, width: 338.75, height: 92.73)
        botaoDeCebolaRoxa.setImage(imagemDeCebolaRoxa, for: .normal)
        botaoDeCebolaRoxa.imageView?.layer.cornerRadius = 10
        view.addSubview(botaoDeCebolaRoxa)
        let labelDeCebolaRoxa = UILabel()
        labelDeCebolaRoxa.frame = CGRect(x: 107, y: 850, width: 205, height: 56)
        labelDeCebolaRoxa.text = "Cebola Roxa"
        labelDeCebolaRoxa.textColor = .white
        let fonteDeCebolaRoxa = UIFont(name: "PTSans-Bold", size: 40)
        labelDeCebolaRoxa.font = fonteDeCebolaRoxa
        view.addSubview(labelDeCebolaRoxa)
        
        let imagemDeCenoura = UIImage(named: "beneficios-da-cenoura_14186_l.jpg")
        let botaoDeCenoura = UIButton()
        botaoDeCenoura.frame = CGRect(x: 514.18, y: 552, width: 337.7, height: 91.67)
        botaoDeCenoura.setImage(imagemDeCenoura, for: .normal)
        botaoDeCenoura.imageView?.layer.cornerRadius = 10
        view.addSubview(botaoDeCenoura)
        let labelDeCenoura = UILabel()
        labelDeCenoura.frame = CGRect(x: 552, y: 571, width: 146, height: 33)
        labelDeCenoura.text = "Cenoura"
        labelDeCenoura.textColor = .white
        let fonteDeCenoura = UIFont(name: "PTSans-Bold", size: 40)
        labelDeCenoura.font = fonteDeCenoura
        view.addSubview(labelDeCenoura)
        
        self.view = view
        
    }
}


let mnc = UINavigationController(screenType: .ipadPro12_9, isPortrait: false)
mnc.pushViewController(MyViewController(), animated: true)
PlaygroundPage.current.liveView = mnc.scale(to: 0.3)
