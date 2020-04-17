//: [Previous](@previous)
import Foundation

import UIKit
import PlaygroundSupport




var cfURL = Bundle.main.url(forResource: "PTSans-Bold", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

cfURL = Bundle.main.url(forResource: "PTSans-BoldItalic", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

cfURL = Bundle.main.url(forResource: "PTSans-Italic", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

cfURL = Bundle.main.url(forResource: "PTSans-Regular", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)


for name in UIFont.familyNames {
    print(name)
}

for family in UIFont.familyNames.sorted(){
    let names = UIFont.fontNames(forFamilyName: family)
    print ("Family: \(family) Font names:\(names)")
}

class MyViewController : UIViewController {
    
    let button = UIButton()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        // 1) Crio uma variável para armazenar a label; 2) defino o tamanho da label; 3) defino seu texto; 4) defino a cor do texto. Depois 5) crio uma variável para receber minha fonte customizada; 6) abro a configuração de fonte da label e 7) faço ela receber minha variável que carrega a fonte customizada
        let appName = UILabel()
        appName.frame = CGRect(x: 42, y: 42, width: 361, height: 68)
        appName.text = "Banco alimentar"
        appName.textColor = .black
        let fonteDoAppName = UIFont (name: "PT Sans", size: 50)
        appName.font = fonteDoAppName
        view.addSubview(appName)
        
        let mainQuestion = UILabel()
        mainQuestion.frame = CGRect(x: 403, y: 252, width: 559, height: 95)
        mainQuestion.text = "O que você busca?"
        mainQuestion.textColor = .black
        let fonteDaQuestion = UIFont(name: "PTSans-Bold", size: 70)
        mainQuestion.font = fonteDaQuestion
        view.addSubview(mainQuestion)
        
        
        let imagemDePratoFeito = UIImage(named: "Macarronada.jpg")
        let botaoDePratoFeito = UIButton()
        botaoDePratoFeito.frame = CGRect(x: 136, y: 441, width: 473, height: 426)
        botaoDePratoFeito.setImage(imagemDePratoFeito, for: .normal)
        botaoDePratoFeito.imageView?.layer.cornerRadius = 10
        view.addSubview(botaoDePratoFeito)
        let labelDoBotaoDePratoFeito = UILabel()
        labelDoBotaoDePratoFeito.frame = CGRect(x: 244, y: 876, width: 243, height: 55)
        labelDoBotaoDePratoFeito.text = "Prato feito"
        labelDoBotaoDePratoFeito.textColor = .black
        let fonteDoBotao = UIFont (name: "PTSans-Bold", size: 45)
        labelDoBotaoDePratoFeito.font = fonteDoBotao
        view.addSubview(labelDoBotaoDePratoFeito)
        
        // 1) Crio uma variável para receber a imagem que usarei; 2) crio o botão, configuro seu tamanho e coloco nele a imagem que quero, já implementando o corner radius; 3) crio e configuro a label do botão; 4) implemento a funcionalidade do botão
        let imagemDeIngredientes = UIImage(named: "Ingredientes.jpg")
        let botaoDeIngredientes = UIButton()
        botaoDeIngredientes.frame = CGRect(x: 767, y: 441, width: 473, height: 426)
        botaoDeIngredientes.setImage(imagemDeIngredientes, for: .normal)
        botaoDeIngredientes.imageView?.layer.cornerRadius = 10
        botaoDeIngredientes.addTarget(nil, action: #selector(tocarBotao), for: .touchUpInside)
        view.addSubview(botaoDeIngredientes)
        let labelDeIngredientes = UILabel()
        labelDeIngredientes.frame = CGRect(x: 883, y: 876, width: 242, height: 64)
        labelDeIngredientes.text = "Ingredientes"
        let fonteDeIngredientes = UIFont(name: "PTSans-Bold", size: 45)
        labelDeIngredientes.font = fonteDeIngredientes
        view.addSubview(labelDeIngredientes)
        
        
        self.view = view
        
    }
    
    @objc func tocarBotao() {
        navigationController?.pushViewController(MyViewController2(), animated: true)
        
    }
    
}


class MyViewController2 : UIViewController {
    
    let button = UIButton()
    
    override func viewDidLoad() {
        let view = UIView()
        view.backgroundColor = .white
        
        
        let appName = UILabel()
        appName.frame = CGRect(x: 42, y: 42, width: 361, height: 68)
        appName.text = "Banco alimentar"
        appName.textColor = .black
        let fonteDoAppName = UIFont (name: "PT Sans", size: 50)
        appName.font = fonteDoAppName
        view.addSubview(appName)
        
        let anuncioDeDisponibilidade = UILabel()
        anuncioDeDisponibilidade.frame = CGRect(x: 42, y: 197, width: 582, height: 100)
        anuncioDeDisponibilidade.text = "Hoje perto de você"
        anuncioDeDisponibilidade.textColor = .black
        let fonteDoAnuncio = UIFont (name: "PTSans-Bold", size: 70)
        anuncioDeDisponibilidade.font = fonteDoAnuncio
        view.addSubview(anuncioDeDisponibilidade)
        
        let descricaoDoAnuncio = UILabel()
        descricaoDoAnuncio.frame = CGRect(x: 42, y: 297, width: 1086, height: 51)
        descricaoDoAnuncio.text = "Esses são os alimentos disponíveis nas proximidades para o dia de hoje."
        descricaoDoAnuncio.textColor = .black
        let fonteDaDescricao = UIFont (name: "PT Sans", size: 35)
        descricaoDoAnuncio.font = fonteDaDescricao
        view.addSubview(descricaoDoAnuncio)
        
        let mainQuestion = UILabel()
        mainQuestion.frame = CGRect(x: 280, y: 455, width: 805, height: 53)
        mainQuestion.text = "Escolha uma das categorias para ver mais"
        mainQuestion.textColor = .black
        let fonteDaQuestion2 = UIFont (name: "PTSans-Bold", size: 45)
        mainQuestion.font = fonteDaQuestion2
        view.addSubview(mainQuestion)
        
        
        let imagemDeFrutas = UIImage(named: "Frutas.jpg")
        let botaoDeFrutas = UIButton()
        botaoDeFrutas.frame = CGRect(x: 512, y: 552, width: 341, height: 273)
        botaoDeFrutas.setImage(imagemDeFrutas, for: .normal)
        botaoDeFrutas.imageView?.layer.cornerRadius = 10
        view.addSubview(botaoDeFrutas)
        let labelDeFrutas = UILabel()
        labelDeFrutas.frame = CGRect(x: 624, y: 844, width: 117, height: 37)
        labelDeFrutas.text = "Frutas"
        labelDeFrutas.textColor = .black
        let fonteDeFrutas = UIFont(name: "PTSans-Bold", size: 40)
        labelDeFrutas.font = fonteDeFrutas
        view.addSubview(labelDeFrutas)
        
        
        let imagemDeLegumes = UIImage(named: "Legumes.jpg")
        let botaoDeLegumes = UIButton()
        botaoDeLegumes.frame = CGRect(x: 109, y: 559, width: 342, height: 266)
        botaoDeLegumes.setImage(imagemDeLegumes, for: .normal)
        botaoDeLegumes.imageView?.layer.cornerRadius = 10
        botaoDeLegumes.addTarget(nil, action: #selector(tocarBotao), for: .touchUpInside)
        view.addSubview(botaoDeLegumes)
        let labelDeLegumes = UILabel()
        labelDeLegumes.frame = CGRect(x: 198, y: 837, width: 154, height: 48)
        labelDeLegumes.text = "Legumes"
        labelDeLegumes.textColor = .black
        let fonteDeLegumes = UIFont(name: "PTSans-Bold", size: 40)
        labelDeLegumes.font = fonteDeLegumes
        view.addSubview(labelDeLegumes)
        
        
        let imagemDeCarne = UIImage(named: "proteinas.jpg")
        let botaoDeCarnes = UIButton()
        botaoDeCarnes.frame = CGRect(x: 914, y: 552, width: 342, height: 273)
        botaoDeCarnes.setImage(imagemDeCarne, for: .normal)
        botaoDeCarnes.imageView?.layer.cornerRadius = 10
        view.addSubview(botaoDeCarnes)
        let labelDeCarnes = UILabel()
        labelDeCarnes.frame = CGRect(x: 1021, y: 844, width: 117, height: 42)
        labelDeCarnes.text = "Carnes"
        let fonteDeCarnes = UIFont(name: "PTSans-Bold", size: 40)
        labelDeCarnes.font = fonteDeCarnes
        view.addSubview(labelDeCarnes)
        
        self.view = view
        
    }
    
    @objc func tocarBotao(){
        navigationController?.pushViewController(MyViewController3(), animated: true)
        
    }
}


class CelulaDosVegetais: UICollectionViewCell{
    
    public let ilustracao: UIImageView  = UIImageView(frame: CGRect(x: 0, y: 0, width: 337.7, height: 91.67))
    public let titulo: UILabel = UILabel(frame: CGRect(x: 20, y: 19, width: 214.61, height: 55.43))
    
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




class MyViewController3 : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let exemplosDeLugares = [Lugar(nome: "Quitandaria", hora: "19:00", dist: "a 250m"), Lugar(nome: "Bompreço", hora: "21:00", dist: "a 2.5km"), Lugar(nome: "Mercado de Zé", hora: "15:30", dist: "a 50m")]
    
    var listaDeVegetais:[EstruturaDosVegetais] = []
    
    
    override func viewDidLoad() {
        
        let appName = UILabel()
        appName.frame = CGRect(x: 42, y: 42, width: 361, height: 68)
        appName.text = "Banco alimentar"
        appName.textColor = .black
        let fonteDoAppName = UIFont (name: "PT Sans", size: 50)
        appName.font = fonteDoAppName
        view.addSubview(appName)

        let anuncioDoCatalogo = UILabel()
        anuncioDoCatalogo.frame = CGRect(x: 42, y: 193, width: 780, height: 88)
        anuncioDoCatalogo.text = "Catálogo de disponibilidade"
        anuncioDoCatalogo.textColor = .black
        let fonteDoAnuncioDoCatalogo = UIFont (name: "PTSans-Bold", size: 65)
        anuncioDoCatalogo.font = fonteDoAnuncioDoCatalogo
        view.addSubview(anuncioDoCatalogo)

        let descricaoDoCatalogo = UILabel()
        descricaoDoCatalogo.frame = CGRect(x: 45, y: 276, width: 288, height: 54)
        descricaoDoCatalogo.text = "Categoria: legumes"
        descricaoDoCatalogo.textColor = .black
        let fonteDaDescricaoDoCatalogo = UIFont (name: "PT Sans", size: 35)
        descricaoDoCatalogo.font = fonteDaDescricaoDoCatalogo
        view.addSubview(descricaoDoCatalogo)

        let mainQuestion3 = UILabel()
        mainQuestion3.frame = CGRect(x: 274, y: 452, width: 807, height: 70)
        mainQuestion3.text = "Escolha uma das opções para ver detalhes"
        mainQuestion3.textColor = .black
        let fonteDaQuestion3 = UIFont (name: "PTSans-Bold", size: 45)
        mainQuestion3.font = fonteDaQuestion3
        view.addSubview(mainQuestion3)
        
        listaDeVegetais = [EstruturaDosVegetais(nome: "Coentro", foto: UIImage(named: "coentro-5.jpg"), descricao: "O coentro é uma erva aromática e muito utilizada como tempero. Ele proporciona uma série de benefícios à saúde, como redução do risco de doenças cardiovasculares, degenerativas e câncer devido à ação antioxidante. O coentro também contribui para o controle da pressão arterial e é bom para a visão.", lugares: exemplosDeLugares), EstruturaDosVegetais(nome: "Berinjela", foto: UIImage(named: "sh_beringela_432696973.jpg"), descricao: "A berinjela é um legume rico em vitaminas e sais minerais (cálcio, fósforo, ferro e fibras). É famosa por combater o colesterol, mas também previne diabetes e câncer, melhora o intestino e até ajuda a emagrecer.", lugares: exemplosDeLugares), EstruturaDosVegetais(nome: "Cebola Roxa", foto: UIImage(named: "cebola-roxa-768x307-b88dde90.jpg"), descricao: "Muito presente em diversos pratos, seja como tempero, ou como alimento principal, a cebola roxa é rica em vitamina A, B, B2, B3, C, ferro, cálcio, potássio, fósforo, magnésio, sódio e silício. Além de ser boa fonte de flavonóides, elemento com propriedades anti-inflamatória e anti-oxidante. ", lugares: exemplosDeLugares), EstruturaDosVegetais(nome: "Cenoura", foto: UIImage(named: "beneficios-da-cenoura_14186_l.jpg"), descricao: "A cenoura é uma raiz que é uma excelente fonte de carotenoides, potássio, fibras e antioxidantes, os quais proporcionam diversos benefícios para a saúde. Além de promover a saúde visual, também ajudam a evitar o envelhecimento precoce, melhorar o sistema imune e a prevenir alguns tipos de câncer.", lugares: exemplosDeLugares)]
        
        
        view.backgroundColor = .white
        
        let meuLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        meuLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        meuLayout.itemSize = CGSize(width: 337.7, height: 91.67)
        meuLayout.minimumLineSpacing = 50
        
        
        let minhaCollectionView = UICollectionView(frame: CGRect(x: 86, y: 552, width: 1193, height: 372), collectionViewLayout: meuLayout)
        
        minhaCollectionView.register(CelulaDosVegetais.self, forCellWithReuseIdentifier: "id")
        minhaCollectionView.backgroundColor = .white
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
        let mvc4 = MyViewController4(screenType: .other(width: 1148, height: 737))
        mvc4.vegetalEspecífico = listaDeVegetais[indexPath.item]
        present(mvc4, animated: true, completion: nil)
    
    }
    
}

class MyViewController4: UIViewController{
    
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
        
//        let minhaTableView = UITableView(frame: CGRect(x: 171, y: 460, width: 446, height: 404))
//        minhaTableView.dataSource =
        
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


let mnc = UINavigationController(screenType: .ipadPro12_9, isPortrait: false)
mnc.pushViewController(MyViewController(), animated: true)
PlaygroundPage.current.liveView = mnc.scale(to: 0.3)
