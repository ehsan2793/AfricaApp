//
//  InsetFactView.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/11/23.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES

    let animal: Animal

    // MARK: - BODY

    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                } //: LOOP
            } // TAB
            .tabViewStyle(PageTabViewStyle())
            .frame(idealWidth: 168, minHeight: 148, maxHeight: 180)
        } //: BOX
    }
}

// MARK: PREVIEW

struct InsetFactView_Previews: PreviewProvider {
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
