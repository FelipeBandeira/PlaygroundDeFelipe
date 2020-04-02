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

class MyViewController : UIViewController {
    
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
        
        let mainQuestion = UILabel()
        mainQuestion.frame = CGRect(x: 403, y: 252, width: 559, height: 95)
        mainQuestion.text = "O que você busca?"
        mainQuestion.textColor = .black
        let fonteDaQuestion = UIFont(name: "PT Sans", size: 70)
        mainQuestion.font = fonteDaQuestion
        
        
        let imagemDePratoFeito = UIImage(named: "Macarronada.jpg")
        let botaoDePratoFeito = UIButton()
        botaoDePratoFeito.frame = CGRect(x: 136, y: 441, width: 473, height: 426)
        botaoDePratoFeito.setImage(imagemDePratoFeito, for: .normal)
        
        let imagemDeIngredientes = UIImage(named: "Ingredientes.jpg")
        let botaoDeIngredientes = UIButton()
        botaoDeIngredientes.frame = CGRect(x: 767, y: 441, width: 473, height: 426)
        botaoDeIngredientes.setImage(imagemDeIngredientes, for: .normal)
        
        
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

