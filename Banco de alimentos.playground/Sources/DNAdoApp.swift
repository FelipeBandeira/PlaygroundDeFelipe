class TipoDeLegume{
    var nomeDoLegume: String
    var descricaoDoLegume: String
    var localComDisponibilidade: String
    
    init (nome: String, local: String, descricao: String){
        self.nomeDoLegume = nome
        self.localComDisponibilidade = local
        self.descricaoDoLegume = descricao
    }
    
}

class DetalhesDoLugar{
    var nomeDoLugar: String
    var horarioDeRetirada: String
    
    init (nome: String, horario: String){
        self.nomeDoLugar = nome
        self.horarioDeRetirada = horario
    }
}
