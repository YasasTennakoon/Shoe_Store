//
//  ContentView.swift
//  shoe_store
//
//  Created by Yasas Tennakoon on 2024-04-24.
//

import SwiftUI

//This is the Landing Page.
struct LandingPage: View {
    let backgroundColor = Color(red: 229/255, green: 228/255, blue: 226/255)
    var body: some View {
        NavigationView{
            ScrollView{
                ZStack{
                    VStack{
                        VStack{
                            HStack{
                                Text("FEATURES")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .padding(.horizontal)
                                
                                HStack{
                                    NavigationLink(destination: {
                                        AllShoeCollection()
                                    }, label: {
                                        Text("SEE ALL")
                                            .frame(maxWidth: .infinity, alignment: .trailing)
                                            .fontWeight(.bold)
                                            .font(.system(size: 12))
                                        
                                        Image(systemName: "arrow.forward.circle.fill")
                                            .font(.system(size: 12))
                                    })
                                }
                                .padding(.horizontal)
                                .foregroundColor(.black)
                            }
                            
                            
                            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                                HStack{
                                    VStack{
                                        Text("FEATURE")
                                            .font(.system(size: 12))
                                            .foregroundColor(.gray)
                                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                            .rotationEffect(.degrees(-90))
                                            .padding(.bottom,20)
                                        Spacer()
                                        Rectangle().fill(Color.gray)
                                            .frame(width: 1)
                                    }
                                    .padding(.top,17)
                                    .padding(.vertical,15)
                                    .frame(width:56,height: 320)
                                    .background(backgroundColor)
                                    .clipShape(Rectangle())
                                    .cornerRadius(5)
                                    .padding(.leading,10)
                                    
                                    ScrollView(.horizontal,showsIndicators: false){
                                            HStack{
                                                NavigationLink{
                                                    DetailedShoeView()
                                                } label: {
                                                    FeatureShoe()
                                                }
                                                FeatureShoe()
                                                FeatureShoe()
                                                FeatureShoe()
                                                FeatureShoe()
                                                FeatureShoe()
                                                FeatureShoe()
                                            }
                                            .padding(.horizontal, -55)
                                            .padding(30)
                                    }
                                }
                            }
                        }
                        VStack{
                            HStack{
                                        Text("COMING SOON")
                                            .fontWeight(.bold)
                                            .font(.system(size: 20))
                                            .padding(.horizontal)
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            
                                VStack{
                                    HStack{
                                        VStack{
                                            Text("JUNE")
                                                .font(.system(size: 13))
                                                .foregroundColor(.gray)
                                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                                .rotationEffect(.degrees(-90))
                                                .padding(.bottom,5)
                                        }
                                        .frame(width:50,height: 120)
                                        .background(backgroundColor)
                                        .clipShape(Rectangle())
                                        .cornerRadius(5)
                                        .padding(.leading,10)
                                        
                                        ScrollView(.horizontal,showsIndicators: false){
                                                HStack{
                                                    ComingSoonShoe()
                                                    ComingSoonShoe()
                                                    ComingSoonShoe()
                                                }
                                                .padding(.horizontal, -15)
                                                .padding(19)
                                        }
                                    }
                                }
                        }
                        
                        VStack{
                            HStack{
                                VStack{
                                    Text("JULY")
                                        .font(.system(size: 13))
                                        .foregroundColor(.gray)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .rotationEffect(.degrees(-90))
                                        .padding(.bottom,5)
                                }
                                .frame(width:50,height: 120)
                                .background(backgroundColor)
                                .clipShape(Rectangle())
                                .cornerRadius(5)
                                .padding(.leading,10)
                                
                                ScrollView(.horizontal,showsIndicators: false){
                                        HStack{
                                            ComingSoonShoe()
                                            ComingSoonShoe()
                                            ComingSoonShoe()
                                        }
                                        .padding(.horizontal, -15)
                                        .padding(19)
                                }
                            }
                        }
                    }
                    .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .top)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                    Button(action: {}, label: {
                       Image("nike-logo")
                            .resizable()
                            .frame(width: 104,height: 104)
                    })
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                                  Button(action: {
                                      print("Leading button tapped")
                                  }) {
                                      Image(systemName: "magnifyingglass")
                                          .foregroundColor(.black)
                                  }
                              }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                                  Button(action: {
                                      print("Leading button tapped")
                                  }) {
                                      Image(systemName: "cart")
                                          .foregroundColor(.black)
                                  }
                }
            }
        }
    }
}

#Preview {
    LandingPage()
}
