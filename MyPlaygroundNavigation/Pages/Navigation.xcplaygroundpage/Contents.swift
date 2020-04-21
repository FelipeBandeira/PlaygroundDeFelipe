import UIKit
import PlaygroundSupport

class FirstViewController: UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .purple
        
        let button = UIButton(frame: CGRect(x: 60, y: 100, width: 250, height: 100))
        button.setTitle("Exibir SecondViewController", for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        
        view.addSubview(button)
        self.view = view
    }
    
    @objc func tapButton() {
        print("Apertou botão da FirstViewController")
        //show(secondViewController, sender: nil)
        present(secondViewController, animated: true, completion: nil)
    }
}

class SecondViewController: UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .blue
        
        let button = UIButton(frame: CGRect(x: 60, y: 400, width: 250, height: 100))
        button.setTitle("Exibir ThirdViewController", for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        
        view.addSubview(button)
        self.view = view
    }
    
    @objc func tapButton() {
        print("Apertou botão da SecondViewController")
        show(thirdViewController, sender: nil)
    }
}

class ThirdViewController: UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .yellow
        
        let button = UIButton(frame: CGRect(x: 60, y: 400, width: 250, height: 100))
        button.setTitle("Exibir SecondViewController", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        
        view.addSubview(button)
        self.view = view
    }
    
    @objc func tapButton() {
        print("Apertou botão da ThirdViewController")
        dismiss(animated: true, completion: nil)

    }
}


let firstViewController = FirstViewController()

let secondViewController = SecondViewController()
//secondViewController.modalPresentationStyle = .fullScreen

let thirdViewController = ThirdViewController()
thirdViewController.modalPresentationStyle = .fullScreen

PlaygroundPage.current.liveView = firstViewController

//: -------------
//: ## Perguntas norteadoras
//: - Qual é a diferença de usarmos *present()* para voltar para voltar para outra tela ao invés de *dismiss()*?
//: - Qual é a diferença de usarmos *present()* ao invés de *show()*?
//: - Como faço para exibir uma tela de forma modal ocupando a tela toda?
//: ----------
