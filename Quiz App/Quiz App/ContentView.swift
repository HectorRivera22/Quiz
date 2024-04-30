//
//  ContentView.swift
//  Quiz App
//
//  Created by StudentAM on 4/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("quizBackground")
                VStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("Quiz Time!!")
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                    NavigationLink(destination: page2() .navigationBarBackButtonHidden(true), label: {
                        Text("Begin")
                            .frame(width: 200, height: 50)
                            .font(.title)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                        })
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
