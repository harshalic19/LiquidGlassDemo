//
//  StatsView.swift
//  LiquidGlassDemo
//
//  Created by Harshali Chaudhari on 01/10/25.
//
import SwiftUI
import Charts

struct StatsView: View {
    let salesData: [Double] = [120, 90, 150, 160, 100, 140, 200, 130, 170]
    let visitorsData: [Double] = [50, 80, 70, 120, 100, 60, 90, 110, 95]
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.purple, .blue, .pink]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 32) {
                    GlassCard {
                        BarChartView(salesData: salesData)
                    }
                    
                    GlassCard {
                        LineChartView(data: visitorsData)
                    }
                    
                    GlassCard {
                        AreaChartView(data: visitorsData)
                    }
                    
                    GlassCard {
                        PointChartView(data: visitorsData)
                    }
                    
                    GlassCard {
                        StackedBarChartView(salesData: salesData, visitorsData: visitorsData)
                    }
                }
                .padding(.vertical)
            }
        }
        .navigationTitle("Stats")
    }
}

// MARK: - Glass Card Wrapper
struct GlassCard<Content: View>: View {
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
            content
        }
        .padding()
        .background(.ultraThinMaterial) // Liquid Glass effect
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
        .padding(.horizontal)
    }
}

//MARK: BarChartView
struct BarChartView: View {
    let salesData: [Double]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Monthly Sales")
                .font(.title2)
                .foregroundColor(.white)
                .padding(.horizontal)
            
            Chart {
                ForEach(Array(salesData.enumerated()), id: \.offset) { index, value in
                    BarMark(
                        x: .value("Month", index),
                        y: .value("Sales", value)
                    )
                    .foregroundStyle(.white.gradient)
                    .annotation(position: .top) {
                        Text("\(Int(value))")
                            .foregroundColor(.white)
                            .font(.caption)
                    }
                }
            }
            .frame(height: 250)
            .chartXAxis {
                AxisMarks { _ in
                    AxisGridLine().foregroundStyle(.white.opacity(0.3))
                    AxisTick().foregroundStyle(.white)
                    AxisValueLabel().foregroundStyle(.white)
                }
            }
            .chartYAxis {
                AxisMarks { _ in
                    AxisGridLine().foregroundStyle(.white.opacity(0.3))
                    AxisTick().foregroundStyle(.white)
                    AxisValueLabel().foregroundStyle(.white)
                }
            }
            .padding(.horizontal)
        }
    }
}

//MARK: LineChartView
struct LineChartView: View {
    let data: [Double]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Website Visitors")
                .font(.title2)
                .foregroundColor(.white)
                .padding(.horizontal)
            
            let enumeratedData = Array(data.enumerated())
            Chart {
                ForEach(enumeratedData, id: \.offset) { index, value in
                    LineMark(
                        x: .value("Day", index),
                        y: .value("Visitors", value)
                    )
                    .foregroundStyle(.white)
                    .lineStyle(StrokeStyle(lineWidth: 3))
                }
            }
            .frame(height: 250)
            .chartXAxis {
                AxisMarks { _ in
                    AxisGridLine().foregroundStyle(.white.opacity(0.3))
                    AxisTick().foregroundStyle(.white)
                    AxisValueLabel().foregroundStyle(.white)
                }
            }
            .chartYAxis {
                AxisMarks { _ in
                    AxisGridLine().foregroundStyle(.white.opacity(0.3))
                    AxisTick().foregroundStyle(.white)
                    AxisValueLabel().foregroundStyle(.white)
                }
            }
            .padding(.horizontal)
        }
    }
}

//MARK: AreaChartView
struct AreaChartView: View {
    let data: [Double]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Cumulative Visitors")
                .font(.title2)
                .foregroundColor(.white)
                .padding(.horizontal)
            
            let enumeratedData = Array(data.enumerated())
            Chart {
                ForEach(enumeratedData, id: \.offset) { index, value in
                    AreaMark(
                        x: .value("Day", index),
                        y: .value("Visitors", value)
                    )
                    .foregroundStyle(
                        LinearGradient(
                            gradient: Gradient(colors: [.white.opacity(0.5), .clear]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                }
            }
            .frame(height: 250)
            .chartXAxis {
                AxisMarks { _ in
                    AxisGridLine().foregroundStyle(.white.opacity(0.3))
                    AxisTick().foregroundStyle(.white)
                    AxisValueLabel().foregroundStyle(.white)
                }
            }
            .chartYAxis {
                AxisMarks { _ in
                    AxisGridLine().foregroundStyle(.white.opacity(0.3))
                    AxisTick().foregroundStyle(.white)
                    AxisValueLabel().foregroundStyle(.white)
                }
            }
            .padding(.horizontal)
        }
    }
}

//MARK: PointChartView
struct PointChartView: View {
    let data: [Double]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Visitor Points")
                .font(.title2)
                .foregroundColor(.white)
                .padding(.horizontal)
            
            let enumeratedData = Array(data.enumerated())
            Chart {
                ForEach(enumeratedData, id: \.offset) { index, value in
                    PointMark(
                        x: .value("Day", index),
                        y: .value("Visitors", value)
                    )
                    .foregroundStyle(.yellow)
                    .symbolSize(80)
                }
            }
            .frame(height: 250)
            .chartXAxis {
                AxisMarks { _ in
                    AxisGridLine().foregroundStyle(.white.opacity(0.3))
                    AxisTick().foregroundStyle(.white)
                    AxisValueLabel().foregroundStyle(.white)
                }
            }
            .chartYAxis {
                AxisMarks { _ in
                    AxisGridLine().foregroundStyle(.white.opacity(0.3))
                    AxisTick().foregroundStyle(.white)
                    AxisValueLabel().foregroundStyle(.white)
                }
            }
            .padding(.horizontal)
        }
    }
}

//MARK: StackedBarChartView
struct StackedBarChartView: View {
    let salesData: [Double]
    let visitorsData: [Double]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sales vs Visitors")
                .font(.title2)
                .foregroundColor(.white)
                .padding(.horizontal)
            
            let enumeratedSales = Array(salesData.enumerated())
            Chart {
                ForEach(enumeratedSales, id: \.offset) { index, sales in
                    BarMark(
                        x: .value("Month", index),
                        y: .value("Value", sales)
                    )
                    .foregroundStyle(.purple.gradient)
                    .position(by: .value("Series", "Sales"))
                    
                    BarMark(
                        x: .value("Month", index),
                        y: .value("Value", visitorsData[index])
                    )
                    .foregroundStyle(.pink.gradient)
                    .position(by: .value("Series", "Visitors"))
                }
            }
            .frame(height: 250)
            .chartXAxis {
                AxisMarks { _ in
                    AxisGridLine().foregroundStyle(.white.opacity(0.3))
                    AxisTick().foregroundStyle(.white)
                    AxisValueLabel().foregroundStyle(.white)
                }
            }
            .chartYAxis {
                AxisMarks { _ in
                    AxisGridLine().foregroundStyle(.white.opacity(0.3))
                    AxisTick().foregroundStyle(.white)
                    AxisValueLabel().foregroundStyle(.white)
                }
            }
            .padding(.horizontal)
        }
    }
}


#Preview {
    StatsView()
}
