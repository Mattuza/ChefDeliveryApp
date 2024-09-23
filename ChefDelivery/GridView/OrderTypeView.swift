// Fizemos esse file View, para implementar e fazer todas as configurações necessárias das imagens

import SwiftUI

struct OrderTypeView: View {
    
    let orderType: OrderType
    
    var body: some View {
        VStack(spacing: 5) { // Aqui estamos fazendo uma Vertical Stack View e passando o parametro "spacing" que serve para dar um espaçamento entre os elementos
            Image(orderType.image) // Aqui estamos puxando a imagem do objeto "image" da struct "OrderType"
                .resizable() // Permite que a imagem seja redimensionada, ocupando todo o espaço dispoível no layout
                .scaledToFit() // Redimensiona a imagem proporcionalmente e se encaixa no espaço disponível
                .fixedSize(horizontal: false, vertical: true) // Define uma largura fixa para horizontal, vertical ou ambas.
            
            Text(orderType.name)
                .font(.system(size: 10)) // Passando o tamanho fonte
            
        }
        .frame(width: 70, height: 100) // Aqui estamos configurando a altura e largura do Vertical Stack View
    }
}

struct OrderTypeView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTypeView(orderType: OrderType(id: 1,
                                           name:
                                            "Restaurantes",
                                           image:
                                            "hamburguer"))
        .previewLayout(.sizeThatFits)
    }
}
