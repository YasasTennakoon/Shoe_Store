//
//  comingSoonShoe.swift
//  shoe_store
//
//  Created by Yasas Tennakoon on 2024-04-24.
//

import SwiftUI

struct ComingSoonShoe: View {
    let backgroundColor = Color(red: 229/255, green: 228/255, blue: 226/255)
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    HStack{
                        Image("jordon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25)
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        VStack{
                            Text("18 JUNE")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        .frame(width: 70,height: 25)
                        .background(.black)
                        .cornerRadius(5)
                    }
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                }
                .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottom)
            }
            .frame(width: 250,height: 130)
            .background(backgroundColor)
            .cornerRadius(20)
            .shadow(radius: 5)
            
            VStack{
                Image("shoe-pair")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 220)
            }
            .offset(x:10,y:-50)
            
        }
    }

}

#Preview {
    ComingSoonShoe()
}
