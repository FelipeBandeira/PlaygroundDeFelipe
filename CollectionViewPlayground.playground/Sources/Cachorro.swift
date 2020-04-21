import Foundation

//Classe que é parte do modelo do App (basicamente só tem cachorro pra ser representado mesmo no modelo)
public class Cachorro {
    public var raca: String
    public var imagemSilhueta: String
    public var foto: String
    public var lifespan: String
    
    public init(raca: String, imagemSilhueta: String, foto: String, lifespan: String) {
        self.raca = raca
        self.imagemSilhueta = imagemSilhueta
        self.foto = foto
        self.lifespan = lifespan
    }
}
