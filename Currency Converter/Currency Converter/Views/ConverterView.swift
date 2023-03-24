//
//  ContentView.swift
//  Currency Converter
//
//  Created by Danilo Cazaroto de Oliveira on 23/03/23.
//

import SwiftUI

struct ConverterView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ConverterView()
    }
}
