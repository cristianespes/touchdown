//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by Cristian Espes on 23/01/2021.
//

import SwiftUI

struct TopPartDetailView: View {
    
    // MARK: - Properties
    let product: Product
    @State private var isAnimated = false
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(product.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimated ? -50 : -75)
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimated ? 0 : -35)
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
    static var previews: some View {
        TopPartDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
#endif
