//
//  BeginView.swift
//  ListWhatToDo
//
//  Created by Tran Hieu on 12/05/2023.
//

import SwiftUI

struct BeginView: View {
    
    @State var animate: Bool = false
    let secondColor = Color("SecondaryColor")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no items")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Click Add to begin.")
                    .padding(.bottom, 20)
                
                NavigationLink {
                    AddView()
                } label: {
                    Text("Add something 🥰")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secondColor : Color.accentColor )
                        .cornerRadius(10)
                }
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(color: animate ? secondColor : Color.accentColor.opacity(0.7), radius: animate ? 30 : 10, x: 0, y: animate ? 50 : 30)
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -7 : 0)
                
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight:  .infinity)
    }
    
    func addAnimation() {
        guard !animate else {return}
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(.easeInOut(duration: 2.0).repeatForever()) {
                animate.toggle()
            }
        }
    }
}

struct BeginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BeginView()
                .navigationTitle("Title")
        }
    }
}
