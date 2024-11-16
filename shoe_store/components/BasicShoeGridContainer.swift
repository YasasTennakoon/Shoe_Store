//
//  BasicShoeGridContainer.swift
//  shoe_store
//
//  Created by Yasas Tennakoon on 2024-06-14.
//

import SwiftUI

struct BasicShoeGridContainer: View {
    let backgroundColor = Color(red: 229/255, green: 228/255, blue: 226/255)
    let cardColor = Color(red: 51 / 255.0, green: 51 / 255.0, blue: 51 / 255.0)
    var body: some View {
            VStack{
                HStack{
                    VStack{
                        HStack{
                                                        Image("jordon")
                                                            .resizable()
                                                            .frame(width: 25,height: 25)
                                                            .offset(x:5,y:6)
                            
                                                        Spacer()
                                                        Image(systemName: "heart")
                                                            .foregroundColor(.white)
                                                            .offset(x:-7,y:6)
                        }
                        
                                        Image("show_one")
                                            .resizable()
                                            .frame(width: 150,height: 120)
                                            .rotationEffect(Angle(degrees: -23))
                                            .offset(x:-5,y:-10)
                    }
                    .frame(width: 150,height: 140)
                    .background(cardColor)
                    .cornerRadius(8)
                    .shadow(radius: 10)
                    
                    VStack(alignment:.leading,spacing: 48){
                        HStack{
                            Text("Air Jordon 11")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                        }
                        VStack(alignment:.leading, spacing: 3){
                            Text("$350")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                            HStack{
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star")
                            }
                            .foregroundColor(.yellow)
                            .font(.system(size: 12))
                            
                            Text("Free Shipping")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                        }
                    }
                    
                        VStack{
                            HStack{
                                Image(systemName: "plus")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .offset(x:-1,y:-1)
                            }
                        }
                        .frame(width: 50,height: 50)
                        .background(Color.black)
                        .cornerRadius(8)
                        .offset(x:55,y:50)
                }
            }
            .frame(width: 375,height: 140,alignment: .leading)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}

#Preview {
    BasicShoeGridContainer()
}
