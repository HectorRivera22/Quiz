//
//  page2.swift
//  Quiz App
//
//  Created by StudentAM on 4/11/24.
//

import SwiftUI
struct Question{
    var question:String
    var options:[String]
    var answer:String
}
struct page2: View {
    @State private var questions:[Question]=[
        Question(question:"What's my middle name?", options:["Alejandro","Jesus","Andres","Isaac"],answer:"Alejandro"),
        Question(question:"When was I born?", options:["Jan.22/06","Feb.18/06","Feb.08/06","Dec.12/05"],answer:"Jan.22/06"),
        Question(question:"How many pets have I had in total?", options:["1","2","3","4"],answer:"4"),
        Question(question:"How tall am I?", options:["6'0","6'1","5'10","5'9"],answer:"6'1"),
        Question(question:"What kind of pet do I currently have?", options:["Dog","Cat","Bird","Gini-pig"],answer:"Dog"),
        Question(question:"Wha's my pets name?", options:["Kobe","Thor","Chato","Hulk"],answer:"Hulk"),
        Question(question:"How many siblings do I have?", options:["2","1","4","3"],answer:"3"),
        Question(question:"Who's my favorite basketball player of all time?", options:["Curry","LBJ","Kyrie","Kobe"],answer:"Kobe"),
        Question(question:"What sport did I grow up playing?", options:["Football","Soccer","Basketball","Baseball"],answer:"Soccer"),
        Question(question:"What's my favorite soccer team ?", options:["FC Barcelona","Arsenal","Real Madrid","Manchester City"],answer:"FC Barcelona"),
    ]
    @State private var score: Int = 0
    @State private var index = 0
    @State private var answerPick = false
    var body: some View {
        NavigationView{
        ZStack{
            Image("quizBackground")
            VStack{
                Text("Current Score: \(score)")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                Text(questions[index].question)
                    .frame(width:350, height: 200)
                    .border(.black)
                    .cornerRadius(8)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .padding(15)
                ForEach(questions[index].options.indices, id:\.self){ i in
                    Button(action: {checkAnswer(optionPick: questions[index].options[i])}, label: {
                        Text(questions[index].options[i])
                            .frame(width:300, height:45)
                            .border(.black)
                            .cornerRadius(8)
                            .foregroundColor(.black)
                            .background(Color.white)
                    })
                    .padding(5)
                }
                if answerPick == true && index < 9{
                    Button(action: {updateQuestion()}, label: {
                        Text("Next")
                            .frame(width:200, height:50)
                            .border(.black)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            .background(Color.blue)
                    })
                    .padding()
                }
                if index == 9 && answerPick == true{
                    NavigationLink(destination: GameOver(score: score)) {
                        Text("Final Score")
                            .frame(width:200, height:50)
                            .border(.black)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            .background(Color.blue)
                        }
                    }
                }
            }
        }
    }
    func updateQuestion(){
        index += 1
        answerPick = false
    }
    func checkAnswer(optionPick:String){
        print("checking answer")
        answerPick = true
        if optionPick == questions[index].answer{
            score += 1
        }
    }
}

#Preview {
    page2()
}
