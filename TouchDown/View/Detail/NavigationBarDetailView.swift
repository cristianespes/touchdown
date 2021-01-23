//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by Cristian Espes on 23/01/2021.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
        .padding(.horizontal)
        .padding(.bottom)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
