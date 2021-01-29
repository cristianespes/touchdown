//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Cristian Espes on 23/01/2021.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    let namespace: Namespace.ID
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            NavigationBarDetailView()
            
            HeaderDetailView()
                .padding(.horizontal)
                .environmentObject(shop)
            
            TopPartDetailView(namespace: namespace)
                .padding(.horizontal)
                .zIndex(1)
                .environmentObject(shop)
            
            VStack(alignment: .center, spacing: 0, content: {
                
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                AddToCartDetailView()
                    .padding(.bottom, 20)
                    .environmentObject(shop)
                
            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        })
        .zIndex(0)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .ignoresSafeArea(.all, edges: .all)
    }
}

#if DEBUG
struct ProductDetailView_Previews: PreviewProvider {
    @Namespace static var placeholder
    static var previews: some View {
        ProductDetailView(namespace: placeholder)
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
#endif
