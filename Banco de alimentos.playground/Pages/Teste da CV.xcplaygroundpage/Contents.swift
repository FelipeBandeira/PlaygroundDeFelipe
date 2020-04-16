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
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        self.addSubview(titulo)
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class EstruturaDosVegetais {
    let nomeDoVegetal: String
    let fotoDoVegetal: UIImage?
    let descricaoDovegetal: String
    let lugaresDisponiveis: [Lugar]
    
    init(nome: String, foto: UIImage?, descricao: String, lugares: [Lugar]){
        nomeDoVegetal = nome
        fotoDoVegetal = foto
        descricaoDovegetal = descricao
        lugaresDisponiveis = lugares
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




class MyViewController4 : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let exemplosDeLugares = [Lugar(nome: "Quitandaria", hora: "19:00", dist: "a 250m"), Lugar(nome: "Bompreço", hora: "21:00", dist: "a 2.5km"), Lugar(nome: "Mercado de Zé", hora: "15:30", dist: "a 50m")]
    
    var listaDeVegetais:[EstruturaDosVegetais] = []
    
    
    override func viewDidLoad() {
        
        listaDeVegetais = [EstruturaDosVegetais(nome: "Coentro", foto: UIImage(named: "coentro-5.jpg"), descricao: "a", lugares: exemplosDeLugares), EstruturaDosVegetais(nome: "Beringela", foto: UIImage(named: "sh_beringela_432696973.jpg"), descricao: "b", lugares: exemplosDeLugares), EstruturaDosVegetais(nome: "Cebola Roxa", foto: UIImage(named: "cebola-roxa-768x307-b88dde90.jpg"), descricao: "c", lugares: exemplosDeLugares), EstruturaDosVegetais(nome: "Cenoura", foto: UIImage(named: "beneficios-da-cenoura_14186_l.jpg"), descricao: "d", lugares: exemplosDeLugares)]
        
        print (listaDeVegetais[2].lugaresDisponiveis[0].nomeDoEstabelecimento)
        
        view.backgroundColor = .white
        
        let meuLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        meuLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        meuLayout.itemSize = CGSize(width: 337.7, height: 91.67)
        meuLayout.minimumLineSpacing = 50
        
        
        let minhaCollectionView = UICollectionView(frame: CGRect(x: 86, y: 552, width: 1193, height: 372), collectionViewLayout: meuLayout)
        
        minhaCollectionView.register(CelulaDosVegetais.self, forCellWithReuseIdentifier: "id")
        minhaCollectionView.backgroundColor = .green
        minhaCollectionView.dataSource = self
        minhaCollectionView.delegate = self
        
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //mvc5.vegetalEspecífico = listaDeVegetais[indexPath.item]
        let mvc5 = MyViewController5(screenType: .other(width: 1148, height: 737))
        mvc5.vegetalEspecífico = listaDeVegetais[indexPath.item]
        present(mvc5, animated: true, completion: nil)
    
    }
    
}

class MyViewController5: UIViewController{
    
    var vegetalEspecífico = EstruturaDosVegetais(nome: "", foto: nil, descricao: "", lugares: [])
    var imagemDoPopUp = UIImageView()
    var nomeDoPopUp = UILabel()
    var anuncioDoPopUp = UILabel()
    var descricaoDoVegetal = UILabel()
    
    override func loadView(){
        //Nessa parte, estamos basicamente configurando o esqueleto do pop up, para depois preenchermos com conteúdo
        let pop_up = UIView()
        pop_up.frame = CGRect(x: 114.17, y: 205, width: 1147.83, height: 737)
        pop_up.backgroundColor = #colorLiteral(red: 0.02745098039, green: 0.1176470588, blue: 0.1333333333, alpha: 1)
        
        
        let botao = UIButton(frame: CGRect(x: 1204, y: 220, width: 27, height: 48))
        botao.setTitle("X", for: .normal)
        botao.addTarget(nil, action: #selector(fecharPopUp), for: .touchUpInside)
        
        imagemDoPopUp = UIImageView(frame: CGRect(x: 0, y: 0, width: 537.96, height: 736.54))
        pop_up.addSubview(imagemDoPopUp)
        
        nomeDoPopUp = UILabel(frame: CGRect(x: 17.68, y: 11.94, width: 500, height: 84.3))
        nomeDoPopUp.font = UIFont(name: "PTSans-Bold", size: 65)
        nomeDoPopUp.textColor = .white
        pop_up.addSubview(nomeDoPopUp)
        
        anuncioDoPopUp = UILabel(frame: CGRect(x: 57, y: 151, width: 394, height: 54))
        anuncioDoPopUp.text = "Disponível em:"
        anuncioDoPopUp.textColor = .white
        anuncioDoPopUp.font = UIFont(name: "PTSans-Bold", size: 35)
        pop_up.addSubview(anuncioDoPopUp)
        
        descricaoDoVegetal = UILabel(frame: CGRect(x: 631, y: 94, width: 465, height: 607))
        descricaoDoVegetal.textColor = .white
        descricaoDoVegetal.font = UIFont(name: "PT Sans", size: 35)
        pop_up.addSubview(descricaoDoVegetal)
        
        let suavizadorDeFundo = UIView()
        suavizadorDeFundo.frame = CGRect(x: 0, y: 130.47, width: 537.96, height: 606.08)
        suavizadorDeFundo.backgroundColor = .black
        suavizadorDeFundo.alpha = 0.55
        pop_up.addSubview(suavizadorDeFundo)
        
        //preciso colocar isso?
        self.view = pop_up
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let imagem = self.vegetalEspecífico.fotoDoVegetal
        imagemDoPopUp.image = imagem
        nomeDoPopUp.text = self.vegetalEspecífico.nomeDoVegetal
        descricaoDoVegetal.text = self.vegetalEspecífico.descricaoDovegetal
        
        
    }
    
    @objc func fecharPopUp(){
        dismiss(animated: true, completion: nil)
    }
    
}


let mvc4 = MyViewController4(screenType: .ipadPro12_9, isPortrait: false)
let mvc5 = MyViewController5(screenType: .ipadPro12_9, isPortrait: false)

PlaygroundPage.current.liveView = mvc4.scale(to: 0.5)
