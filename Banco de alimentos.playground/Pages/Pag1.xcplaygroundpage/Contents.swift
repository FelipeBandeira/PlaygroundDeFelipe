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
        
      //  botaoDeIngredientes.addTarget(nil, action: #selector(tocarBotao), for: .touchUpInside)
        
        self.view = view
        
    }
    
   // @objc func tocarBotao() {
     //   present(MyViewController2, animated: true, completion: nil)
    //}
}
let mvc = MyViewController(screenType: .ipadPro12_9, isPortrait: false)
          //mvc.preferredContentSize = CGSize(width: 768, height: 1024)
PlaygroundPage.current.liveView = mvc.scale(to: 0.3)
//: [Next](@next)

