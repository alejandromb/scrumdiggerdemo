//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Alejandro Mena Brito on 5/10/22.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack{
            ProgressView(value :5, total:15)
            
            HStack {
                VStack(alignment: .leading){
                Text("Seconds Elapsed")
                        .font(.caption)
                Label("300",systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
              }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("10 Minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack{
                Text("Speaker 1 og 3")
                Spacer()
                Button(action :{}){
                    
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next Speaker")
            }
          }
        .padding()
        }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
