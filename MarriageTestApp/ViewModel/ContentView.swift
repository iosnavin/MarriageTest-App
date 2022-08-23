//
//  ContentView.swift
//  MarriageTestApp
//
//  Created by Naveen Reddy on 20/10/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel(person: Person(name: "", age: "", gender: .male))
    @State var isExpanded = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.yellow
                    .edgesIgnoringSafeArea(.all)
                ImageView()
                    .offset(x: 0, y: -300)
                VStack {
                    VStack(spacing: 50) {
                        
                        InputField(placehoder: "Full name", text: $viewModel.person.name)
                        
                        VStack {
                            DisclosureGroup(viewModel.person.gender.rawValue, isExpanded: $isExpanded){
                                ForEach(Gender.allCases, id: \.self) { option in
                                    Text("\(option.rawValue)")
                                        .onTapGesture {
                                            self.viewModel.person.gender = option
                                            self.isExpanded.toggle()
                                        }
                                }
                            }.padding(.leading)
                        }
                        
                        InputField(placehoder: "Age", text: $viewModel.person.age)
                        
                        if  !viewModel.person.age.isEmpty && !viewModel.person.isMarriageAge {
                            Text(viewModel.person.warningMessage)
                        }
                    }
                    .padding()
                    
                    Button(action: {
                        print(viewModel.person.name, viewModel.person.age)
                    }, label: {
                        Text("Continue")
                            .foregroundColor(Color.white)
                            .font(.title2)
                    })
                    .padding()
                    .frame(width: 300, height: 60)
                    .background(Background())
                    .cornerRadius(30)
                    .offset(x:0, y: 100)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



