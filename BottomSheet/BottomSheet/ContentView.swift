//
//  ContentView.swift
//  BottomSheet
//
//  Created by Sachin Daingade on 05/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isBottonSheet = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                isBottonSheet.toggle()
            }.buttonStyle(.bordered)
        }
        .padding()
        .sheet(isPresented: $isBottonSheet) {
            BottonSheetView()
                .presentationDetents([.fraction(0.2),.medium])
                .presentationDragIndicator(.hidden)
        }
    }
}

struct BottonSheetView: View {
    var body: some View {
        Text("Select")
        HStack {
            Image(systemName: "star")
                .padding()
            Image(systemName: "gear")
                .padding()
            Image(systemName: "bell")
                .padding()
            Image(systemName: "person")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
