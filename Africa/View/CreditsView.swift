//
//  CreditsView.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/18/23.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
            Copyright © Ehsan Rahimi
            All Right reserved
            Better Apps,♡ with more code

            """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        } //: VASTCK
        .padding()
        .opacity(0.4)
    }
}

// MARK: PREVIEW

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
