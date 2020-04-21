//:# Navegação Horizontal
//: ## O UIViewController de exemplo
//: Utilizamos uma tela apenas com cores de fundo como exemplo. A cor padrão é [Flicts](https://pt.wikipedia.org/wiki/Flicts).
import UIKit
import PlaygroundSupport

class ColorViewController: UIViewController {
    var color: UIColor = #colorLiteral(red: 0.831372549, green: 0.568627451, blue: 0.1490196078, alpha: 1)
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = self.color
        self.view = view
    }
}

//: --------------
//: ## As telas que exibiremos
//: Criamos um ColorViewController para cada tela que exibiremos.

//: A primeira tela terá a cor padrão, flicts. Damos um título para ela também.
//: + Como o título afeta a exibição dela na tab bar?

let flicts = ColorViewController()
flicts.title = "Flicts"

//: A segunda tela será vermelha. Configuramos o título e a cor dela.
// the red controller
let vermelho = ColorViewController()
vermelho.color = .red
vermelho.title = "Red"
//: Também criamos um UITabBarItem para ela, a partir de um item padrão do sistema.
//: + Como o título afeta o TabBarItem nesse caso?
vermelho.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)

//: A terceira tela será verde, de cor e de título.
// the green controller
let verde = ColorViewController()
verde.color = .green
verde.title = "Verde"

//: Dessa vez criamos um UITabBarItem a partir de uma UIImage, mas com título nil.
//: + Que tipos de imagens podemos/devemos utilizar em itens da TabBar?
//: + Como ter um título *nil* para o item afeta sua exibição?
let itemImage = UIImage(systemName: "paperplane")
verde.tabBarItem = UITabBarItem(title: nil, image: itemImage, tag: 0)

//: Por último, temos uma tela azul.
// the blue controller
let azul = ColorViewController()
azul.color = .blue
azul.title = "Blue"

//: Criamos novamente uma imagem, mas apenas modificamos o valor de imagem de um UITabBarItem já existente na tela. Configuramos também uma outra propriedade.
//: + Precisamos criar itens para cada tela sempre? Quando devemos criá-los?
//: + O que são badges? Como podem afetar meus apps?
let blueItemImage = UIImage(systemName: "moon.fill")
azul.tabBarItem.image = blueItemImage
azul.tabBarItem.badgeValue = "1"


//: -----------
//: ## Organizando a navegação horizontal
//: Criamos um array com nossas telas.
let viewControllers = [ /* suas telas */
    flicts,
    vermelho,
    verde,
    azul
]

//: Podemos criar agora nosso Tab Bar Controller, e configurar quem são as telas controladas por esse tab bar.
let tabBarController = UITabBarController()
tabBarController.viewControllers = viewControllers
PlaygroundPage.current.liveView = tabBarController

//: -------------
//: ## Perguntas norteadoras
//: - A função *loadView()* de cada tela é chamada apenas quando a tela precisa exibida, ou quando o tabBarController vai ser carregado?
//: - De mesma forma, quando é chamada a função *viewDidLoad()*?
//: - Ainda, quando é chamada a função *viewDidAppear()* para cada tela?
//: - Como a função *viewDidAppear()* pode ser usada com badges?
//: ----------

//: ## Páginas associadas:
//: * [Navegação](Navigation)
//: * [Navegação Hierárquica](UINavigationController)
