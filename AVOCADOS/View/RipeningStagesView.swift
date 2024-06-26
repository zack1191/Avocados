//
//  RipeningStagesView.swift
//  AVOCADOS
//
//  Created by Hein Htet Aung on 2024/06/24.
//

import SwiftUI

struct RipeningStagesView: View {
    var ripeningStages:[Ripening] = ripeningData
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            VStack{Spacer()
                HStack(alignment:.center,spacing: 25){
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }.padding(.vertical)
                    .padding(.horizontal,25)
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
            .padding(.bottom)
    }
}

#Preview {
    RipeningStagesView()
}
