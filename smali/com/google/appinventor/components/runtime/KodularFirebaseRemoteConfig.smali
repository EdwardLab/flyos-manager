.class public Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Firebase Remote Config"
    iconName = "images/firebaseDB.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "firebase-abt.jar",
        "firebase-abt.aar",
        "firebase-analytics.jar",
        "firebase-analytics.aar",
        "firebase-annotations.jar",
        "firebase-common.jar",
        "firebase-common.aar",
        "firebase-components.jar",
        "firebase-components.aar",
        "firebase-config.jar",
        "firebase-config.aar",
        "firebase-installations.jar",
        "firebase-installations.aar",
        "firebase-installations-interop.jar",
        "firebase-installations-interop.aar",
        "firebase-measurement-connector.jar",
        "firebase-measurement-connector.aar",
        "play-services-ads-identifier.jar",
        "play-services-ads-identifier.aar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "play-services-measurement.jar",
        "play-services-measurement.aar",
        "play-services-measurement-api.jar",
        "play-services-measurement-api.aar",
        "play-services-measurement-base.jar",
        "play-services-measurement-base.aar",
        "play-services-measurement-impl.jar",
        "play-services-measurement-impl.aar",
        "play-services-measurement-sdk.jar",
        "play-services-measurement-sdk.aar",
        "play-services-measurement-sdk-api.jar",
        "play-services-measurement-sdk-api.aar",
        "play-services-stats.jar",
        "play-services-stats.aar",
        "play-services-tasks.jar",
        "play-services-tasks.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.WAKE_LOCK",
        "com.google.android.c2dm.permission.RECEIVE",
        "com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 84
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-wide/32 v0, 0xa8c0

    .line 81
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:J

    .line 85
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->context:Landroid/content/Context;

    .line 86
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->activity:Landroid/app/Activity;

    .line 88
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    return-void
.end method


# virtual methods
.method public CacheExpiration()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Time how long the data keeps on the device in ms"
    .end annotation

    .line 132
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:J

    return-wide v0
.end method

.method public CacheExpiration(J)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "43200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const-wide/16 v0, 0xe10

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 139
    :cond_0
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:J

    .line 141
    new-instance p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-direct {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:J

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setMinimumFetchIntervalInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {p2, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public Fetch()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Fetches parameter values for your app"
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchAndActivate()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig$1;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public FetchFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the fetch failed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FetchFailed"

    .line 112
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FetchSuccess()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the fetch was successful"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FetchSuccess"

    .line 107
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetBoolean(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets a boolean value corresponding to the specified key"
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public GetNumber(Ljava/lang/String;)D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets a number value corresponding to the specified key"
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public GetText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets a text value corresponding to the specified key"
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseRemoteConfig;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
