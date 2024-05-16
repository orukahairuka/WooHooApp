//
//  ContentView.swift
//  WooHooApp
//
//  Created by 櫻井絵理香 on 2024/05/16.
//
import SwiftUI

struct HomeView: View {
    @State private var isLarge: Bool = false

    let levelPlayer = LevelSound()

    var body: some View {
        VStack{
            Spacer()
            Text("それは")
                .font(.system(size: 100, weight: .regular, design: .rounded))


            Spacer()
            Button {
                isLarge.toggle()
                if isLarge {
                    levelPlayer.musicPlayer()
                }
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: 200, height: 100)
                        .foregroundColor(.green)
                        .scaleEffect(isLarge ? 15 : 1)
                        .animation(.spring(), value: isLarge)

                }
            }
            if(isLarge) {
                VStack(alignment: .center){
                    Text("それは")
                        .foregroundStyle(.white)
                        .font(.system(size: 100, weight: .regular, design: .rounded))
                    Text("そう")
                        .foregroundStyle(.white)
                        .font(.system(size: 150, weight: .regular, design: .rounded))
                }
            }
            Spacer()
        }
        .padding()
    }
}

