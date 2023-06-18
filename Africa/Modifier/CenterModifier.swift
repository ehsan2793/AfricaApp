//
//  CenterModifier.swift
//  Africa
//
//  Created by Ehsan Rahimi on 6/18/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
