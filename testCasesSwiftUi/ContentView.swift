//
//  ContentView.swift
//  testCasesSwiftUi
//
//  Created by Neosoft on 28/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var inrtext : String = ""
    @State var dlrtext : String = ""
    var viewModel = Converter()
    var body: some View {
        VStack {
            Text("Doller To INR")
                .bold()
                .font(.title2)
            TextField("INR Value", text: $inrtext)
                .textFieldStyle(.roundedBorder)
                .onChange(of:inrtext) { newValue in
                    dlrtext = viewModel.convertInrToUsd(inr: newValue)
                }
            Text("To")
            TextField("DOLLER Value", text: $dlrtext)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
