import SwiftUI
import Combine
import Foundation


struct ItemDetail: View {
    var item: FeedItem
    
    var body: some View {
        Text(item.title!).font(.title).bold()
    }
}



struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item: testData()[0])
    }
}
