/*: #
## Exemplo básico de utilização de UICollectionView
---
*/
import UIKit
import PlaygroundSupport

/*:
### No exemplo abaixo exibiremos imagens de silhuetas de raças de cachorro em uma UICollectionView
 */

class CachorradaController : UIViewController, UICollectionViewDataSource {
    var myCollectionView:UICollectionView?
    
    //: Array de objetos do tipo Cachorro (Sources/Cachorro.swift)
    var cachorros = [Cachorro(raca: "Bulldog", imagemSilhueta: "bulldog_silhueta.png", foto: "bulldog.jpg", lifespan: "8-12"),
    Cachorro(raca: "Chihuahua", imagemSilhueta: "chihuahua_silhueta.png", foto: "chihuahua.jpeg", lifespan: "14-18"),
    Cachorro(raca: "Dachshund",imagemSilhueta: "dachshund_silhueta.png",foto: "dachshund.jpeg", lifespan: "12-14"),
    Cachorro(raca: "Golden Retriever",imagemSilhueta: "golden_silhueta.png", foto: "golden.jpeg", lifespan: "10-12"),
    Cachorro(raca: "Greyhound", imagemSilhueta: "greyhound_silhueta.png", foto: "greyhound.jpeg", lifespan: "10-13"),
    Cachorro(raca: "Maltês", imagemSilhueta: "maltes_silhueta.png", foto: "maltes.jpeg", lifespan: "12-14"),
    Cachorro(raca: "Pastor Alemão", imagemSilhueta: "pastor_silhueta.png", foto: "pastor.jpeg", lifespan: "10-12"),
    Cachorro(raca: "Samoieda", imagemSilhueta: "samoieda_silhueta.png", foto: "samoieda.jpg", lifespan: "10-12")]

    override func loadView() {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
        view.backgroundColor = .white
        
        //: inicializando e configurando Label que ficara no topo da view
        let label = UILabel(frame: CGRect(x: 10, y: 10, width: 200, height: 20))
        label.text = "CachorrADA"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(label)
        
        //: incializando e configurando o objeto que irá gerenciar o layout da UICollectionView
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout
        
        layout.sectionInset = UIEdgeInsets(top: 32, left: 20, bottom: 20, right: 20)
        layout.itemSize = CGSize(width: 60, height: 65)
        
        //: inicializando e configurandoi a UICollectionView. Note que o objeto layout é passado como parâmetro no construtor (init)
        myCollectionView = UICollectionView(frame: CGRect(x: 0, y: 30, width: 375, height: 607), collectionViewLayout: layout)
        
        //: Registrando qual a classe que será usada para desenhar cada célula do UICollectionView
        myCollectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        myCollectionView?.backgroundColor = UIColor.white
        myCollectionView?.dataSource = self
        
        view.addSubview(myCollectionView!)
        
        self.view = view
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cachorros.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        myCell.backgroundView = UIImageView(image: UIImage(named: cachorros[indexPath.row].imagemSilhueta))
        return myCell
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = CachorradaController()

//: [Next](@next)
