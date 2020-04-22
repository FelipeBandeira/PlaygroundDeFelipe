//: [Previous](@previous)

import Foundation

import UIKit
import PlaygroundSupport

class CelulaDeLugar: UITableViewCell{
    
    let retanguloDeFundo = UILabel(frame: CGRect(x: 0, y: 0, width: 445.75, height: 114.96))
    let nomeDoLugar = UILabel(frame: CGRect(x: 15, y: 5, width: 277, height: 47))
    let distancia = UILabel(frame: CGRect(x: 357.11, y: 5, width: 83.93, height: 29.38))
    let textoDeRetirada = UILabel(frame: CGRect(x: 15, y: 64.07, width: 347.07, height: 43.43))
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        retanguloDeFundo.backgroundColor = .white
        nomeDoLugar.font = UIFont(name: "PTSans-Bold", size: 40)
        distancia.font = UIFont(name: "PTSans-Italic", size: 25)
        textoDeRetirada.font = UIFont(name: "PTSans-Italic", size: 25)
        
        
        //por que isso?
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(retanguloDeFundo)
        self.addSubview(nomeDoLugar)
        self.addSubview(distancia)
        self.addSubview(textoDeRetirada)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



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
        
        
        table.dataSource = self
        table.delegate = self
        table.isScrollEnabled = true
        table.register(CelulaDeLugar.self, forCellReuseIdentifier: "id")
        view.addSubview(table)
        
    }
    
    let table = UITableView(frame: CGRect(x: 10, y: 20, width: 100, height: 100))
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exemplosDeLugares.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula: CelulaDeLugar = self.table.dequeueReusableCell(withIdentifier: "id", for: indexPath) as! CelulaDeLugar
        celula.nomeDoLugar.text = exemplosDeLugares[indexPath.item].nomeDoEstabelecimento
        celula.distancia.text = exemplosDeLugares[indexPath.item].distancia
        celula.textoDeRetirada.text = "Retirada até \(exemplosDeLugares[indexPath.item].horaDeRetirada)"
        
        
        
        return celula
    }
    
    
   
    
    
    
    
    
    
}
let mvc2 = MyViewController2(screenType: .ipadPro12_9, isPortrait: false)
//mvc.preferredContentSize = CGSize(width: 768, height: 1024)
PlaygroundPage.current.liveView = mvc2.scale(to: 0.3)
//: [Next](@next)



//: [Next](@next)

