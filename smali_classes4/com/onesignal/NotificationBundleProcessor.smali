.class Lcom/onesignal/NotificationBundleProcessor;
.super Ljava/lang/Object;
.source "NotificationBundleProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    }
.end annotation


# static fields
.field static final DEFAULT_ACTION:Ljava/lang/String; = "__DEFAULT__"

.field private static final IAM_PREVIEW_KEY:Ljava/lang/String; = "os_in_app_message_preview_id"

.field public static final PUSH_ADDITIONAL_DATA_KEY:Ljava/lang/String; = "a"

.field public static final PUSH_MINIFIED_BUTTONS_LIST:Ljava/lang/String; = "o"

.field public static final PUSH_MINIFIED_BUTTON_ICON:Ljava/lang/String; = "p"

.field public static final PUSH_MINIFIED_BUTTON_ID:Ljava/lang/String; = "i"

.field public static final PUSH_MINIFIED_BUTTON_TEXT:Ljava/lang/String; = "n"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;
    .locals 4

    .line 312
    new-instance v0, Lcom/onesignal/OSNotificationPayload;

    invoke-direct {v0}, Lcom/onesignal/OSNotificationPayload;-><init>()V

    .line 314
    :try_start_0
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "i"

    .line 315
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    const-string v2, "ti"

    .line 316
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->templateId:Ljava/lang/String;

    const-string v2, "tn"

    .line 317
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->templateName:Ljava/lang/String;

    .line 318
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->rawPayload:Ljava/lang/String;

    const-string v2, "a"

    .line 319
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v2, "u"

    const/4 v3, 0x0

    .line 320
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    const-string v1, "alert"

    .line 322
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    const-string v1, "title"

    .line 323
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    const-string v1, "sicon"

    .line 324
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->smallIcon:Ljava/lang/String;

    const-string v1, "bicon"

    .line 325
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->bigPicture:Ljava/lang/String;

    const-string v1, "licon"

    .line 326
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->largeIcon:Ljava/lang/String;

    const-string v1, "sound"

    .line 327
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->sound:Ljava/lang/String;

    const-string v1, "grp"

    .line 328
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->groupKey:Ljava/lang/String;

    const-string v1, "grp_msg"

    .line 329
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->groupMessage:Ljava/lang/String;

    const-string v1, "bgac"

    .line 330
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->smallIconAccentColor:Ljava/lang/String;

    const-string v1, "ledc"

    .line 331
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->ledColor:Ljava/lang/String;

    const-string v1, "vis"

    .line 332
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    :cond_0
    const-string v1, "from"

    .line 335
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->fromProjectNumber:Ljava/lang/String;

    const-string v1, "pri"

    const/4 v2, 0x0

    .line 336
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/onesignal/OSNotificationPayload;->priority:I

    const-string v1, "collapse_key"

    .line 337
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "do_not_collapse"

    .line 338
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 339
    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->collapseId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->setActionButtons(Lcom/onesignal/OSNotificationPayload;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 344
    :try_start_2
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error assigning OSNotificationPayload.actionButtons values!"

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 348
    :goto_0
    :try_start_3
    invoke-static {v0, p0}, Lcom/onesignal/NotificationBundleProcessor;->setBackgroundImageLayout(Lcom/onesignal/OSNotificationPayload;Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 350
    :try_start_4
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error assigning OSNotificationPayload.backgroundImageLayout values!"

    invoke-static {v1, v2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 353
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error assigning OSNotificationPayload values!"

    invoke-static {v1, v2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method static ProcessFromGCMIntentService(Landroid/content/Context;Lcom/onesignal/BundleCompat;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V
    .locals 5

    const-string v0, "android_notif_id"

    .line 72
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    :try_start_0
    const-string v1, "json_payload"

    .line 74
    invoke-interface {p1, v1}, Lcom/onesignal/BundleCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 76
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "json_payload key is nonexistent from mBundle passed to ProcessFromGCMIntentService: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    new-instance v2, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v2, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    const-string v3, "restoring"

    const/4 v4, 0x0

    .line 81
    invoke-interface {p1, v3, v4}, Lcom/onesignal/BundleCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    const-string v3, "timestamp"

    .line 82
    invoke-interface {p1, v3}, Lcom/onesignal/BundleCompat;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 83
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 84
    iget-object v1, v2, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/onesignal/NotificationBundleProcessor;->inAppPreviewPushUUID(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    iput-boolean v4, v2, Lcom/onesignal/NotificationGenerationJob;->isInAppPreviewPush:Z

    .line 86
    iget-boolean v1, v2, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v1, :cond_2

    iget-boolean v1, v2, Lcom/onesignal/NotificationGenerationJob;->isInAppPreviewPush:Z

    if-nez v1, :cond_2

    iget-object v1, v2, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 88
    invoke-static {p0, v1}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 91
    :cond_2
    invoke-interface {p1, v0}, Lcom/onesignal/BundleCompat;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-nez p2, :cond_3

    .line 93
    new-instance p2, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {p2}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    .line 94
    :cond_3
    invoke-interface {p1, v0}, Lcom/onesignal/BundleCompat;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p2, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 97
    :cond_4
    iput-object p2, v2, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 98
    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I

    .line 102
    iget-boolean p0, v2, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz p0, :cond_5

    const/16 p0, 0x64

    .line 103
    invoke-static {p0}, Lcom/onesignal/OSUtils;->sleep(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 105
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method static ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I
    .locals 4

    .line 110
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppAlertNotificationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    .line 111
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->processCollapseKey(Lcom/onesignal/NotificationGenerationJob;)V

    .line 113
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplayNotif(Lcom/onesignal/NotificationGenerationJob;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->fromJsonPayload(Lcom/onesignal/NotificationGenerationJob;)V

    .line 117
    :cond_1
    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->isInAppPreviewPush:Z

    if-nez v0, :cond_2

    .line 118
    invoke-static {p0, v2}, Lcom/onesignal/NotificationBundleProcessor;->processNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    .line 120
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "androidNotificationId"

    .line 121
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    iget-boolean v2, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignal;->handleNotificationReceived(Lorg/json/JSONArray;ZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 128
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static synthetic access$000(Landroid/os/Bundle;)Lorg/json/JSONArray;
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJsonArray(Landroid/os/Bundle;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 7

    .line 247
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 248
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 250
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 254
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bundleAsJSONObject error for key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static bundleAsJsonArray(Landroid/os/Bundle;)Lorg/json/JSONArray;
    .locals 1

    .line 143
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 144
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v0
.end method

.method static getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 522
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "custom"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static hasRemoteResource(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "licon"

    .line 526
    invoke-static {p0, v0}, Lcom/onesignal/NotificationBundleProcessor;->isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bicon"

    .line 527
    invoke-static {p0, v0}, Lcom/onesignal/NotificationBundleProcessor;->isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "bg_img"

    .line 528
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static inAppPreviewPushUUID(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 467
    :try_start_0
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "a"

    .line 472
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 475
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "os_in_app_message_preview_id"

    .line 476
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method private static isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 532
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "http://"

    .line 533
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "https://"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static markRestoredNotificationAsDismissed(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 5

    .line 232
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android_notification_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 239
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x1

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dismissed"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    const-string v4, "notification"

    .line 242
    invoke-virtual {v1, v4, v2, v0, v3}, Lcom/onesignal/OneSignalDbHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 243
    iget-object p0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/onesignal/BadgeCountUpdater;->update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V

    return-void
.end method

.method static newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1

    .line 518
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static processBundleFromReceiver(Landroid/content/Context;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    .locals 4

    .line 416
    new-instance v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    invoke-direct {v0}, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;-><init>()V

    .line 419
    invoke-static {p1}, Lcom/onesignal/OSNotificationFormatHelper;->isOneSignalBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 421
    iput-boolean v1, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isOneSignalPayload:Z

    .line 423
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->unMinifyButtonsFromBundle(Landroid/os/Bundle;)V

    .line 425
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    .line 428
    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->inAppPreviewPushUUID(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 431
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 432
    iput-boolean v1, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->inAppPreviewShown:Z

    .line 433
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/onesignal/OSInAppMessageController;->displayPreviewMessage(Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 439
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/onesignal/NotificationBundleProcessor;->startExtenderService(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v0

    .line 443
    :cond_3
    invoke-static {p0, v2}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isDup:Z

    .line 444
    iget-boolean v2, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isDup:Z

    if-eqz v2, :cond_4

    return-object v0

    :cond_4
    const-string v2, "alert"

    .line 447
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplay(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, -0x1

    .line 451
    invoke-static {p0, p1, v1, v2}, Lcom/onesignal/NotificationBundleProcessor;->saveAndProcessNotification(Landroid/content/Context;Landroid/os/Bundle;ZI)V

    .line 454
    new-instance p0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/NotificationBundleProcessor$1;

    invoke-direct {v1, p1}, Lcom/onesignal/NotificationBundleProcessor$1;-><init>(Landroid/os/Bundle;)V

    const-string p1, "OS_PROC_BUNDLE"

    invoke-direct {p0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_5
    return-object v0
.end method

.method private static processCollapseKey(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 10

    .line 390
    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v0, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v1, "collapse_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "do_not_collapse"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v2

    const-string v1, "android_notification_id"

    .line 397
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "notification"

    const-string v5, "collapse_id = ? AND dismissed = 0 AND opened = 0 "

    invoke-virtual/range {v2 .. v9}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 406
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 408
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onesignal/NotificationGenerationJob;->setAndroidIdWithOutOverriding(Ljava/lang/Integer;)V

    .line 411
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_0
    return-void
.end method

.method static processNotification(Lcom/onesignal/NotificationGenerationJob;Z)V
    .locals 0

    .line 161
    invoke-static {p0, p1}, Lcom/onesignal/NotificationBundleProcessor;->saveNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    .line 163
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->isNotificationToDisplay()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getApiNotificationId()Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onesignal/OSSessionManager;->onNotificationReceived(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/onesignal/OSReceiveReceiptController;->getInstance()Lcom/onesignal/OSReceiveReceiptController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onesignal/OSReceiveReceiptController;->sendReceiveReceipt(Ljava/lang/String;)V

    return-void
.end method

.method private static saveAndProcessNotification(Landroid/content/Context;Landroid/os/Bundle;ZI)V
    .locals 1

    .line 149
    new-instance v0, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v0, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 151
    new-instance p0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object p0, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 152
    iget-object p0, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 154
    invoke-static {v0, p2}, Lcom/onesignal/NotificationBundleProcessor;->processNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    return-void
.end method

.method private static saveNotification(Lcom/onesignal/NotificationGenerationJob;Z)V
    .locals 13

    const-string v0, "grp"

    const-string v1, "collapse_key"

    .line 177
    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    .line 178
    iget-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 181
    :try_start_0
    iget-object v4, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/onesignal/NotificationBundleProcessor;->getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 183
    iget-object v5, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v5

    .line 187
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->isNotificationToDisplay()Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    const-string v8, "notification"

    const/4 v9, 0x1

    if-eqz v6, :cond_0

    .line 188
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android_notification_id = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 190
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "dismissed"

    .line 191
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    invoke-virtual {v5, v8, v10, v6, v7}, Lcom/onesignal/OneSignalDbHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 194
    invoke-static {v5, v2}, Lcom/onesignal/BadgeCountUpdater;->update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V

    .line 198
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "notification_id"

    const-string v11, "i"

    .line 199
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "group_id"

    .line 201
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "do_not_collapse"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "collapse_id"

    .line 203
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "opened"

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    .line 205
    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p1, :cond_4

    const-string v0, "android_notification_id"

    .line 207
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    :cond_4
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "title"

    .line 210
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_5
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "message"

    .line 212
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p0, "google.sent_time"

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, p0, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v9, 0x3e8

    div-long/2addr v0, v9

    const-string p0, "google.ttl"

    const v4, 0x3f480

    .line 216
    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long v9, p0

    add-long/2addr v0, v9

    const-string p0, "expire_time"

    .line 218
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "full_data"

    .line 220
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v5, v8, v7, v6}, Lcom/onesignal/OneSignalDbHelper;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    if-nez p1, :cond_7

    .line 225
    invoke-static {v5, v2}, Lcom/onesignal/BadgeCountUpdater;->update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 227
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method private static setActionButtons(Lcom/onesignal/OSNotificationPayload;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v1, "actionButtons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    const/4 v2, 0x0

    .line 365
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 366
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 367
    new-instance v4, Lcom/onesignal/OSNotificationPayload$ActionButton;

    invoke-direct {v4}, Lcom/onesignal/OSNotificationPayload$ActionButton;-><init>()V

    const-string v5, "id"

    const/4 v6, 0x0

    .line 368
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/onesignal/OSNotificationPayload$ActionButton;->id:Ljava/lang/String;

    const-string v5, "text"

    .line 369
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/onesignal/OSNotificationPayload$ActionButton;->text:Ljava/lang/String;

    const-string v5, "icon"

    .line 370
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/onesignal/OSNotificationPayload$ActionButton;->icon:Ljava/lang/String;

    .line 371
    iget-object v3, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v2, "actionId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 374
    iget-object p0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static setBackgroundImageLayout(Lcom/onesignal/OSNotificationPayload;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "bg_img"

    const/4 v1, 0x0

    .line 379
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 381
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 382
    new-instance p1, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    invoke-direct {p1}, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;-><init>()V

    iput-object p1, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    .line 383
    iget-object p1, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string v1, "img"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->image:Ljava/lang/String;

    .line 384
    iget-object p1, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string v1, "tc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->titleTextColor:Ljava/lang/String;

    .line 385
    iget-object p0, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string p1, "bc"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->bodyTextColor:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static shouldDisplay(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, ""

    .line 508
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 509
    :goto_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppAlertNotificationEnabled()Z

    move-result v2

    .line 510
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v3

    if-eqz p0, :cond_1

    .line 512
    invoke-static {}, Lcom/onesignal/OneSignal;->getNotificationsWhenActiveEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0
.end method

.method private static shouldDisplayNotif(Lcom/onesignal/NotificationGenerationJob;)Z
    .locals 3

    .line 134
    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->isInAppPreviewPush:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v0, v2, :cond_0

    return v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->hasExtender()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v0, "alert"

    .line 139
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplay(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static startExtenderService(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;)Z
    .locals 6

    .line 483
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 487
    :cond_0
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "json_payload"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v4, "timestamp"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "pri"

    const-string v3, "0"

    .line 490
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-le p1, v2, :cond_1

    const/4 v1, 0x1

    .line 492
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p1, v2, :cond_2

    .line 495
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const v2, 0x7b7e1b69

    .line 493
    invoke-static {p0, p1, v2, v0, v1}, Lcom/onesignal/NotificationExtenderService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;Z)V

    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 503
    :goto_0
    iput-boolean v3, p2, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->hasExtenderService:Z

    return v3
.end method

.method private static unMinifyButtonsFromBundle(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "n"

    const-string v1, "custom"

    const-string v2, "p"

    const-string v3, "i"

    const-string v4, "a"

    const-string v5, "o"

    .line 263
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 267
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 271
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_0

    .line 273
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 275
    :goto_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 278
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 279
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 281
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 282
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 286
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 287
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object v11, v10

    :goto_2
    const-string v12, "id"

    .line 291
    invoke-virtual {v9, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "text"

    .line 292
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "icon"

    .line 295
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "actionButtons"

    .line 300
    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "actionId"

    const-string v2, "__DEFAULT__"

    .line 301
    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 303
    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    :cond_5
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 307
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method
