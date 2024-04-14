.class public abstract Lcom/onesignal/NotificationExtenderService;
.super Lcom/onesignal/JobIntentService;
.source "NotificationExtenderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/NotificationExtenderService$OverrideSettings;
    }
.end annotation


# static fields
.field static final EXTENDER_SERVICE_JOB_ID:I = 0x7b7e1b69


# instance fields
.field private currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

.field private currentJsonPayload:Lorg/json/JSONObject;

.field private currentlyRestoring:Z

.field private osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

.field private restoreTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/onesignal/JobIntentService;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    return-void
.end method

.method private createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;
    .locals 2

    .line 224
    new-instance v0, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v0, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 225
    iget-boolean v1, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    iput-boolean v1, v0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 226
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 227
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->restoreTimestamp:Ljava/lang/Long;

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 228
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    return-object v0
.end method

.method static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 213
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.onesignal.NotificationExtender"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x80

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 218
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android_notif_id"

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 133
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No extras sent to NotificationExtenderService in its Intent!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "json_payload"

    .line 137
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 139
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json_payload key is nonexistent from bundle passed to NotificationExtenderService: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    const-string p1, "restoring"

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    .line 146
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 147
    new-instance p1, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {p1}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object p1, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 148
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 151
    :cond_2
    iget-boolean p1, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const-string p1, "timestamp"

    .line 154
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/NotificationExtenderService;->restoreTimestamp:Ljava/lang/Long;

    .line 155
    iget-object p1, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    invoke-virtual {p0, p1, v0}, Lcom/onesignal/NotificationExtenderService;->processJsonObject(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected final displayNotification(Lcom/onesignal/NotificationExtenderService$OverrideSettings;)Lcom/onesignal/OSNotificationDisplayedResult;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-virtual {p1, v0}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->override(Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V

    .line 105
    new-instance v0, Lcom/onesignal/OSNotificationDisplayedResult;

    invoke-direct {v0}, Lcom/onesignal/OSNotificationDisplayedResult;-><init>()V

    iput-object v0, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    .line 107
    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService;->createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;

    move-result-object v0

    .line 108
    iput-object p1, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 110
    iget-object p1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I

    move-result v0

    iput v0, p1, Lcom/onesignal/OSNotificationDisplayedResult;->androidNotificationId:I

    .line 111
    iget-object p1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic isStopped()Z
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->isStopped()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/onesignal/JobIntentService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreate()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onCreate()V

    return-void
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onDestroy()V

    return-void
.end method

.method protected final onHandleWork(Landroid/content/Intent;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/onesignal/NotificationExtenderService;->processIntent(Landroid/content/Intent;)V

    .line 124
    invoke-static {p1}, Lcom/onesignal/GcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void
.end method

.method protected abstract onNotificationProcessing(Lcom/onesignal/OSNotificationReceivedResult;)Z
.end method

.method public bridge synthetic onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/onesignal/JobIntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onStopCurrentWork()Z
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method

.method processJsonObject(Lorg/json/JSONObject;Z)V
    .locals 5

    .line 162
    new-instance v0, Lcom/onesignal/OSNotificationReceivedResult;

    invoke-direct {v0}, Lcom/onesignal/OSNotificationReceivedResult;-><init>()V

    .line 163
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationReceivedResult;->payload:Lcom/onesignal/OSNotificationPayload;

    .line 164
    iput-boolean p2, v0, Lcom/onesignal/OSNotificationReceivedResult;->restoring:Z

    .line 165
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v1

    iput-boolean v1, v0, Lcom/onesignal/OSNotificationReceivedResult;->isAppInFocus:Z

    const/4 v1, 0x0

    .line 167
    iput-object v1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    const/4 v1, 0x0

    .line 170
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/onesignal/NotificationExtenderService;->onNotificationProcessing(Lcom/onesignal/OSNotificationReceivedResult;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 173
    iget-object v2, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    if-nez v2, :cond_0

    .line 174
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "onNotificationProcessing throw an exception. Displaying normal OneSignal notification."

    invoke-static {v2, v3, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    :cond_0
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "onNotificationProcessing throw an exception. Extended notification displayed but custom processing did not finish."

    invoke-static {v2, v3, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 180
    :goto_1
    iget-object v2, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    if-nez v2, :cond_5

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "alert"

    .line 184
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    .line 188
    new-instance v0, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v0, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 189
    iput-object p1, v0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 190
    new-instance v3, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v3}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v3, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 191
    iget-object v3, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 193
    invoke-static {v0, v2}, Lcom/onesignal/NotificationBundleProcessor;->processNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    .line 194
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1, v1, v1}, Lcom/onesignal/OneSignal;->handleNotificationReceived(Lorg/json/JSONArray;ZZ)V

    goto :goto_3

    .line 198
    :cond_2
    iget-object p1, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-eqz p1, :cond_4

    .line 199
    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService;->createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;

    move-result-object p1

    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->markRestoredNotificationAsDismissed(Lcom/onesignal/NotificationGenerationJob;)V

    goto :goto_3

    .line 202
    :cond_3
    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService;->createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;

    move-result-object p1

    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I

    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    const/16 p1, 0x64

    .line 207
    invoke-static {p1}, Lcom/onesignal/OSUtils;->sleep(I)V

    :cond_5
    return-void
.end method

.method public bridge synthetic setInterruptIfStopped(Z)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/onesignal/JobIntentService;->setInterruptIfStopped(Z)V

    return-void
.end method
