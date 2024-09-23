import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {    // HStack significa Horizontal Stack, temos também o VStack que significa Vertical Stack, é utilizada para alinhar elementos um do lado do outro
            Spacer() // Utilizamos "Spacer" para definir um espaçamento entre os dois button
            Button("R. Vergueiro, 3185") { // Aqui estamos fazendo um button, declarando o nome.
                
            }
            .font(.subheadline) // Definindo o tamanho da font do button (subheadline)
            .fontWeight(.semibold) // Definindo a fonte para semibold (seminegrito)
            .foregroundColor(.black) // Definindo a cor da fonte do button
            
            Spacer()
            
            Button(action: {}) { // Aqui criamos um construtor button que vai setar uma imagem para o button
                Image(systemName: "bell.badge") // Aqui estamos setando qual vai ser a imagem do button "bell.badge". Essa imagem é da própria biblioteca da apple
                    .font(.title3) // Como a imagem do button vem de uma biblioteca da apple, conseguimos setar o tamanho dela utilizando ".font"
                    .foregroundColor(.red) // Definindo a cor da imagem
                
            }
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

/* Alguns dos principais modificadores que são utilizados no swiftUI
 
 Fonte:
 .font(.headline) - Define a fonte como uma fonte de destaque
 .fonte(.system(size: 18)) - Define o tamanho da fonte como "X" tamanho, ai você escolhe qual tamanho será melhor
 
 Tamanho:
.frame(width: 200, height: 50) - Define o tamanho da vizualizaçao de largura(200) e altura(50)
.aspectRatio(contentMode: .fit) - Ajusta a proprorção da visualização para caber no espaço disponível
 
 Peso:
 .fontWeight(.bold) - Define o pesa da fonte como negrito
 .fontWeight(.light) - Define o peso da fonte como leve
 
 Cor:
 .foregroundColor(blue) - Define a cor do texto ou imagem como azul
 .backgroundColor(Color.gray) - Define a cor de fundo da visualização como cinza
 
 Mostrar ícone:
 .imageScale(.large) - Ajusta o tamanha de uma imagem para grande
 .iconColor(.red) - Define a cor do ícone como vermelho
 
 */
