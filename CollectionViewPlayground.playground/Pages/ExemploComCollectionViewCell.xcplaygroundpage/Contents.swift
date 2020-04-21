//: [Previous](@previous)

/*: #
## Exemplo um pouco mais elaborado, introduzindo a criação de UICollectionViewCell customizado e passagem de dado entre ViewControllers.
 ## Observe que os itens desta vez estão dispostos na horizontal.
---
*/

  
import UIKit
import PlaygroundSupport


//: Note que agora também estamos implementando o protocolo UICollectionViewDelegate, para podermos capturar a ação de seleção de um item do UICollectionView e podermos mostrar o detalhe em outro ViewController. Veja a implementação do didSelectItemAt que está ao final do NovaCachorradaController
class NovoCachorradaController : UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var myCollectionView:UICollectionView?
    //: Note que agora os dados (modelo da view) não estão declarados aqui. Centralizamos isso em uma classe Model, que segue o padrão de projeto Singleton
    var cachorros: [Cachorro] = Model.shared

    override func loadView() {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
        view.backgroundColor = .white
        
        //: inicializando e configurando Label que ficara no topo da view
        let label = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 20))
        label.text = "CachorrADA DetalhADA"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(label)
        
       //: incializando e configurando o objeto que irá gerenciar o layout da UICollectionView
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        //: o itens ficarão dispostos na horizontal e o scroll é automático
        layout.scrollDirection = .horizontal
        
        layout.sectionInset = UIEdgeInsets(top: 32, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 60, height: 65)

        //: inicializando e configurandoi a UICollectionView. Note que o objeto layout é passado como parâmetro no construtor (init)
        myCollectionView = UICollectionView(frame: CGRect(x: 0, y: 30, width: 375, height: 607), collectionViewLayout: layout)
        
        //: Note que agora é diferente. Estamos usando CachorroCollectionViewCell, classe que está definida logo abaixo
        myCollectionView?.register(CachorroCollectionViewCell.self, forCellWithReuseIdentifier: "MinhaCellCustomizada")
        myCollectionView?.backgroundColor = UIColor.white
        myCollectionView?.dataSource = self
        
        //: Agora a collection view também tem um delegate, que é esse view controller que você está lendo o loadView agora :)
        myCollectionView?.delegate = self
        
        view.addSubview(myCollectionView!)
        self.view = view
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return cachorros.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: Agora estamos usando nossa própria classe CachorroCollectionViewCell. Veja que precisamos fazer a conversão explícita através de as? CachorroCollectionViewCell, pois por padrão o que aparece aqui é uma UICollectionViewCell
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MinhaCellCustomizada", for: indexPath) as? CachorroCollectionViewCell
        
        //: Como myCell foi explicitamente convertida para CachorroCollectionViewCell, agora podemos acessar as propriedade imageView e labelRaca que definimos lá. Se a conversão na linha acima não fosse feita, isso não seria possível
        myCell?.imageView.image = UIImage(named: cachorros[indexPath.section].imagemSilhueta)
        
        myCell?.labelRaca.text = cachorros[indexPath.section].raca
        
        return myCell!
    }
    
    
    //: Observe que agora temos essa função, que é do UICollectionViewDelegate. Ela é chamada quando alguém seleciona um item da UICollectionView.
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        /*: Aqui estamos usando o detalheVC é uma variável que é criada no final deste arquivo.
         Seguimos a mesma abordagem do playground de exemplo de view controllers.
        */
        detalheVC.modalPresentationStyle = .fullScreen
        //: IMPORTANTE: aqui estamos "passando um dado" de um view controller para o outro
        detalheVC.cachorro = cachorros[indexPath.section]
        present(detalheVC, animated: true, completion: nil)
    }
}

//: Esta é nossa CachorroCollectionViewCell, que possui uma imagem e um label abaixo dessa imagem
class CachorroCollectionViewCell: UICollectionViewCell {
    //: ambas as propriedades são definidas como let para evitar que sejam alteradas. O nosso ViewController precisa alterar apenas o conteúdo das propriedades imageView.image e labelRaca.text
    public let imageView: UIImageView = UIImageView(frame: CGRect(x: 0, y:0, width: 60, height: 65))
    public let labelRaca: UILabel = UILabel(frame: CGRect(x:0, y: 65, width:60,height:20))
    
    public override init(frame: CGRect){
        super.init(frame:frame)
        self.backgroundView = imageView
        labelRaca.font = UIFont.systemFont(ofSize: 7)
        labelRaca.textAlignment = NSTextAlignment.center
        self.addSubview(labelRaca)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//: Este é o ViewController que vai mostrar os detalhes  cada vez que um elemento da UICollectionView for selecionado. Note que aqui há um detalhe do ciclo de vida de view controllers. Além do loadView, estamos fazendo override na função viewWillAppear, ambas definidas no UIViewController.
class DetalheViewController: UIViewController {
    //: propriedade que armazenará o objeto cachorro que está sendo exibido
    var cachorro: Cachorro?
    private var imageView: UIImageView?
    private var labelRaca: UILabel?
    private var labelTempoMedioVida: UILabel?
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .gray
        
        //: inicializando e configurando botão voltar
        let button = UIButton(frame: CGRect(x: 60, y: 20, width: 250, height: 100))
    
        button.setTitle("Voltar", for: .normal)
        button.addTarget(nil, action: #selector(voltar), for: .touchUpInside)
        view.addSubview(button)
        
        //: inicializando e configurando o ImageView
        imageView = UIImageView(frame: CGRect(x:36, y:100, width:300, height: 300));
        
        imageView?.contentMode = .scaleAspectFit
        view.addSubview(imageView!)
        
        //: inicializando e configurando o label com o nome da raça
        labelRaca = UILabel(frame: CGRect(x: 40, y: 350, width:300, height: 30))
        labelRaca?.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(labelRaca!)
        
        //: inicializando e configurando o label com o nome da raça
        labelTempoMedioVida = UILabel(frame: CGRect(x: 40, y: 375, width:300, height: 30))
        labelTempoMedioVida?.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(labelTempoMedioVida!)
        
        self.view = view
    }
    
    //: Outra novidade aqui, que tem a ver com o ciclo de vida de ViewControllers. Por quê isso não está no loadView?
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let imagem =  UIImage(named: self.cachorro!.foto)
        self.imageView?.image = imagem;
        self.labelRaca?.text = "Raça: \(self.cachorro!.raca)"
        self.labelTempoMedioVida?.text = "Média de vida: \(self.cachorro!.lifespan) anos"
        print("Carregando foto \(self.cachorro!.foto)")
    }
    
    @objc func voltar() {
        dismiss(animated: true, completion: nil)
    }

}

//: O detalheVC só é criado uma vez e é reusado todas as vezes que visualizamos o detalhe de um cachorro. Por isso, ao invés do loadView (que acontece apenas uma vez), sempre alteramos a imagem no viewWillAppear (como o nome já diz, é chamado toda vez que a view vai ser exibida)
let detalheVC = DetalheViewController()
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = NovoCachorradaController()
