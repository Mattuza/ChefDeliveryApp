import Foundation

// Aqui criamos uma lista orderMock, ela é um array de objetos do tipo OrderType ( ele irá puxar os atributos da struct OrderType )
// Nessa constante vamos definir a ordem dos itens
// Aqui vamos definir um "id" para identifcar o item na hora de fazer um "ForEach"
// Definir um "nome" para cada item
// Definir qual imagem será utilizada em cada item
let ordersMock: [OrderType] = [
    OrderType(id: 1, name: "Restaurantes", image: "hamburguer"),
    OrderType(id: 2, name: "Mercado", image: "mercado"),
    OrderType(id: 3, name: "Farmácia", image: "farmacia"),
    OrderType(id: 4, name: "Pet", image: "petshop"),
    OrderType(id: 5, name: "Descontos", image: "descontos"),
    OrderType(id: 6, name: "Bebidas", image: "bebidas"),
    OrderType(id: 7, name: "Gourmet", image: "gourmet")
]

let storesMock: [OrderType] = [
    OrderType(id: 1, name: "Monstro Burguer", image: "monstro-burger-logo"),
    OrderType(id: 2, name: "Food Court", image: "food-court-logo"),
    OrderType(id: 3, name: "Carbron", image: "carbron-logo"),
    OrderType(id: 4, name: "Padaria", image: "bakery-logo"),
    OrderType(id: 5, name: "Açai Panda", image: "acai-panda-logo")
]
