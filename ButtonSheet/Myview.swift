//
//  Myview.swift
//  ButtonSheet
//
//  Created by Willy Hsu on 2024/12/9.
//

import SwiftUI

struct Myview: View {
    var body: some View {
        VStack{
            Spacer()
            Image(systemName: "scribble.variable")
                .resizable()
                .aspectRatio(1,contentMode: .fit)
            Spacer()
        }.background(Color.gray)
    }
}

#Preview {
    Myview()
}
