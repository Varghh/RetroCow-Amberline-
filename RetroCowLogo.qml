import QtQuick 2.15

Image {
    source: Brand.logoSource
    fillMode: Image.PreserveAspectFit
    // A fixed decode size lets all instances share the cached pixel-art asset.
    sourceSize.width: 1024
    sourceSize.height: 341
    asynchronous: true
    cache: true
    smooth: false
    mipmap: false
}
