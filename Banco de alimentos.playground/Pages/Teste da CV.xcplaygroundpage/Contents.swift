//: [Previous](@previous)

import Foundation

import UIKit
import PlaygroundSupport

class MyViewController : UICollectionViewController {
    
    override func loadView() {
        
        super.loadView()
        
        //determina qual será o tipo das nossas células (primeiro parâmetro) e como elas serão chamadas (segundo parâmetro)
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "id")
        
        
        
        //let collectionView = UICollectionView()
        
    }
    
    //determina quantas seções nossa collection view terá
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //diz quantas linhas teremos na seção
    //DÚVIDA 1: mas que caralho aquela porra de underline quer dizer???
    //DÚVIDA 2: por que cacete está escrito "numberOfItemsInSection section"? Por que não só um ou o outro?
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    //DÚVIDA: não entendi nada. O que é IndexPath? O que é dequeueReusableCell? O que essa função inteira faz? Não entendi como ela funciona...
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "id", for: indexPath)
        cell.backgroundColor = .green
        return cell
    }
}

let mvc = MyViewController(screenType: .ipadPro12_9, isPortrait: false)
//mvc.preferredContentSize = CGSize(width: 768, height: 1024)
PlaygroundPage.current.liveView = mvc.scale(to: 0.3)
