
# Liquid Glass SwiftUI Demo

A modern **iOS SwiftUI demo app** showcasing **Liquid Glass UI** design and multiple chart types using **SwiftUI 5** and **Swift Charts**. Perfect for experimenting with new iOS 26 features and advanced UI effects.

## Features

- **Liquid Glass Panels**: Floating cards with `.ultraThinMaterial` and shadows for a futuristic look.
- **Multiple Chart Types**:
  - Bar Chart  
  - Line Chart  
  - Area Chart  
  - Point / Scatter Chart  
  - Stacked Bar Chart
- **Top Segmented Tabs** in Settings for modular navigation.
- **Gradient Backgrounds**: Vibrant purple-blue-pink backgrounds for modern aesthetics.
- **Tab Bar Minimization**: Tab bar automatically hides on scroll (iOS 26+).
- **Fully Modular**: Each chart is a reusable SwiftUI view.

## Screenshots
<p float="left">
<img width="300" alt="simulator_screenshot_94BD028D-EE64-4F73-9AF3-6AD513D7667A" src="https://github.com/user-attachments/assets/f40279ac-5066-450a-aae2-c6ba9e24da4f" />
<img width="300" alt="simulator_screenshot_74C7D109-3457-4ECD-AB21-C1B9F1EB259B" src="https://github.com/user-attachments/assets/364dbe60-0189-4f4a-bbab-d80155eb19da" />
<img width="300" alt="simulator_screenshot_7503494C-1A09-4524-B9DF-3D21D4472F92" src="https://github.com/user-attachments/assets/1af3bcaa-bd39-4c7d-85d0-fe5b83e818c2" />
</p>

## Requirements

- Xcode 15 or later  
- iOS 26+  
- Swift 5 / SwiftUI 5

## Installation

1. Clone the repository:  
```bash
git clone <repository-url>
```
2. Open `LiquidGlassDemo.xcodeproj` in Xcode.  
3. Build and run on **iOS 26+ simulator** or device.

## Project Structure

- `ContentView.swift` – Main navigation and home grid of glass cards.  
- `StatsView.swift` – Scrollable stats dashboard with multiple charts.  
- `SettingsView.swift` – Top segmented tabs for Appearance & Account.  
- `GlassCard` – Reusable Liquid Glass card wrapper.  
- Separate structs for **BarChartView, LineChartView, AreaChartView, PointChartView, StackedBarChartView**.

## Technologies Used

- **SwiftUI 5** – Declarative UI framework  
- **Swift Charts** – Charts for iOS 26+  
- **Material Effects** – `.ultraThinMaterial` for Liquid Glass panels  
- **NavigationStack & TabView Enhancements** – iOS 26+ navigation patterns

## How to Use

- Launch the app → Home screen shows **12 Liquid Glass cards**.  
- Navigate to **Stats Tab** to view all chart types.  
- Navigate to **Settings Tab** → Use top segmented tabs to switch between **Appearance** and **Account** settings.

## License

MIT License © Harshali Khushal Chaudhari
