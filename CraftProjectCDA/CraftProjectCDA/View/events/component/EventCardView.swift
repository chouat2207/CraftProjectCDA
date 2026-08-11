

//
//  EventCardView\.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 10/08/2026.
//

import SwiftUI

struct EventCardView: View {


let event: Event

var body: some View {

    HStack(alignment: .top, spacing: 12) {

        Image(event.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 140, height: 120)
            .clipped()

        VStack(alignment: .leading, spacing: 8) {

            Text(event.name)
                .font(.headline)
                .fontWeight(.bold)

            Text(event.description)
                .font(.caption)
                .foregroundStyle(.gray)
                .lineLimit(4)

            Spacer()
        }

        Spacer()
    }
    .padding(8)
    .background(.white)
    .clipShape(
        RoundedRectangle(cornerRadius: 12)
    )
    .overlay {
        RoundedRectangle(cornerRadius: 12)
            .stroke(.gray, lineWidth: 1)
    }
}

}
#Preview {
EventCardView(event: events[0])
}
