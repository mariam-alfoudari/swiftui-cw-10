//
//  ContentView.swift
//  MoodCheck
//
//  Created by mariam alfoudari on 04/01/2021.
//

import SwiftUI
enum moods {
    case happy, sad , meh , fine
}
func getMoodStatus(mood: moods) -> String {
    switch mood {
    case .happy:
        return "happy"
    case .sad:
        return "sad"
    case .meh:
        return "meh"
    case .fine:
        return "fine"
    }
}
struct ContentView: View {
    @State var moodSelected = ""
    var body: some View {
        NavigationView{
            VStack{
                Text ("How do you feel? ")
                    .padding()
                Text("i feel \(moodSelected)")
                
                HStack{
                    Text("😃").onTapGesture {
                        moodSelected = getMoodStatus(mood: .happy)
                    }
                    Text("🥲").onTapGesture {
                        moodSelected = getMoodStatus(mood: .sad)
                        
                    }
                    Text("🥱").onTapGesture {
                        moodSelected =
                            getMoodStatus(mood: .meh)
                    }
                    Text("😇").onTapGesture {
                        moodSelected = getMoodStatus(mood: .fine)
                        
                    }
                }
            }.navigationTitle("Select Your mood")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
