//: [Previous](@previous)


import UIKit
import PlaygroundSupport


class CelulaDosVegetais: UICollectionViewCell{
    
    public let ilustracao: UIImageView  = UIImageView(frame: CGRect(x: 0, y: 0, width: 337.7, height: 91.67))
    public let titulo: UILabel = UILabel(frame: CGRect(x: 59.5, y: -19, width: 214.61, height: 55.43))
    
    // 3) Não entendi esse init. Por que override? Por que super? Onde estão os parâmetros do init?
    public override init(frame: CGRect){
        super.init(frame:frame)
        self.backgroundView = ilustracao
        titulo.font = UIFont(name: "PTSans-Bold", size: 40)
        titulo.textColor = .white
        self.addSubview(titulo)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class EstruturaDosVegetais {
    let nomeDoVegetal: String
    let fotoDoVegetal: UIImage?
    
    init(nome: String, foto: UIImage?){
        nomeDoVegetal = nome
        fotoDoVegetal = foto
    }
}


class MyViewController4 : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    let listaDeVegetais = [EstruturaDosVegetais(nome: "Coentro", foto: UIImage(contentsOfFile: "coentro-5.jpg")), EstruturaDosVegetais(nome: "Beringela", foto: UIImage(contentsOfFile: "sh_beringela_432696973.jpg")), EstruturaDosVegetais(nome: "Cebola Roxa", foto: UIImage(contentsOfFile: "cebola-roxa-768x307-b88dde90.jpg")), EstruturaDosVegetais(nome: "Cenoura", foto: UIImage(contentsOfFile: "beneficios-da-cenoura_14186_l.jpg"))]
    
    
    override func viewDidLoad() {
        
        let meuLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        meuLayout.sectionInset = UIEdgeInsets(top: 86, left: 552, bottom: 372, right: 1193)
        meuLayout.itemSize = CGSize(width: 337.7, height: 91.67)
        
        
        let minhaCollectionView = UICollectionView(frame: CGRect(x: 86, y: 552, width: 1193, height: 372), collectionViewLayout: meuLayout)
        
        minhaCollectionView.register(CelulaDosVegetais.self, forCellWithReuseIdentifier: "id")
        minhaCollectionView.backgroundColor = .white
        minhaCollectionView.dataSource = self
        
        view.addSubview(minhaCollectionView)
        
        self.view = view
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listaDeVegetais.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let minhaCelula = collectionView.dequeueReusableCell(withReuseIdentifier: "id", for: indexPath) as? CelulaDosVegetais
        
        minhaCelula?.ilustracao.image = listaDeVegetais[indexPath.section].fotoDoVegetal
        minhaCelula?.titulo.text = listaDeVegetais[indexPath.section].nomeDoVegetal
        return minhaCelula!
    }
    
}


let mvc4 = MyViewController4(screenType: .ipadPro12_9, isPortrait: false)
//mvc.preferredContentSize = CGSize(width: 768, height: 1024)
PlaygroundPage.current.liveView = mvc4.scale(to: 0.3)
