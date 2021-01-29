//
//  TitleView.swift
//  TouchDown
//
//  Created by Cristian Espes on 23/01/2021.
//

import SwiftUI

struct TitleView: View {
    
    // MARK: - Properties
    var title: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top)
        .padding(.bottom, 10)
    }
}

#if DEBUG
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmets")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
#endif
