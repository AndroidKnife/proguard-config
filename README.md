Proguard-Config
-----
Common library proguard configuration for android develop !
This is a common proguard config for android developers.

I'm tired of the proguard configuration for so much libraries, Now it's a library.

It use the new gradle build system which is `consumerProguardFiles`, i just package the proguard file under `proguardlib/proguards` in aar, you can use it by `add to build.gradle` or just `copy *.pro to your application`.

Here is the `consumerProguardFiles` definition:
* ProGuard rule files to be included in the published AAR.
* These proguard rule files will then be used by any application project that consumes the AAR (if ProGuard is enabled).
* This allows AAR to specify shrinking or obfuscation exclude rules.
* This is only valid for Library project. This is ignored in Application project.

More info: 
[BuildType - Android Plugin 1.5.0 DSL Reference](http://google.github.io/android-gradle-dsl/current/com.android.build.gradle.internal.dsl.BuildType.html#com.android.build.gradle.internal.dsl.BuildType:consumerProguardFiles)

Most of the proguard file is from [krschultz/android-proguard-snippets](https://github.com/krschultz/android-proguard-snippets).

Usage
-----
Two usage is supported:

**Usage 1**

Add the `aar` to your dependencies:
``` gradle
dependencies {
    ...
    compile 'com.hwangjr.proguard:proguardconfig:1.0.1@aar'
}
```

**Usage 2**

Checkout the library and add the specific library proguard file:
``` gradle
android {
    buildTypes {
        release {
            minifyEnabled true
            zipAlignEnabled true
            shrinkResources true
            
            // specific proguard files
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro', 'proguard-gson.pro'
            proguardFile 'proguard-square-okio.pro'
            ...
            
            // As of Gradle Android plugin 1.1.0, the test APK has a separate config
            testProguardFile 'proguard-rules-test.pro'
        }
    }
}
```

Ref
-----
[BuildType - Android Plugin 1.5.0 DSL Reference](http://google.github.io/android-gradle-dsl/current/com.android.build.gradle.internal.dsl.BuildType.html#com.android.build.gradle.internal.dsl.BuildType:consumerProguardFiles)
[krschultz/android-proguard-snippets](https://github.com/krschultz/android-proguard-snippets)

License
-------

    Copyright 2015 HwangJR

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.