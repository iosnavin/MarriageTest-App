//
//  ContentView+ViewModel.swift
//  MarriageTestApp
//
//  Created by Naveen Reddy on 21/10/21.
//

import Foundation
import Combine

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var person: Person
        
        init(person: Person) {
            self.person = person
        }
    }
}
