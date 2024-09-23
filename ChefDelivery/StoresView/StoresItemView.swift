//
//  StoresItemView.swift
//  ChefDelivery
//
//  Created by Joao Lunelli on 13/06/24.
//

import SwiftUI

struct StoresItemView: View {
    
    let order: OrderType
    
    var body: some View {
        HStack {
            Image(order.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            VStack {
                Text(order.name)
                    .font(.subheadline)
                Text("45 - 50 minutos")
                    .font(.system(size: 13))
                    .foregroundColor(.blue)
                
            }
            
            Spacer()
        }
    }
}

struct StoresItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoresItemView(order: OrderType(id: 1,
                                        name: "Monstro Burguer",
                                        image: "monstro-burger-logo"))
    }
}
