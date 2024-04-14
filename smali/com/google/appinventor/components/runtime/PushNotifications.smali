.class public final Lcom/google/appinventor/components/runtime/PushNotifications;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Push Notifications component powered by OneSignal"
    iconName = "images/pushNotifications.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "OneSignal.jar",
        "OneSignal.aar",
        "play-services-base.aar",
        "play-services-base.jar",
        "play-services-basement.aar",
        "play-services-basement.jar",
        "play-services-location.aar",
        "play-services-location.jar",
        "play-services-stats.aar",
        "play-services-stats.jar",
        "play-services-tasks.aar",
        "play-services-tasks.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "com.google.android.c2dm.permission.RECEIVE",
        "android.permission.WAKE_LOCK",
        "android.permission.VIBRATE",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.RECEIVE_BOOT_COMPLETED",
        "android.permission.READ_APP_BADGE",
        "com.sec.android.provider.badge.permission.READ",
        "com.sec.android.provider.badge.permission.WRITE",
        "com.htc.launcher.permission.READ_SETTINGS",
        "com.htc.launcher.permission.UPDATE_SHORTCUT",
        "com.sonyericsson.home.permission.BROADCAST_BADGE",
        "com.sonymobile.home.permission.PROVIDER_INSERT_BADGE",
        "com.anddoes.launcher.permission.UPDATE_COUNT",
        "com.majeur.launcher.permission.UPDATE_BADGE",
        "com.huawei.android.launcher.permission.CHANGE_BADGE",
        "com.huawei.android.launcher.permission.READ_SETTINGS",
        "com.huawei.android.launcher.permission.WRITE_SETTINGS",
        "com.oppo.launcher.permission.READ_SETTINGS",
        "com.oppo.launcher.permission.WRITE_SETTINGS",
        "me.everything.badger.permission.BADGE_COUNT_READ",
        "me.everything.badger.permission.BADGE_COUNT_WRITE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/PushNotifications$a;,
        Lcom/google/appinventor/components/runtime/PushNotifications$b;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private appId:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 2

    .line 97
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 94
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PushNotifications;->appId:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PushNotifications;->context:Landroid/content/Context;

    .line 99
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PushNotifications;->activity:Landroid/app/Activity;

    .line 101
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PushNotifications;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/onesignal/OneSignal;->startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Lcom/onesignal/OneSignal$Builder;->autoPromptLocation(Z)Lcom/onesignal/OneSignal$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p1, v1}, Lcom/onesignal/OneSignal$Builder;->unsubscribeWhenNotificationsAreDisabled(Z)Lcom/onesignal/OneSignal$Builder;

    move-result-object p1

    sget-object v1, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 104
    invoke-virtual {p1, v1}, Lcom/onesignal/OneSignal$Builder;->inFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)Lcom/onesignal/OneSignal$Builder;

    move-result-object p1

    new-instance v1, Lcom/google/appinventor/components/runtime/PushNotifications$b;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/PushNotifications$b;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;B)V

    .line 105
    invoke-virtual {p1, v1}, Lcom/onesignal/OneSignal$Builder;->setNotificationReceivedHandler(Lcom/onesignal/OneSignal$NotificationReceivedHandler;)Lcom/onesignal/OneSignal$Builder;

    move-result-object p1

    new-instance v1, Lcom/google/appinventor/components/runtime/PushNotifications$a;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/PushNotifications$a;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;B)V

    .line 106
    invoke-virtual {p1, v1}, Lcom/onesignal/OneSignal$Builder;->setNotificationOpenedHandler(Lcom/onesignal/OneSignal$NotificationOpenedHandler;)Lcom/onesignal/OneSignal$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/onesignal/OneSignal$Builder;->init()V

    const-string p1, "Push Notifications"

    const-string v0, "OneSignal Initialized"

    .line 109
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 383
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "https://onesignal.com/api/v1/notifications"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 385
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    .line 386
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 387
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v3, "Content-Type"

    const-string v4, "application/json; charset=UTF-8"

    .line 389
    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Authorization"

    const-string v4, "Basic "

    .line 390
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "POST"

    .line 391
    invoke-virtual {v2, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 393
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "{\"app_id\": \""

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PushNotifications;->appId:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"included_segments\": [\"All\"],\"headings\": {\"en\": \""

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"},\"contents\": {\"en\": \""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}}"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 402
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 403
    array-length p2, p1

    invoke-virtual {v2, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 404
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 405
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 407
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 413
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    const-string p2, "Push Notifications"

    .line 409
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 413
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 415
    :cond_3
    throw p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/PushNotifications;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final ClearAllNotifications()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear All Notifications."
    .end annotation

    .line 162
    invoke-static {}, Lcom/onesignal/OneSignal;->clearOneSignalNotifications()V

    return-void
.end method

.method public final DeleteTag(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes a single tag that was previously set on a user."
    .end annotation

    .line 216
    invoke-static {p1}, Lcom/onesignal/OneSignal;->deleteTag(Ljava/lang/String;)V

    return-void
.end method

.method public final EnableLog(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If you want to enable the log then set it to true."
    .end annotation

    if-eqz p1, :cond_0

    .line 168
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {p1, p1}, Lcom/onesignal/OneSignal;->setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V

    return-void

    .line 171
    :cond_0
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V

    return-void
.end method

.method public final EnableSound(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Enable Sound."
    .end annotation

    .line 183
    invoke-static {p1}, Lcom/onesignal/OneSignal;->enableSound(Z)V

    return-void
.end method

.method public final EnableVibration(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Enable Vibration."
    .end annotation

    .line 178
    invoke-static {p1}, Lcom/onesignal/OneSignal;->enableVibrate(Z)V

    return-void
.end method

.method public final GetAvailableTags()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get a list of available tags."
    .end annotation

    .line 221
    new-instance v0, Lcom/google/appinventor/components/runtime/PushNotifications$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/PushNotifications$1;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final GetEmailSubscriptionEmailAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the email subscription email address."
    .end annotation

    .line 199
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSPermissionSubscriptionState;->getEmailSubscriptionStatus()Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSEmailSubscriptionState;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final GetEmailSubscriptionUserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the email subscription user id."
    .end annotation

    .line 189
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSPermissionSubscriptionState;->getEmailSubscriptionStatus()Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSEmailSubscriptionState;->getEmailUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final GetPermissionStatus()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get Permission Status"
    .end annotation

    .line 125
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/onesignal/OSPermissionSubscriptionState;->getPermissionStatus()Lcom/onesignal/OSPermissionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result v0

    return v0
.end method

.method public final GetSubscriptionStatus()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the subscription Status"
    .end annotation

    .line 133
    :try_start_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/onesignal/OSPermissionSubscriptionState;->getSubscriptionStatus()Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final GetUserId()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the User ID. If there is no user id it will return \'-1\'."
    .end annotation

    const-string v0, "-1"

    .line 144
    :try_start_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/onesignal/OSPermissionSubscriptionState;->getSubscriptionStatus()Lcom/onesignal/OSSubscriptionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSSubscriptionState;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    .line 148
    :cond_0
    invoke-virtual {v1}, Lcom/onesignal/OSPermissionSubscriptionState;->getSubscriptionStatus()Lcom/onesignal/OSSubscriptionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/OSSubscriptionState;->getUserId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public final GetValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get value for tag."
    .end annotation

    .line 248
    new-instance v0, Lcom/google/appinventor/components/runtime/PushNotifications$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/PushNotifications$2;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final GotAvailableTags(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect available one signal tags."
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PushNotifications;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/PushNotifications$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/PushNotifications$3;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final GotValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to receive value for a tag."
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PushNotifications;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/PushNotifications$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/PushNotifications$4;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final NotificationOpened(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User opened a notification."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "NotificationOpened"

    .line 343
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final NotificationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User received a notification."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "NotificationReceived"

    .line 323
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final OneSignalAppId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set here your One Signal App ID"
        userVisible = false
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PushNotifications;->appId:Ljava/lang/String;

    return-void
.end method

.method public final SendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a message to all users. The message and your REST Api Key can not be empty! You will find your REST Api Key in your OneSignal account settings."
    .end annotation

    .line 1360
    new-instance v0, Lcom/google/appinventor/components/runtime/PushNotifications$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/PushNotifications$5;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Integer;

    .line 1374
    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/PushNotifications$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final SendMessageDone(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Returns true if your message was send with success out of your app to all users."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 355
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SendMessageDone"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final SendTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Tag a user based on an app event of your choosing so later you can create segments in to target these users."
    .end annotation

    .line 208
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->sendTag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final SetSubscription(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If you want to subscribe then set it to true."
    .end annotation

    .line 157
    invoke-static {p1}, Lcom/onesignal/OneSignal;->setSubscription(Z)V

    return-void
.end method
