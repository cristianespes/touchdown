//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Cristian Espes on 24/01/2021.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    // MARK: - Properties
    let product: Product
    
    
    // MARK: - Body
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
        })
        .padding()
        .background(
            Color(red: product.red, green: product.green, blue: product.blue)
        )
        .clipShape(Capsule())
    }
}

#if DEBUG
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
#endif
