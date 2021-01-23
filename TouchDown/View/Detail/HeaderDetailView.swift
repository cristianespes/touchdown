//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Cristian Espes on 23/01/2021.
//

import SwiftUI

struct HeaderDetailView: View {
    
    // MARK: - Properties
    let product: Product
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundColor(.white)
    }
}

#if DEBUG
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
#endif
