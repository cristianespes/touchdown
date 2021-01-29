//
//  HomeView.swift
//  TouchDown
//
//  Created by Cristian Espes on 23/01/2021.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        
                        FeaturedTabView()
                            .padding(.vertical)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 16, content: {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                                    .onTapGesture {
                                        feedback.impactOccurred()
                                        
                                        withAnimation(.easeOut) {
                                            shop.selectedProduct = product
                                            shop.showingProduct = true
                                        }
                                    }
                            }
                        })
                        .padding()
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                    }
                })
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            
            if shop.showingProduct, shop.selectedProduct != nil {
                ProductDetailView()
                    .environmentObject(shop)
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 12 mini")
            .environmentObject(Shop())
    }
}
#endif
