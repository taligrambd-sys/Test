# R8 ProGuard rules for Kaal Player
# Optimize and shrink code to keep size under 900KB

-repackageclasses 'com.kaalsoft.kaalplay.internal'
-allowaccessmodification

# Keep AndroidX and Material components
-keep class androidx.appcompat.** { *; }
-keep class com.google.android.material.** { *; }

# Keep our custom classes
-keep class com.kaalsoft.kaalplay.Song { *; }
-keep class com.kaalsoft.kaalplay.SongAdapter { *; }
-keep class com.kaalsoft.kaalplay.MusicService { *; }
-keep class com.kaalsoft.kaalplay.MainActivity { *; }

# Optimization settings
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
-optimizationpasses 5