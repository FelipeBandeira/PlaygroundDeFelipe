/*: # Toques, pressões e gestos!
 ## UIPanGestureRecognizer
 ---
 */
/*:
 ### Incremetando o exemplo anterior:
 ## Vamos agora adicionar movimento a uma banana:
 Para fazer isso, precisaremos adicionar o gesto *pan* a `bananaView` que iremos criar.
 E sendo o atual estado do `ViewController`:
 */
import PlaygroundSupport
import UIKit

class ViewController: UIViewController {
    override func loadView() {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
        
        let monkey = UIImage(named: "monkey.png")
        let monkeyView = UIImageView(image: monkey)
        monkeyView.frame = CGRect(x: 50, y: 250, width: 300, height: 400)
        view.addSubview(monkeyView)
        
        monkeyView.isUserInteractionEnabled = true
        let tapMonkey = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        monkeyView.addGestureRecognizer(tapMonkey)
        
//: Agora definimos a imagem da banana onde iremos adicionar o gesto:
        let banana = UIImage(named: "banana.png")
        let bananaView = UIImageView(image: banana)
        bananaView.frame = CGRect(x: 50, y: 50, width: 200, height: 200)
        view.addSubview(bananaView)
        
//: E para o gesto de movimentação *pan* na `bananaView`:
//: 1. Primeiro precisamos ativar as interações do usuário
        bananaView.isUserInteractionEnabled = true
//: 2. Criamos o reconhecedor de toque `panBanana` e adicionamos em `bananaView`
        let panBanana = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        bananaView.addGestureRecognizer(panBanana)
        
//: Finalizamos com as devidas configurações da view no viewController
        self.view = view
    }
    
    @objc func handleTap(_ gesture: UIGestureRecognizer) {
        print("Macaco foi tocado!")
    }
    
//: E agora precisamos implementar a funções de toque:
    @objc func handlePan(_ gesture: UIPanGestureRecognizer) {
        
      //  gesture.view?.center = CGPoint(x: (gesture.view?.center.x)! + gesture.translation(in: view).x, y: (gesture.view?.center.y)! + gesture.translation(in: view).y)
        
        // 1
        let translation = gesture.translation(in: view)
        
        // 2
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
        )
        
        // 3
        gesture.setTranslation(.zero, in: view)
    }
}
    
/*:
 O UIPanGestureRecognizer chama esse método quando detecta um gesto de *pan* pela primeira vez e depois continuamente enquanto o usuário continua a arrastar e uma última vez quando o movimento é concluído - que geralmente é quando o dedo do usuário levanta.
     
 Aqui está o que está acontecendo em cada trecho do código:
     
 \//1: O UIPanGestureRecognizer passa a si próprio como um argumento para esse método. Você pode recuperar a quantia que o dedo do usuário moveu chamando translation(in:). Você então usa esse valor para mover o centro do macaco a mesma distância.
     
 \//2: Observe que, em vez de codificar a visualização da imagem do macaco nesse método, você obtém uma referência à visualização da imagem do macaco chamando gesture.view. Isso torna seu código mais genérico, para que você possa reutilizar essa mesma rotina para a visualização da imagem com a banana posteriormente.
     
 \//3: É importante definir a translação de volta a zero quando terminar. Caso contrário, a translação continuará aumentando cada vez e você verá seu macaco sair rapidamente da tela!
*/


PlaygroundPage.current.liveView = ViewController()

//: [Próximo](@next)
