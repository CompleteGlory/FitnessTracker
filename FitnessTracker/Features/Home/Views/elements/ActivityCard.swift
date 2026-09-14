//
//  ActivityCard.swift
//  FitnessTracker
//
//  Created by Magd on 06/09/2026.
//

import SwiftUI



struct ActivityCard: View {
    @State var activity: Activity
    
    var body: some View {
        ZStack{
            Color(uiColor: .systemGray6)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            VStack{
                HStack(alignment: .top){
                    VStack(alignment: .leading, spacing: 8){
                        Text(activity.title)
                        Text(activity.subTitle)
                            .font(.caption)
          	          }
                    Spacer()
                    
                    Image(systemName: activity.image)
                        .foregroundStyle(activity.tintColor)
                }
                
                Text(activity.amount)
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
            
        }
    }
}

#Preview {
    ActivityCard(activity: Activity(id: 0, title: "Today steps", subTitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9812"))
}
