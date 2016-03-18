
-target 1.6
-printusage unused.txt
-optimizationpasses 2
-printmapping mapping.txt
# -overloadaggressively
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontpreverify
-verbose
-dump class_files.txt
-printseeds seeds.txt

# The -optimizations option disables some arithmetic simplifications that Dalvik 1.0 and 1.5 can't handle.
-optimizations !code/simplification/arithmetic

# Keep classes which are entry points.
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.Application

-keep public class * extends View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    public void set*(...);
}

# Also keep - Enumerations. Keep the special static methods that are required in
# enumeration classes.
-keepclassmembers enum  * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep names - Native method names. Keep all native class/method names.
-keepclasseswithmembers,allowshrinking class * {
    native <methods>;
}

# Remove - System method calls. Remove all invocations of System
# methods without side effects whose return values are not used.
-assumenosideeffects public class java.lang.System {
    public static long currentTimeMillis();
    static java.lang.Class getCallerClass();
    public static int identityHashCode(java.lang.Object);
    public static java.lang.SecurityManager getSecurityManager();
    public static java.util.Properties getProperties();
    public static java.lang.String getProperty(java.lang.String);
    public static java.lang.String getenv(java.lang.String);
    public static java.lang.String mapLibraryName(java.lang.String);
    public static java.lang.String getProperty(java.lang.String,java.lang.String);
}
-keepclassmembers class * implements javax.net.ssl.SSLSocketFactory {
    private javax.net.ssl.SSLSocketFactory delegate;
}
-dontwarn com.paypal.android.sdk.**
-dontwarn okio.**

#-keep class org.apache.http.** { *; }
#-dontwarn org.apache.http.**
#-dontwarn android.net.**
