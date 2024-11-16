//
//  shoe_container.swift
//  shoe_store
//
//  Created by Yasas Tennakoon on 2024-04-24.
//

import SwiftUI

struct FeatureShoe: View {
    let backgroundColor = Color(red: 229/255, green: 228/255, blue: 226/255)
    let cardColor = Color(red: 51 / 255.0, green: 51 / 255.0, blue: 51 / 255.0)
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    VStack{
                        HStack{
                            Image(systemName: "plus")
                                .padding()
                                .padding(.leading,3)
                                .frame(width: 36,height: 35)
                                .background(Color.white)
                                .foregroundColor(.black)
                                .cornerRadius(5)
                                .offset(x:-25,y:-12)
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(.white)
                        }
                        .padding()
                        
                        Image("jordon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150)
                            .opacity(0.5)
                            .offset(x:-10,y:-50)
                        Spacer()
                    }
                    .padding()
                    .background(cardColor)
                    .frame(width: 230, height: 290)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                }
                
                Spacer()
                
                VStack{
                    HStack{
                        Text("350$")
                            .font(.system(size: 23))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        VStack{
                            Text("NEW")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        .frame(width: 65,height: 25)
                        .background(Color.black)
                        .cornerRadius(8)
                    }
                    .padding()
                    
                }
                .padding(.bottom)
            }
            .frame(width: 210,height: 330)
            .background(backgroundColor)
            .cornerRadius(20)
            .shadow(radius: 5)
            
            VStack{
                Image("show_one")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 270,height: 220)
                    .rotationEffect(Angle(degrees: -23))
            }
            .offset(x:20,y:-30)
            
        }
    }
}

#Preview {
    FeatureShoe()
}
