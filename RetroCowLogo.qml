import QtQuick 2.15

Image {
    source: Brand.mascotSource
    fillMode: Image.PreserveAspectFit
    // A fixed decode size lets all instances share the cached pixel-art asset.
    sourceSize.width: 256
    sourceSize.height: 256
    asynchronous: true
    cache: true
    smooth: false
    mipmap: false
}
