//
//  HomeView.swift
//  FitnessTracker
//
//  Created by Magd on 30/08/2026.
//

import SwiftUI

struct HomeView: View {
    
    @State var viewModel = HomeViewModel()
    
    var body: some View {
        
        NavigationStack{
            
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
                                
                                
                                Text("\(viewModel.calories)")
                                    .font(.callout)
                                    .bold()
                                
                            }.padding(.bottom)
                            
                            VStack(alignment: .leading,spacing: 8){
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.green)
                                
                                
                                Text("\(viewModel.active) mins")
                                    .font(.callout)
                                    .bold()
                                
                            }.padding(.bottom)
                            
                            VStack(alignment: .leading,spacing: 8){
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.blue)
                                
                                
                                Text("\(viewModel.stand) hours")
                                    .font(.callout)
                                    .bold()
                                
                            }
                        }
                        
                        Spacer()
                        
                        ZStack{
                            
                            ProgressCircleView(progress: $viewModel.calories, color: .red, goal: 600)
                            
                            ProgressCircleView(progress: $viewModel.active, color: .green, goal: 60)
                                .padding(.all,20)
                            
                            ProgressCircleView(progress: $viewModel.stand, color: .blue, goal: 12)
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
                        ForEach(viewModel.mockActivities,id: \.id) { activity in
                            ActivityCard(activity: activity)
                        }
                        
                    }
                    .padding(.horizontal)
                    
                    HStack{
                        Text("Recent Workouts")
                            .font(.title2)
                        
                        Spacer()
                        
                        
                        NavigationLink{
                            
                            EmptyView()
                            
                        } label: {
                            Text("Show more")
                                .padding(.all,10)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    LazyVStack{
                        ForEach(viewModel.mockWorkouts,id: \.id) { workout in
                            WorkoutCard(workout: workout)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
