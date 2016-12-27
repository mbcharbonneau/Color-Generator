# ColorGenerator.swift

ColorGenerator.swift is a collection of methods to create random colors for your UI. Drop it into your Xcode project to use it. A sample project is included.

If you have questions, you can find me on Twitter [@mbcharbonneau](https://twitter.com/mbcharbonneau).

![iPhone Simulator](http://i.imgur.com/UnSqLVE.png)

## Usage

### random()

Each call to randomColor() will return a new UIColor instance that's visually distinct from the previous color. This makes it ideal for coloring buttons or other elements where the total number of colors needed is not known beforehand.

### gradientColors()

Returns a pair of UIColor objects for use in a basic linear gradient. See GradientView.swift in the sample project for an example using CAGradientLayer.

### variation(baseColor:UIColor, distance:CGFloat)

Returns a random variant of the given UIColor. The distance value controls how much the base color is changed.
