import SwiftUI

struct CarouselItemView: View {
    
    let orderType: OrderType
    
    var body: some View {
        Image(orderType.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)

    }
}

struct CarouselItemView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselItemView(orderType: OrderType(id: 1,
                                              name: "",
                                              image: "barbecue-banner"))
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
