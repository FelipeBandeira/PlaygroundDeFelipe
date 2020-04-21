/*: # Toques, pressões e gestos!
 ## UIGestureRecognizer with Sound!
 ---
 */
/*:
 ### Incremetando mais um pouco o exemplo anterior:
 ## Vamos agora adicionar um reconhecedor de gestos para tocar um efeito sonoro ao tocar em qualquer uma das imagens:
  */

import PlaygroundSupport
import UIKit

//: Para reproduzir um som, você precisará acessar o AVFoundation. Desse modo, adicionaremos:

import AVFoundation

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
//: Além disso, precisaremos adicionar um AVAudioPlayer no ViewController
    private var chompPlayer: AVAudioPlayer?
    
    override func loadView() {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
        
        let monkey = UIImage(named: "monkey.png")
        let monkeyView = UIImageView(image: monkey)
        monkeyView.frame = CGRect(x: 50, y: 250, width: 300, height: 400)
        view.addSubview(monkeyView)
        
        monkeyView.isUserInteractionEnabled = true
        let tapMonkey = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        monkeyView.addGestureRecognizer(tapMonkey)
        
        let banana = UIImage(named: "banana.png")
        let bananaView = UIImageView(image: banana)
        bananaView.frame = CGRect(x: 50, y: 50, width: 200, height: 200)
        view.addSubview(bananaView)
        
        bananaView.isUserInteractionEnabled = true
        let panBanana = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        bananaView.addGestureRecognizer(panBanana)
        
        self.view = view
/*:
E implementar as seguintes modificações:
         
Primeiro criar um Array de UIImageView - nesse caso, a do macaco e da banana.
 */
        let imageViews = view.subviews.filter {
          $0 is UIImageView
        }
//: Percorrer o Array
        for imageView in imageViews {
//: Criar um UITapGestureRecognizer para cada UIImageView, especificando o retorno da chamada para `handleTap`
          let tapGesture = UITapGestureRecognizer(
            target: self,
            action: #selector(handleTap)
          )
//: Definir o delegate do reconhecedor para `self` e o adicionar a UIImageView.
          tapGesture.delegate = self
          imageView.addGestureRecognizer(tapGesture)
        }
//: Criar o player
        chompPlayer = createPlayer(from: "laugh")
    }
    
    @objc func handleTap(_ gesture: UIGestureRecognizer) {
        print("Macaco foi tocado!")
//: Modificar `handleTap` para iniciar a música sempre que alguma imagem for tocada
        chompPlayer?.play()
    }
    
//: Implementar método que cria o player
    func createPlayer(from filename: String) -> AVAudioPlayer? {
      guard let url = Bundle.main.url(
        forResource: filename,
        withExtension: "caf"
        ) else {
          return nil
      }
      var player = AVAudioPlayer()

      do {
        try player = AVAudioPlayer(contentsOf: url)
        player.prepareToPlay()
      } catch {
        print("Error loading \(url.absoluteString): \(error)")
      }

      return player
    }
    
//: E implementar o restante que havia no nosso arquivo:
    @objc func handlePan(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }

        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
        )

        gesture.setTranslation(.zero, in: view)
    }
}

PlaygroundPage.current.liveView = ViewController()
