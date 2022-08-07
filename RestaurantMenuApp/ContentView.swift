//
//  ContentView.swift
//  RestaurantMenuApp
//
//  Created by Traian on 07.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var searchValue:String = ""

    
    
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 16) {
                NavBar()
                Text("Bonjour, Emma")
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                Text("What would you like to cook today?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                SearchBar(searchValue : searchValue)
                TitleSeeAll(title: "Today's fresh recipes:")
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing:16) {
                        Product()
                        Product()
                    }
                }
                TitleSeeAll(title: "Recomended:")
                VStack{
                    HorizontalProduct()
                    HorizontalProduct()
                    HorizontalProduct()
                    HorizontalProduct()
                }

            }
            .padding()
        }
        
    }
}




struct TitleSeeAll: View{
    @State var title:String
    var body: some View{
        HStack{
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Text("See all")
                .font(.body)
                .foregroundColor(.orange)
                .fontWeight(.semibold)
        }
    }
}



struct HorizontalProduct: View{
    var body: some View{
        HStack(alignment: .center, spacing: 8){
            Image("Food")
                .resizable()
                .frame(width: 100, height: 65)
            VStack(alignment:.leading, spacing: 5){
                Text("Breakfast")
                    .font(.caption)
                    .foregroundColor(.blue)
                Text("French toast with berries")
                    .fontWeight(.medium)
                HStack {
                    ForEach(0..<5){item in
                        Image(systemName: "star.fill")
                            .renderingMode(.template)
                            .foregroundColor(.orange)
                    }
                }
                Text("120 calories")
                    .font(.caption)
                    .foregroundColor(.orange)
                    .fontWeight(.bold)
                HStack(spacing:30){
                    HStack{
                        Image(systemName: "timer")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("10 min")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                    
                    HStack{
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("1 serving")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                }
            }
            Image(systemName: "heart")
                .padding(.bottom, 90)
            }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color("Gray"))
        .cornerRadius(20)
        
        
        


    
    }
}

struct Product: View{
    var body: some View{
        ZStack {
                
            VStack(alignment: .leading, spacing: 8){
                Image(systemName: "heart")
                    .padding(.bottom, 60)
                Text("Breakfast")
                    .font(.caption)
                    .foregroundColor(.blue)
                Text("French toast with berries")
                    .fontWeight(.medium)
                HStack {
                    ForEach(0..<5){item in
                        Image(systemName: "star.fill")
                            .renderingMode(.template)
                            .foregroundColor(.orange)
                    }
                }
                Text("120 calories")
                    .font(.caption)
                    .foregroundColor(.orange)
                    .fontWeight(.bold)
                HStack{
                    HStack{
                        Image(systemName: "timer")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("10 min")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    
                    HStack{
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("1 serving")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                }
                }
            .frame(width:147)
            .padding()
            .background(Color("Gray"))
            .cornerRadius(20)
            
            
            Image("Food")
                .resizable()
                .frame(width: 120, height: 75)
                .offset(x:45, y:-60)


        }
    }
}


struct SearchBar: View{
    @State var searchValue:String = ""

    
    func filter()->Void{
        
    }
    var body: some View{
        HStack(spacing:16) {
            HStack{
                Image(systemName: "magnifyingglass")
                TextField("Search for recipes", text:$searchValue)
            }
            .padding()
            .frame(height: 50)
            .background(.gray).opacity(0.1)
            .cornerRadius(8)
            Button(action: filter){
                Image(systemName: "slider.horizontal.3")
                    .foregroundColor(.gray)
            }
            .padding()
            .background(.gray).opacity(0.1)
            .cornerRadius(8)
            .frame(height: 50)



        }
    }
}

struct NavBar: View{
    var body: some View{
        HStack{
            Image(systemName: "circle.hexagongrid")
            Spacer()
            Image(systemName: "bell")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
                            .previewDisplayName("iPhone 12")
            
        }
    }
}
