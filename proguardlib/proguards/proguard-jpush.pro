## JPush [常见问题 - 极光文档](http://docs.jpush.io/guideline/faq/#android)
-dontoptimize
-dontpreverify

-dontwarn cn.jpush.**
-keep class cn.jpush.** { *; }

## v2.0.5 及以上的版本由于引入了protobuf ，在上面基础之上增加排出混淆的配置
#==================gson==========================
-dontwarn com.google.**
-keep class com.google.gson.** {*;}

#==================protobuf======================
-dontwarn com.google.**
-keep class com.google.protobuf.** {*;}