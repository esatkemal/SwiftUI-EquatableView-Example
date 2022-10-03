//
//  UserHeaderView.swift
//  SwifUI-EquatableView-Example
//
//  Created by Kemal Ekren on 18/09/2022.
//

import SwiftUI

struct UserHeaderView: View {
    var user: User
    
    var body: some View {
        print("User Header View Body Refreshed ✅")
        return HStack(alignment: .center, spacing: 20) {
            EquatableView(content:  UserProfileView(user: user))

            UserStats(stat: user.stat)
                .padding(.top, 5)
        }
    }
}

struct UserHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        UserHeaderView(user: CreateMockData.shared.user)
            .previewLayout(.sizeThatFits)
    }
}
