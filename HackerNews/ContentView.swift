import SwiftUI
import Combine
import Foundation




struct ContentView: View {
    @ObservedObject var feedFetcher = FeedFetcher()

    var body: some View {
        NavigationView {
            List(feedFetcher.items) { (item: FeedItem) in
                NavigationLink(destination: ItemDetail(item: item)) {
                    VStack {
                        Text(item.title!)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
//                        Text(item.url!)
//                            .multilineTextAlignment(.leading)
                    }
                }.padding(10)
                
                
                //                NavigationButton(destination: ProductDetailsView(product: product)) {
                //                    ProductRow(product: product)
                //                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
