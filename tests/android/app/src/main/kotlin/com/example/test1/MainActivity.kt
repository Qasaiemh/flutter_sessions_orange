package com.example.test1

import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant


// MainActivity.kt
class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        flutterEngine.platformViewsController.registry
            .registerViewFactory("my_custom_view", MyCustomViewFactory())
    }
}
