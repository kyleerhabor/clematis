//
//  UserStatusTagsView.swift
//  Clematis (iOS)
//
//  Created by Kyle Erhabor on 1/26/21.
//

import SDWebImageSwiftUI
import SwiftUI

struct UserStatusTagsView: View {
    @EnvironmentObject private var viewModel: UserViewModel

    var body: some View {
        HStack {
            Group {
                if viewModel.user?.isFollowing == true {
                    Text("Following")
                }

                if viewModel.user?.isFollower == true {
                    Text("Follows You")
                }

                if viewModel.user?.isBlocked == true {
                    Text("Blocked")
                }

                if let status = viewModel.user?.moderatorStatus {
                    Text("\(status.capitalized)")
                }
            }.frame(maxWidth: .infinity)
        }.font(.headline)
        .foregroundColor(.secondary)

        Divider()
    }
}

struct UserStatusTagsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatusTagsView()
    }
}
