//SwiftUI — State Management
///Explain the difference between @State, @Binding, @ObservedObject, and @EnvironmentObject.
import SwiftUI
import PlaygroundSupport

// MARK: - ObservableObject Model

class CounterModel: ObservableObject {
    @Published var globalCount: Int = 0
}

// MARK: - Parent View

struct ContentView: View {
    @State private var localCount: Int = 0        // @State: local to ContentView
    @StateObject private var model = CounterModel() // Keeps model alive

    var body: some View {
        VStack(spacing: 24) {
            Text("State Management Demo")
                .font(.title2)
            
            // @State in action
            VStack {
                Text("Local Count (State): \(localCount)")
                Button("Increment Local") {
                    localCount += 1
                }
            }
            .padding()
            .background(Color.yellow.opacity(0.3))
            .cornerRadius(8)
            
            // Passing @Binding to child
            BindingChildView(count: $localCount)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(8)
            
            // Passing model as @ObservedObject
            ObservedObjectChildView(model: model)
                .padding()
                .background(Color.blue.opacity(0.2))
                .cornerRadius(8)
            
            // Using @EnvironmentObject
            EnvironmentObjectChildView()
                .padding()
                .background(Color.purple.opacity(0.2))
                .cornerRadius(8)
        }
        .padding()
        .environmentObject(model) // Inject into environment
    }
}

// MARK: - @Binding Child

struct BindingChildView: View {
    @Binding var count: Int

    var body: some View {
        VStack {
            Text("Edit Local Count in Child")
            Button("Add 2") {
                count += 2
            }
        }
    }
}

// MARK: - @ObservedObject Child

struct ObservedObjectChildView: View {
    @ObservedObject var model: CounterModel

    var body: some View {
        VStack {
            Text("Global Count (ObservedObject): \(model.globalCount)")
            Button("Increment Global (ObservedObject)") {
                model.globalCount += 1
            }
        }
    }
}

// MARK: - @EnvironmentObject Child

struct EnvironmentObjectChildView: View {
    @EnvironmentObject var model: CounterModel

    var body: some View {
        VStack {
            Text("Global Count (EnvironmentObject): \(model.globalCount)")
            Button("Increment Global (EnvironmentObject)") {
                model.globalCount += 5
            }
        }
    }
}

// Show the main view in the Live View
PlaygroundPage.current.setLiveView(ContentView())
