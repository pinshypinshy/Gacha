//
//  ContentView.swift
//  Gacha
//
//  Created by 平石悠生 on 2026/02/09.
//

import SwiftUI

struct ContentView: View {
    @State var showSheet = false
    var body: some View {
        VStack {
            ZStack {
                Image("gacha")
                    .resizable()
                    .ignoresSafeArea()
                Button {
                    showSheet = true
                } label: {
                    Image("Presentbox")
                        .resizable()
                        .scaledToFit()
                }
            }
            .fullScreenCover(isPresented: $showSheet) {
                ResultView()
            }
        }
    }
}

#Preview {
    ContentView()
}
