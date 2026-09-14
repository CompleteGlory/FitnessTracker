//
//  HomeView.swift
//  FitnessTracker
//
//  Created by Magd on 30/08/2026.
//

import SwiftUI

struct HomeView: View {
    
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    
    var mockActivities = [
        Activity(id: 0, title: "Today steps", subTitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9812"),
        Activity(id: 1, title: "Today", subTitle: "Goal 1,000", image: "figure.walk", tintColor: .blue, amount: "9000"),
        Activity(id: 2, title: "Today steps", subTitle: "Goal 15,000", image: "figure.walk", tintColor: .red, amount: "19000"),
        Activity(id: 3, title: "Today ", subTitle: "Goal 11,000", image: "figure.run", tintColor: .yellow, amount: "5006")
    ]
    
    var body: some View {
        ScrollView(showsIndicators:false){
            VStack(alignment: .leading){
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    Spacer()
                    
                    VStack{
                        VStack(alignment: .leading,spacing: 8){
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.red)
                            
                            
                            Text("123")
                                .font(.callout)
                                .bold()
                            
                        }.padding(.bottom)
                        
                        VStack(alignment: .leading,spacing: 8){
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.green)
                            
                            
                            Text("52 mins")
                                .font(.callout)
                                .bold()
                            
                        }.padding(.bottom)
                        
                        VStack(alignment: .leading,spacing: 8){
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.blue)
                            
                            
                            Text("8 hours")
                                .font(.callout)
                                .bold()
                            
                        }
                    }
                    
                    Spacer()
                    
                    ZStack{
                        
                        ProgressCircleView(progress: $calories, color: .red, goal: 600)
                        
                        ProgressCircleView(progress: $active, color: .green, goal: 60)
                            .padding(.all,20)
                        
                        ProgressCircleView(progress: $stand, color: .blue, goal: 12)
                            .padding(.all,40)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
                .padding()
                
                HStack{
                    Text("Fitness Activity")
                        .font(.title2)
                    
                    Spacer()
                    
                    Button{
                        print("Show more")
                    }label: {
                        Text("Show more")
                            .padding(.all,10)
                            .foregroundStyle(.white)
                            .background(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                }
                .padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing:20),count: 2)){
                    ForEach(mockActivities,id: \.id) { activity in
                        ActivityCard(activity: activity)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
