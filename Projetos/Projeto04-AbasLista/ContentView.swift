//
//  ContentView.swift
//  Projeto 04 — Abas e lista
//

import SwiftUI

struct ContentView: View {
    struct ItemLista: Identifiable {
        let id = UUID()
        let titulo: String
        let icone: String
    }

    let itensDaLista = [
        ItemLista(titulo: "Pincel - Rosa", icone: "paintbrush"),
        ItemLista(titulo: "Caneta - Azul", icone: "paintbrush.pointed"),
        ItemLista(titulo: "Palheta de Cores - Cinza", icone: "paintpalette"),
        ItemLista(titulo: "Lista", icone: "paintpalette")
    ]

    var body: some View {
        TabView {
            ZStack {
                Color.pink.opacity(0.75).ignoresSafeArea()
                VStack {
                    Spacer()
                    ZStack {
                        Circle().fill(Color.black).frame(width: 300, height: 300)
                        Image(systemName: "paintbrush")
                            .font(.system(size: 150))
                            .foregroundColor(.pink)
                    }
                    Spacer()
                }
            }
            .tabItem { Label("Rosa", systemImage: "paintbrush") }

            ZStack {
                Color.blue.opacity(0.75).ignoresSafeArea()
                VStack {
                    Spacer()
                    ZStack {
                        Circle().fill(Color.black).frame(width: 300, height: 300)
                        Image(systemName: "paintbrush.pointed")
                            .font(.system(size: 150))
                            .foregroundColor(.blue)
                    }
                    Spacer()
                }
            }
            .tabItem { Label("Azul", systemImage: "paintbrush.pointed") }

            ZStack {
                Color.gray.opacity(0.75).ignoresSafeArea()
                VStack {
                    Spacer()
                    ZStack {
                        Circle().fill(Color.black).frame(width: 300, height: 300)
                        Image(systemName: "paintpalette")
                            .font(.system(size: 150))
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
            }
            .tabItem { Label("Cinza", systemImage: "paintpalette") }

            NavigationView {
                List(itensDaLista) { item in
                    HStack(spacing: 16) {
                        Text(item.titulo).font(.headline)
                        Spacer()
                        ZStack {
                            Circle().fill(Color.black).frame(width: 40, height: 40)
                            Image(systemName: item.icone)
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.vertical, 4)
                }
                .navigationTitle("Lista de Itens")
            }
            .tabItem { Label("Lista", systemImage: "line.3.horizontal") }
        }
    }
}

#Preview {
    ContentView()
}
