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
let mvc3 = MyViewController3(screenType: .ipadPro12_9, isPortrait: false)
          //mvc.preferredContentSize = CGSize(width: 768, height: 1024)
PlaygroundPage.current.liveView = mvc3.scale(to: 0.3)
//: [Next](@next)
