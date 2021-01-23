//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Cristian Espes on 23/01/2021.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - Properties
    let product: Product
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            NavigationBarDetailView()
            
            HeaderDetailView(product: product)
                .padding(.horizontal)
            
            TopPartDetailView(product: product)
                .padding(.horizontal)
            
            Spacer()
        })
        .background(
            Color(red: product.red, green: product.green, blue: product.blue)
        )
        .ignoresSafeArea(.all, edges: .all)
    }
}

#if DEBUG
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: sampleProduct)
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
#endif
