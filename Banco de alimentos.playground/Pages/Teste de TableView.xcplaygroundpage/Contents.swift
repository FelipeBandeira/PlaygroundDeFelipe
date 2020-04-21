//: [Previous](@previous)

import Foundation

import UIKit
import PlaygroundSupport

class Lugar{
    let nomeDoEstabelecimento: String
    let horaDeRetirada: String
    let distancia: String
    
    init(nome: String, hora: String, dist: String){
        nomeDoEstabelecimento = nome
        horaDeRetirada = hora
        distancia = dist
    }
}


class MyViewController2 : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
     let exemplosDeLugares = [Lugar(nome: "Quitandaria", hora: "19:00", dist: "a 250m"), Lugar(nome: "Bompreço", hora: "21:00", dist: "a 2.5km"), Lugar(nome: "Mercado de Zé", hora: "15:30", dist: "a 50m")]
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
    }
    
    let table = UITableView(frame: CGRect(x: 10, y: 20, width: 100, height: 100))
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exemplosDeLugares.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula: UITableViewCell = self.table.dequeueReusableCell(withIdentifier: "celula") ?? UITableViewCell()
        celula.textLabel?.text = exemplosDeLugares[indexPath.item].nomeDoEstabelecimento
        return celula
    }
    
    
    
    
   
    
    
    
    
    
    
}
let mvc2 = MyViewController2(screenType: .ipadPro12_9, isPortrait: false)
//mvc.preferredContentSize = CGSize(width: 768, height: 1024)
PlaygroundPage.current.liveView = mvc2.scale(to: 0.3)
//: [Next](@next)



//: [Next](@next)

