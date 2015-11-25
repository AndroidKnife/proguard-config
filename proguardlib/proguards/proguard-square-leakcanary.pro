# LeakCanary specific rules #
# https://github.com/square/leakcanary

-keep class org.eclipse.mat.** { *; }
-keep class com.squareup.leakcanary.** { *; }
-dontwarn com.squareup.leakcanary.**
