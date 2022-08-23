//
//  InputField.swift
//  MarriageTestApp
//
//  Created by Naveen Reddy on 21/10/21.
//

import Foundation
import SwiftUI

struct InputField: View {
    let placehoder: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            TextField(placehoder, text: $text)
                // .foregroundColor(isMarriageAge ? .primary : )
                .keyboardType(.numberPad)
                .padding(.top)
                .padding(.leading)
            Divider().frame(width: 330, alignment: .leading)
        }
    }
}
