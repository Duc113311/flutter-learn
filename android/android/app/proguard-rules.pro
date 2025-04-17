# Giữ lại các class liên quan đến Play Core SplitCompat
-keep class com.google.android.play.** { *; }
-dontwarn com.google.android.play.**

# Giữ lại ML Kit Text Recognition
-keep class com.google.mlkit.** { *; }
-dontwarn com.google.mlkit.**

# Giữ lại OnFailureListener và OnSuccessListener
-keep class com.google.android.play.core.tasks.** { *; }
-dontwarn com.google.android.play.core.tasks.**

# Giữ lại SplitInstallManager và SplitInstallStateUpdatedListener
-keep class com.google.android.play.core.splitinstall.** { *; }
-dontwarn com.google.android.play.core.splitinstall.**
