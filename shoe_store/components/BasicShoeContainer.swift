//
//  BasicShoeContainer.swift
//  shoe_store
//
//  Created by Yasas Tennakoon on 2024-06-06.
//

import SwiftUI

struct BasicShoeContainer: View {
    let backgroundColor = Color(red: 229/255, green: 228/255, blue: 226/255)
    let cardColor = Color(red: 51 / 255.0, green: 51 / 255.0, blue: 51 / 255.0)
    
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    HStack{
                                                    Image("jordon")
                                                        .resizable()
                                                        .frame(width: 30,height: 30)
                                                        .offset(x:5,y:1)
                        
                                                    Spacer()
                                                    Image(systemName: "heart")
                                                        .foregroundColor(.white)
                                                        .offset(x:-7,y:1)
                    }
                    
                                    Image("show_one")
                                        .resizable()
                                        .frame(width: 180,height: 150)
                }
                .frame(width: 180,height: 200)
                .background(cardColor)
                            .cornerRadius(10)
                            .shadow(radius: 5)

                
                Spacer()
                
                    
                    HStack(alignment:.center, spacing: 35){
                        VStack(alignment: .leading){
                            Text("Air jordon 11")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                            
                            Text("$350")
                                .font(.system(size: 15))
                                                               .fontWeight(.bold)
                                                               .foregroundColor(.black)
                        }
                        
                                                VStack{
                                                    HStack{
                                                        Text("ADD")
                                                            .font(.system(size: 10))
                                                            .foregroundColor(.white)
                                                            .fontWeight(.bold)
                        
                                                        Image(systemName: "plus")
                                                            .font(.system(size: 10))
                                                            .foregroundColor(.white)
                                                    }
                                                }
                                                .frame(width: 60,height: 25)
                                                .background(Color.black)
                                                .cornerRadius(8)
                    }
                    .padding(.bottom,8)

         
            }
            .frame(width: 180,height: 255)
            .background(backgroundColor)
            .cornerRadius(10)
            
//            VStack{
//                VStack{
//                    VStack{
//                        HStack{
//                            Image("jordon")
//                                .resizable()
//                                .frame(width: 30,height: 30)
//                            
//                            Spacer()
//                            Image(systemName: "heart")
//                                .foregroundColor(.white)
//                                .offset(x:-7,y:1)
//                        }
//                        .padding()
//                        
//                        Spacer()
//                    }
//                    .padding()
//                    .background(cardColor)
//                    .frame(width: 230, height: 230)
//                    .cornerRadius(20)
//                    .shadow(radius: 20)
//                }
//                
//                Spacer()
//                
//                VStack{
//                    HStack(alignment: .center,spacing: 35){
//                            Text("350$")
//                                .font(.system(size: 15))
//                                .fontWeight(.bold)
//                                .foregroundColor(.black)
//                        
//                        
//                        VStack{
//                            HStack{
//                                Text("ADD")
//                                    .font(.system(size: 10))
//                                    .foregroundColor(.white)
//                                    .fontWeight(.bold)
//                                
//                                Image(systemName: "plus")
//                                    .font(.system(size: 10))
//                                    .foregroundColor(.white)
//                            }
//                        }
//                        .frame(width: 60,height: 25)
//                        .background(Color.black)
//                        .cornerRadius(8)
//                    }
//                    .padding()
//                    
//                }
//            }
//            .frame(width: 170,height: 240)
//            .background(backgroundColor)
//            .cornerRadius(20)
//            .shadow(radius: 5)
//            
//            VStack{
//                Image("show_one")
//                    .resizable()
//                    .frame(width: 180,height: 150)
//            }
//            .offset(x:-1,y:-10)
//            
        }
    }
}

#Preview {
    BasicShoeContainer()
}
