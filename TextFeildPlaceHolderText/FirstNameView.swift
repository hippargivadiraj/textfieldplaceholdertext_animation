//
//  FirstNameView.swift
//  TextFeildPlaceHolderText
//
//  Created by Vadiraj Hippargi on 2/25/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import SwiftUI

struct FirstNameView: View {
    
    @State var username: String = ""
    @State var showText: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
                self.showText ?
                    Text(" First Name ")                .font(.callout).foregroundColor(.white).padding(.horizontal, 10).background(Color.gray) :
                    Text(" First Name ")                    .font(.callout).foregroundColor(.white).padding(.horizontal, 0).background(Color.white)
                
            
            TextField("Enter FirstName...", text: $username, onEditingChanged: {changed in
                withAnimation {
                    self.showText = changed
                }
            })
                   .textFieldStyle(RoundedBorderTextFieldStyle())
                    .border(Color.gray)
                .background(Color.gray)
        

   
        }.padding(.horizontal, 15)
    }
}

struct FirstNameView_Previews: PreviewProvider {
    static var previews: some View {
        FirstNameView()
    }
}
