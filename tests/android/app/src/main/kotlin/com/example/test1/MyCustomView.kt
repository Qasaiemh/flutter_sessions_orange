package com.example.test1

import android.content.Context
import android.widget.FrameLayout
import android.widget.TextView

// MyCustomView.kt
class MyCustomView(context: Context) : FrameLayout(context) {
    init {
        val textView = TextView(context)
        textView.text = "Native Android View"
        addView(textView)
    }
}
