//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let titulo = UILabel()
        titulo.frame = CGRect(x: 0, y: 0, width: 1024, height: 100)
        titulo.text = "Banco de alimentos)"
        titulo.textColor = #colorLiteral(red: 0.8784313725, green: 0.8274509804, blue: 0.2705882353, alpha: 1)
        
        let pergunta = UILabel()
        pergunta.frame = CGRect(x: 382, y: 216, width: 539, height: 79)
        pergunta.text = "O que você busca?"
        pergunta.textColor = .black
        
        let fotoDeMacarronada = UIImage(named: "Macarronada.jpg")
        let botaoDePratoFeito = UIButton()
        botaoDePratoFeito.frame = CGRect(x: 142, y: 377, width: 371, height: 376)
        botaoDePratoFeito.setTitle("Prato feito", for: .normal)
        botaoDePratoFeito.setTitleColor(.black, for: .normal)
        botaoDePratoFeito.setImage(fotoDeMacarronada, for: .normal)
        
        let fotoDeIngredientes = UIImage(named: "Ingredientes.jpg")
        let botaoDeIngredientes = UIButton()
        botaoDeIngredientes.frame = CGRect(x: 642.21, y: 413, width: 455.56, height: 325)
        botaoDeIngredientes.setTitle("Ingredientes", for: .normal)
        botaoDeIngredientes.setTitleColor(.black, for: .normal)
        botaoDeIngredientes.setImage(fotoDeIngredientes, for: .normal)
        
        
        
        
        
        view.addSubview(titulo)
        view.addSubview(pergunta)
        view.addSubview(botaoDePratoFeito)
        view.addSubview(botaoDeIngredientes)
        self.view = view
    }
}
// Present the view controller in the Live View window
let viewController = MyViewController()
viewController.preferredContentSize = CGSize(width: 1024, height: 768)
PlaygroundPage.current.liveView = viewController
