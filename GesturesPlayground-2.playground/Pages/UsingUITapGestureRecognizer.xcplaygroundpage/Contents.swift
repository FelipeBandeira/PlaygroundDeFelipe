/*: # Toques, pressões e gestos!
 ## UIGestureRecognizer
 ---
 ### De modo geral, para utilizar o UIGestureRecognizer seguimos os seguintes passos:
 1. Criar um *reconhecedor de gestos*, a.k.a. gesture recognizers - Ao criar um reconhecedor de gestos, você especifica um destino e uma ação para que o reconhecedor de gestos possa enviar atualizações quando o gesto for iniciado, alterado ou encerrado.
 2. Adicionar o reconhecedor de gestos a uma View - Você pode associar cada reconhecedor de gestos a uma e apenas uma única View. Quando um toque ocorre dentro dos limites dessa View, o reconhecedor de gestos verifica se ele corresponde ao tipo de toque que está procurando. Se for o correto, notifica o alvo (*target*).
 */
/*:
---
## UITapGestureRecognizer
---
### Exemplo:
Temos o seguinte `ViewController`
 */
import PlaygroundSupport
import UIKit

class ViewController: UIViewController {
    override func loadView() {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
        
//: Definimos nossa imagem de macaco que irá receber o gesto:
        let monkey = UIImage(named: "monkey.png")
        let monkeyView = UIImageView(image: monkey)
        monkeyView.frame = CGRect(x: 50, y: 250, width: 300, height: 400)
        view.addSubview(monkeyView)
        
//: E para adicionar o gesto de toque na `monkeyView`:
//: 1. Primeiro precisamos ativar as interações do usuário
        monkeyView.isUserInteractionEnabled = true
//: 2. Criamos o reconhecedor de toque e adicionamos em `monkeyView`
        let tapMonkey = UITapGestureRecognizer(target: self, action: #selector(handleTap))
//: 3. Adicionamos o reconhecedor de toque em `monkeyView`
        monkeyView.addGestureRecognizer(tapMonkey)
        
//: Finalizamos com as devidas configurações da view no viewController
        self.view = view
    }
//: E agora precisamos implementar a funções de toque:
    @objc func handleTap(_ gesture: UIGestureRecognizer) {
        print("Macaco foi tocado!")
    }
    
/*:
Agora para teste, basta tocar no macaco e ver que ele foi tocado!
*/
}

PlaygroundPage.current.liveView = ViewController()

//: [Próximo](@next)
