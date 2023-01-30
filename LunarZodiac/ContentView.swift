//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Christopher Kennedy on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State var year = 2023
    @State var imageNum = 3
    var body: some View {
        VStack {
            Text(String(year))
                .fontWeight(.black)
                .font(.largeTitle)
                .foregroundColor(.red)
            
            Spacer()
            
            Image("image"+String(imageNum))
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
            
            Spacer()
            
            HStack{
                Button{
                    year-=1
                    imageNum-=1
                    if imageNum == -1{
                        imageNum = 11
                    }
                }
            label:{
                Image(systemName: "chevron.left")
            }
                
                Spacer()
                
                Button{
                    year+=1
                    imageNum+=1
                    if imageNum == 12{
                        imageNum = 0
                    }
                }
            label:{
                Image(systemName: "chevron.right")
            }
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            .font(.largeTitle)
            .fontWeight(.black)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
