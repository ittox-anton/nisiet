/// A protocol that represents some visual aspects, such as ``Color``, ``Material``, or ``HierarchicalShapeStyle``.
protocol VisualStyle {
    /// Applies the style to a given view.
    func applyStyle(to view: UIView)
}

/// Represents a color style.
struct Color: VisualStyle {
    var color: UIColor
    
    func applyStyle(to view: UIView) {
        view.backgroundColor = color
    }
}

/// Represents a material style.
struct Material: VisualStyle {
    var materialAppearance: String // Simplification for demonstration.
    
    func applyStyle(to view: UIView) {
        // Apply material appearance logic.
        print("Applying material: \(materialAppearance)")
    }
}

// Usage
let myView = UIView()
let redColorStyle = Color(color: .red)
redColorStyle.applyStyle(to: myView)

let glossyMaterialStyle = Material(materialAppearance: "Glossy")
glossyMaterialStyle.applyStyle(to: myView)
