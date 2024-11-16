//
//  DetailedShoeView.swift
//  shoe_store
//
//  Created by Yasas Tennakoon on 2024-06-04.
//

import SwiftUI

struct ShoeColor:Identifiable, Equatable{
    let id = UUID()
    var shoeColor:Color
    var isPresent:Bool
}



struct DetailedShoeView: View {
    @Environment(\.dismiss) var dismiss
    let backgroundColor = Color(red: 238/255, green: 238/255, blue: 238/255)
    @State var selectedShoe: ShoeColor?
    @State var selectedSize: Double?
    @State var isSheetPresent: Bool = true
    @State private var showSafeAreaInset: Bool = false
    @State private var isButtonDisabled = true
    var shoes: [ShoeColor] = [
        ShoeColor(shoeColor: Color.red, isPresent: true),
        ShoeColor(shoeColor: Color.blue, isPresent: false),
        ShoeColor(shoeColor: Color.gray, isPresent: false),
        ShoeColor(shoeColor: Color.yellow, isPresent: true)
    ]
    
    let data = [6.0, 7.0, 8.0, 9.0]
    let flexibleColumn = [
        GridItem(.fixed(65)),
        GridItem(.fixed(65)),
        GridItem(.fixed(65)),
        GridItem(.fixed(65)),
        GridItem(.fixed(65))
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                ZStack{
                    VStack{
                        ZStack{                            
                            Image("show_one")
                                .resizable()
                                .frame(width: 350,height: 290)
                        }
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack(alignment:.center, spacing: 12){
                                ForEach(0..<3){_ in
                                    VStack{
                                        Image("show_one")
                                            .resizable()
                                            .frame(width: 70,height: 60)
                                    }
                                    .frame(width: 80,height: 50)
                                    .background(backgroundColor)
                                    .cornerRadius(10)
                                }
                                VStack{
                                    ZStack{
                                        Image("show_one")
                                            .resizable()
                                            .frame(width: 120,height: 110)
                                            .opacity(0.3)
                                        
                                        Image(systemName: "play.circle.fill")
                                            .font(.system(size: 25))
                                            .foregroundColor(.white)
                                    }
                                }
                                .frame(width: 80,height: 60)
                                .background(backgroundColor)
                                .cornerRadius(10)
                            }
                        }
                        .padding()
                        .padding(.vertical,-60)
                        
                        
                        VStack(alignment: .leading){
                            HStack(alignment:.center,spacing:85){
                                Text("AIR JORDAN 11 RETRO")
                                    .font(.system(size: 20))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                
                                Text("1300$")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                            }
                            .padding(.bottom,18)
                            .padding(.top,20)


                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra leo orci, vel accumsan leo ultricies commodo. Etiam at sem lorem. Nullam hendrerit turpis ut massa vehicula, at imperdiet ante sagittis. Proin pretium vitae velit et scelerisque. Morbi semper tellus non risus lobortis sagittis Proin pretium Proin pretium vitae velit et scelerisque. Morbi semper tellus non.")
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                .lineSpacing(3)
                                .font(.system(size: 12))
                                .fontWeight(.medium)
                            
                            Text("More Details")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                                .fontWeight(.bold)
                                .underline()
                                .padding(.top,1)
                        }
                        .padding()
                        
                        VStack(alignment: .leading){
                            HStack(alignment: .center,spacing: 230){
                                Text("SIZE")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                
                                Text("UK : US")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .fontWeight(.bold)
                                    .font(.system(size: 15))
                            }
                            
                            
                        
                            ScrollView(.horizontal,showsIndicators: false){
                                HStack(alignment:.center,spacing:12){
                                    Button(action: {

                                    }){
                                        ZStack{
                                            HStack{
                                                Text("Try it")
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 13))
                                                    .fontWeight(.bold)
                                                
                                                Image(systemName: "shoeprints.fill")
                                                    .foregroundColor(.black)
                                            }
                                            .frame(width: 80,height: 45)
                                            .background(backgroundColor)
                                            .cornerRadius(5)
                                        }
                                    }
                                    ForEach(data, id: \.self) { item in
                                        Button(action: {
                                            selectedSize = item
                                            isButtonDisabled = false
                                        }){
                                            ZStack{
                                                VStack{
                                                    Text("\(item.formatted(.number.precision(.fractionLength(1))))")
                                                        .foregroundColor(.black)
                                                        .font(.system(size: 16))
                                                        .fontWeight(.bold)
                                                }
                                                .frame(width: 58,height: 45)
                                                .background(backgroundColor)
                                                .cornerRadius(5)
                                                
                                                if(selectedSize == item){
                                                    Image(systemName: "checkmark.circle.fill")
                                                        .font(.system(size: 12))
                                                        .foregroundColor(.black)
                                                        .offset(x:25,y:-12)
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            
                        }
                        .padding()
                        .padding(.vertical,-20)
                    }
                    .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .top)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .overlay(
                // This overlay could be developed as a common component.
                Group {
                    if (showSafeAreaInset) {
                        VStack{
                            Spacer()
                            VStack{
                                HStack(alignment: .center, spacing:120){
                                    VStack(alignment: .leading, spacing:5){
                                        Text("Air Jordon 11")
                                            .font(.system(size: 16))
                                            .fontWeight(.bold)
                                        
                                        Text("1300$")
                                            .font(.system(size: 15))
                                            .fontWeight(.bold)
                                    }
                                    
                                    Button(action: {
                                        
                                    }) {
                                        Text("View Cart")
                                            .foregroundColor(.white)
                                            .font(.system(size: 15))
                                            .fontWeight(.bold)
                                        
                                        Image(systemName: "arrow.right")
                                            .font(.system(size: 15))
                                            .foregroundColor(.white)
                                    }
                                    .buttonStyle(.bordered)
                                    .background(.black)
                                    .cornerRadius(10)
                                }
                            }
                            .frame(width: 365, height: 70)
                            .background(backgroundColor)
                            .cornerRadius(20)
                            .padding(.bottom, 20)
                        }
                        .shadow(radius: 5)
                        .edgesIgnoringSafeArea(.bottom)
                        .transition(.move(edge: .bottom))
                        .animation(.bouncy, value: showSafeAreaInset)
                    }
                    else{
                        VStack{
                            Spacer()
                            Button(action: {
                                showSafeAreaInset = true
                            }) {
                                Text("ADD TO CART")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: 365, height: 60)
                                    .background(.black)
                                    .cornerRadius(20)
                                    .padding(.bottom, 20)
                            }
                            .disabled(isButtonDisabled)
                            .opacity(isButtonDisabled ? 0.5 : 1.0)
                        }
                         .edgesIgnoringSafeArea(.bottom)
                    }
                }
            )
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
                                      Image(systemName: "heart")
                                          .foregroundColor(.black)
                                  }
                }
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    DetailedShoeView()
}
