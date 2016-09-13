import PackageDescription

let package = Package(
    name: "Oniguruma",
    dependencies: [
        .Package(url: "http://github.com/baberthal/OnigGlue.git", majorVersion: 0)
    ]
)
