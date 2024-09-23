import SwiftUI

struct OrderTypeGridView: View {
    // Criando uma lista de GridItem
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
        // repeating: repete as configurações da lista que vai ser criada. Assim todo GridItem vai ter a mesma configuração
        // Em repeating inicializamos um "GridItem()" passando como parametro ".flexible()" para ter um tamanho flexível e ocupar o espaço que tiver dispoível
        // spacing: coloca um espaçamento entre itens do grid (aqui no caso estamos espaçando as linhas)
    }
    
    var body: some View {
        // Aqui criamos um Horizontal Grid, onde o número de linhas(rows) recebe como parametro as configurações do "gridLayout", e também setamos um espaçamento horizontal entre um item e outro.
        LazyHGrid(rows: gridLayout, spacing: 15) {
            // Utilizando do ForEach para percorrer a lista de itens "orderMock"
            ForEach(ordersMock) { orderItem in
                OrderTypeView(orderType: orderItem)
           
            }
        }
        .frame(height: 200) // Aplica uma altura entre as 2 linhas do grid
        .padding(.horizontal, 15) // Adiciona um espaçmento na margem esquerda e direita
        .padding(.top, 15) // Adiciona um espaçamento na parte superior
    }
}

struct OrderTypeGridView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTypeGridView()
            .previewLayout(.sizeThatFits)
    }
}
