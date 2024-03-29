//
//  UserHeaderView.swift
//  Clematis (iOS)
//
//  Created by Kyle Erhabor on 1/26/21.
//

import SDWebImageSwiftUI
import SwiftUI

struct UserHeaderView: View {
    @EnvironmentObject private var viewModel: UserViewModel

    var body: some View {
        GeometryReader { geo in
            WebImage(url: URL(string: viewModel.user?.bannerImage ?? ""))
                .resizable()
                .scaledToFill()
                .frame(width: geo.size.width, height: 220)
                .clipped()
                .overlay(HStack(alignment: .bottom) {
                    // TODO: Handle users with disproportionate avatars.
                    // Example: https://anilist.co/user/5thEmperor/
                    WebImage(url: URL(string: viewModel.user?.avatar?.large ?? ""))
                        .resizable()
                        .scaledToFill()
                        .frame(width: 110, height: 110)
                        .clipped() // <-- Should be scaled down, not clipped

                    Text(viewModel.user?.name ?? "")
                        .bold()
                        .shadow(radius: 2)
                        .padding()

                    Spacer()

                    if let tier = viewModel.user?.donatorTier, tier > 0,
                       let badge = viewModel.user?.donatorBadge {
                        Text("\(badge)")
                            .bold()
                            .foregroundColor(.init(.lightText))
                            .shadow(radius: 2)
                            .padding()
                    }
                }.foregroundColor(.white)
                .padding(.horizontal), alignment: .bottom)
        }.frame(height: 220)
        .animation(.default)
    }
}

struct UserHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        UserHeaderView()
    }
}
