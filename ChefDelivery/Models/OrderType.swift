import Foundation

// Criamos uma struct para definir os atributos de identificação de cada Item. 
struct OrderType: Identifiable {
    let id: Int
    let name: String
    let image: String
}
