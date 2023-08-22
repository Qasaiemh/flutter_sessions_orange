// MyNativeView.swift
import Flutter

class MyNativeView: NSObject, FlutterPlatformView {
    let nativeView: MyCustomView

    init(frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?, registrar: FlutterPluginRegistrar) {
        nativeView = MyCustomView(frame: frame)
        super.init()
    }

    func view() -> UIView {
        return nativeView
    }
}
