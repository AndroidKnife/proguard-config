## ShareSDK 2.6.2 specific rules ##

-keep class cn.sharesdk.**{*;}
-keep class com.sina.**{*;}
-keep class **.R$* {*;}
-keep class **.R{*;}
-dontwarn cn.sharesdk.**
-dontwarn **.R$*
-keep class m.framework.**{*;}
-keep class com.mob.**{*;}
-keep class com.mob.tools.**{*;}
-dontwarn com.mob.tools.**
