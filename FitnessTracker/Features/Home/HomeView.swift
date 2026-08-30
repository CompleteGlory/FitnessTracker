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
    
    var body: some View {
        ScrollView(showsIndicators:false){
            VStack{
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
            }
        }
    }
}

#Preview {
    HomeView()
}
