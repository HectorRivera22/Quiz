//
//  GameOver.swift
//  Quiz App
//
//  Created by StudentAM on 4/12/24.
//

import SwiftUI

struct GameOver: View {
    var score: Int
    var body: some View {
        NavigationView{
            ZStack{
                Image("quizBackground")
                VStack{
                    Text("Total Score: \(score)/10")
                        .bold()
                        .foregroundColor(.white)
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true),
                        label:{
                        Text("Play Again")
                            .font(.title)
                            .padding(10)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    })
                }
            }
        }
    }
}

#Preview {
    GameOver(score: 0)
}
