//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Christopher Kennedy on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State var year = 2023
    @State var imageArray = ["RAT", "OX", "TIGER", "RABBIT", "DRAGON", "SNAKE", "HORSE", "GOAT", "MONKEY", "ROOSTER", "DOG", "PIG"]
    @State var arrayNum = 3
    var body: some View {
        VStack {
            Text(String(year))
                .fontWeight(.black)
                .font(.largeTitle)
                .foregroundColor(.red)
            
            Spacer()
            
            Image(imageArray[arrayNum])
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
            
            Text(imageArray[arrayNum])
                .fontWeight(.black)
                .font(.largeTitle)
                .foregroundColor(.black)
            
            Spacer()
            
            HStack{
                Button{
                    year-=1
                    arrayNum-=1
                    if arrayNum == -1{
                        arrayNum = 11
                    }
                }
            label:{
                Image(systemName: "chevron.left")
            }
                
                Spacer()
                
                Button{
                    year+=1
                    arrayNum+=1
                    if arrayNum == 12{
                        arrayNum = 0
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
