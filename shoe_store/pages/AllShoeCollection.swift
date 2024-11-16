//
//  AllShoeCollection.swift
//  shoe_store
//
//  Created by Yasas Tennakoon on 2024-06-06.
//

import SwiftUI

struct AllShoeCollection: View {
    
    @State var gridView:Bool = true
    @State var addcart:Bool = true
    @State private var text: String = ""
    @State private var isEditing = false
    @Environment(\.dismiss) var dismiss
    let flexibleColumn = [
        GridItem(.fixed(185)),
        GridItem(.fixed(185))
    ]
    
    let flexibleColumne = [
        GridItem()
    ]
    @State private var currentPage = 0
    @State private var currentTab = 0
    @State private var isActive = false
    let images = ["justDoIt","justDoIt", "justDoIt"]
    let tab = ["All", "Running", "BasketBall", "Golf", "Cycling"]

    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        
                        TextField("Search ...", text: $text)
                        
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(.gray)
                    }
                    .font(.system(size: 15))
                    .padding(6)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .onTapGesture {
                        self.isEditing = true
                    }
                }
                
                            TabView(selection: $currentPage) {
                                ForEach(0..<images.count, id: \.self) { index in
                                    Image(images[index])
                                        .resizable()
                                        .tag(index)
                                }
                            }
                            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                            .frame(width:378,height: 173)
                            .cornerRadius(10)
                            .onReceive(timer) { _ in
                                withAnimation {
                                    currentPage = (currentPage + 1) % images.count
                                }
                            }
                    
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment:.center){
                        ForEach(0 ..< tab.count,id: \.self){ index in
                            HStack{
                                Button(action: {
                                    currentTab = index
                                    isActive.toggle()
                                }, label: {
                                    Text(tab[index])
                                        .font(.system(size: 13, weight: .medium))
                                        .foregroundColor((isActive && currentTab == index) ? .white : .black)
                                        .padding(.leading,5)
                                        .padding(.trailing,5)
                                })
                                .background((isActive && currentTab == index) ? .black : .white)
                                .buttonStyle(.bordered)
                                .cornerRadius(10)
                            }

                        }
                    }
                    .padding(.top,5)
                    .padding(.bottom,5)
                }
                    
                ScrollView{
                    VStack(alignment:.leading){
                    if (!gridView){
                        LazyVGrid(columns: flexibleColumn,spacing: 10) {
                            BasicShoeContainer()
                            BasicShoeContainer()
                            BasicShoeContainer()
                        }
                    }
                    else{
                        VStack{
                            BasicShoeGridContainer()
                        }
                    }
                    }
                }
            }
            .padding(.horizontal)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                        Button(action: {
                            dismiss()
                        }) {
                            Image(systemName: "arrow.backward")
                                .foregroundColor(.black)
                        }
                }
                
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
                                      gridView ?
                                      Button(action: {
                                          gridView = false
                                      }, label: {
                                          Image(systemName: "square.grid.2x2")
                                              .foregroundColor(.black)
                                              .font(.system(size: 15))
                                              
                                      })
                                      :
                                      Button(action: {
                                          gridView = true
                                      }, label: {
                                          Image(systemName: "rectangle.grid.1x2")
                                              .foregroundColor(.black)
                                              .font(.system(size: 15))
                                      })
                                  }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                                  Button(action: {
                                      print("Leading button tapped")
                                  }) {
                                      Image(systemName: "cart")
                                          .foregroundColor(.black)
                                          .font(.system(size: 15))
                                  }
                              }
            }
        }
        .navigationBarBackButtonHidden(true)

   
    }
}

#Preview {
    AllShoeCollection()
}
