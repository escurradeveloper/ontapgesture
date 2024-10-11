//
//  ContentView.swift
//  Clase16OnTapGesture
//
//  Created by Escurra Colquis on 11/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isCell = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.indigo)
            .frame(width: 200, height: 200)
            .padding(.bottom, 40)
            .onTapGesture {
                print("Se presionó el cuadrado")
            }
        Text("Cuadrado indigo")
            .bold()
            .font(.system(size: 20))
            .onTapGesture {
                print("Presionamos el texto")
            }
            .padding(.bottom, 40)
        
        List {
            ForEach(1..<10) {
                index in
                HStack {
                    Text("Celda número: ")
                    Text("\(index)")
                        .bold()
                        .font(.system(size: 30))
                }
                .onTapGesture {
                    print("Número presionado: \(index)")
                    isCell.toggle()
                }
            }
        }
        .sheet(isPresented: $isCell) {
            Text("Texto model")
                .presentationDetents([.medium, .large])
        }
    }
}

#Preview {
    ContentView()
}
