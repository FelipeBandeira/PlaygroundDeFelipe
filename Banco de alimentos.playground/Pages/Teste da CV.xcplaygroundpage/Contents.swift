//: [Previous](@previous)


import UIKit
import PlaygroundSupport


class CelulaDosVegetais: UICollectionViewCell{
    
    public let ilustracao: UIImageView  = UIImageView(frame: CGRect(x: 0, y: 0, width: 337.7, height: 91.67))
    public let titulo: UILabel = UILabel(frame: CGRect(x: 59.5, y: 19, width: 214.61, height: 55.43))
    
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
    
    
    let listaDeVegetais = [EstruturaDosVegetais(nome: "Coentro", foto: UIImage(named: "coentro-5.jpg")), EstruturaDosVegetais(nome: "Beringela", foto: UIImage(named: "sh_beringela_432696973.jpg")), EstruturaDosVegetais(nome: "Cebola Roxa", foto: UIImage(named: "cebola-roxa-768x307-b88dde90.jpg")), EstruturaDosVegetais(nome: "Cenoura", foto: UIImage(named: "beneficios-da-cenoura_14186_l.jpg"))]
    
    
    override func viewDidLoad() {
        
        view.backgroundColor = .white
        
        let meuLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        meuLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        meuLayout.itemSize = CGSize(width: 337.7, height: 91.67)
        meuLayout.minimumLineSpacing = 50
        
        
        let minhaCollectionView = UICollectionView(frame: CGRect(x: 86, y: 552, width: 1193, height: 372), collectionViewLayout: meuLayout)
        
        minhaCollectionView.register(CelulaDosVegetais.self, forCellWithReuseIdentifier: "id")
        minhaCollectionView.backgroundColor = .green
        minhaCollectionView.dataSource = self
        
        view.addSubview(minhaCollectionView)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listaDeVegetais.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let minhaCelula = collectionView.dequeueReusableCell(withReuseIdentifier: "id", for: indexPath) as? CelulaDosVegetais
        
        minhaCelula?.ilustracao.image = listaDeVegetais[indexPath.item].fotoDoVegetal
        minhaCelula?.titulo.text = listaDeVegetais[indexPath.item].nomeDoVegetal
        return minhaCelula!
    }
    
}


let mvc4 = MyViewController4(screenType: .ipadPro12_9, isPortrait: false)
//mvc.preferredContentSize = CGSize(width: 768, height: 1024)
PlaygroundPage.current.liveView = mvc4.scale(to: 0.5)
