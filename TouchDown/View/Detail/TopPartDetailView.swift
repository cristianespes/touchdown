//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by Cristian Espes on 23/01/2021.
//

import SwiftUI

struct TopPartDetailView: View {
    
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    @State private var isAnimated = false
    let namespace: Namespace.ID
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimated ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimated ? 0 : -35)
                .matchedGeometryEffect(id: shop.selectedProduct?.id ?? sampleProduct.id, in: namespace)
        })
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimated.toggle()
            }
        }
    }
}

#if DEBUG
struct TopPartDetailView_Previews: PreviewProvider {
    @Namespace static var placeholder
    static var previews: some View {
        TopPartDetailView(namespace: placeholder)
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
#endif
