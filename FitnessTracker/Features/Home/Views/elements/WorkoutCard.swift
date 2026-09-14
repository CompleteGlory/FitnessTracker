//
//  WorkoutCard.swift
//  FitnessTracker
//
//  Created by Magd on 06/09/2026.
//

import SwiftUI

struct WorkoutCard: View {
    @State var workout : Workout
    
    var body: some View {
        HStack{
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48,height: 48)
                .foregroundStyle(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack{
                HStack{
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                    Spacer()
                    Text(workout.duration)
                }
                
                HStack{
                    Text(workout.date)
                    Spacer()
                    Text(workout.calories)
                }
            }
        }
        .padding()
    }
}

#Preview {
    WorkoutCard(workout: Workout(id: 0, title: "Running", image: "figure.run", date: "Aug 3", duration: "32 mins", calories: "320 cals", tintColor: .cyan))
}
