import Foundation



// Classe Model centraliza os dados do App. É implementada como um Singleton
public class Model {
    /* Ao invés de várias versões está tudo centralizado aqui. Por se usar "let", esse modelo é "imutável" (o que pode ser inadequado se você um app na prática precisar adicionar/remover itens do modelo) */
    public static let shared = [Cachorro(raca: "Bulldog", imagemSilhueta: "bulldog_silhueta.png", foto: "bulldog.jpg", lifespan: "8-12"),
    Cachorro(raca: "Chihuahua", imagemSilhueta: "chihuahua_silhueta.png", foto: "chihuahua.jpeg", lifespan: "14-18"),
    Cachorro(raca: "Dachshund",imagemSilhueta: "dachshund_silhueta.png",foto: "dachshund.jpeg", lifespan: "12-14"),
    Cachorro(raca: "Golden Retriever",imagemSilhueta: "golden_silhueta.png", foto: "golden.jpeg", lifespan: "10-12"),
    Cachorro(raca: "Greyhound", imagemSilhueta: "greyhound_silhueta.png", foto: "greyhound.jpeg", lifespan: "10-13"),
    Cachorro(raca: "Maltês", imagemSilhueta: "maltes_silhueta.png", foto: "maltes.jpeg", lifespan: "12-14"),
    Cachorro(raca: "Pastor Alemão", imagemSilhueta: "pastor_silhueta.png", foto: "pastor.jpeg", lifespan: "10-12"),
    Cachorro(raca: "Samoieda", imagemSilhueta: "samoieda_silhueta.png", foto: "samoieda.jpg", lifespan: "10-12")]
    
    //Privado para ninguém acessar o init. Um singleton não foi feito para ser instanciado fora da classe.
    private init() {
        
    }
}
