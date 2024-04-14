.class public Lcom/onesignal/GcmBroadcastReceiver;
.super Landroidx/legacy/content/WakefulBroadcastReceiver;
.source "GcmBroadcastReceiver.java"


# static fields
.field private static final GCM_RECEIVE_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final GCM_TYPE:Ljava/lang/String; = "gcm"

.field private static final MESSAGE_TYPE_EXTRA_KEY:Ljava/lang/String; = "message_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/legacy/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method private static isGcmMessage(Landroid/content/Intent;)Z
    .locals 2

    .line 53
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "message_type"

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "gcm"

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static processOrderBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    .locals 1

    .line 120
    invoke-static {p1}, Lcom/onesignal/GcmBroadcastReceiver;->isGcmMessage(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    invoke-static {p0, p2}, Lcom/onesignal/NotificationBundleProcessor;->processBundleFromReceiver(Landroid/content/Context;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->processed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 129
    :cond_1
    invoke-static {p0, p2}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMService(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object p1
.end method

.method private setAbort()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/onesignal/GcmBroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/onesignal/GcmBroadcastReceiver;->abortBroadcast()V

    const/4 v0, -0x1

    .line 115
    invoke-virtual {p0, v0}, Lcom/onesignal/GcmBroadcastReceiver;->setResultCode(I)V

    :cond_0
    return-void
.end method

.method private static setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;
    .locals 4

    .line 187
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "json_payload"

    invoke-interface {p1, v0, p0}, Lcom/onesignal/BundleCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "timestamp"

    invoke-interface {p1, v0, p0}, Lcom/onesignal/BundleCompat;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p1
.end method

.method private setSuccessfulResultCode()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/onesignal/GcmBroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 101
    invoke-virtual {p0, v0}, Lcom/onesignal/GcmBroadcastReceiver;->setResultCode(I)V

    :cond_0
    return-void
.end method

.method static startGCMService(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 136
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->hasRemoteResource(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lcom/onesignal/BundleCompatFactory;->getInstance()Lcom/onesignal/BundleCompat;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/GcmBroadcastReceiver;->setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;

    move-result-object p1

    const/4 v0, 0x0

    .line 138
    invoke-static {p0, p1, v0}, Lcom/onesignal/NotificationBundleProcessor;->ProcessFromGCMIntentService(Landroid/content/Context;Lcom/onesignal/BundleCompat;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V

    return-void

    :cond_0
    const-string v0, "pri"

    const-string v1, "0"

    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 144
    invoke-static {p0, p1}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMServiceWithJobIntentService(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1

    .line 147
    :cond_2
    :try_start_0
    invoke-static {p0, p1}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMServiceWithWakefulService(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 151
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 152
    invoke-static {p0, p1}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMServiceWithJobIntentService(Landroid/content/Context;Landroid/os/Bundle;)V

    :goto_1
    return-void

    .line 154
    :cond_3
    throw v0
.end method

.method private static startGCMServiceWithJobIntentService(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .line 166
    invoke-static {}, Lcom/onesignal/BundleCompatFactory;->getInstance()Lcom/onesignal/BundleCompat;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/GcmBroadcastReceiver;->setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;

    move-result-object p1

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/onesignal/GcmIntentJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    invoke-interface {p1}, Lcom/onesignal/BundleCompat;->getBundle()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    const-string v1, "Bundle:Parcelable:Extras"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    invoke-static {p0, v0}, Lcom/onesignal/GcmIntentJobService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static startGCMServiceWithWakefulService(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 175
    new-instance v0, Landroid/content/ComponentName;

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onesignal/GcmIntentService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/onesignal/BundleCompatBundle;

    invoke-direct {v1}, Lcom/onesignal/BundleCompatBundle;-><init>()V

    invoke-static {p1, v1}, Lcom/onesignal/GcmBroadcastReceiver;->setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;

    move-result-object p1

    .line 179
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 181
    invoke-interface {p1}, Lcom/onesignal/BundleCompat;->getBundle()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 183
    invoke-static {p0, p1}, Lcom/onesignal/GcmBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "from"

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.com/iid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 70
    invoke-static {p1, p2, v0}, Lcom/onesignal/GcmBroadcastReceiver;->processOrderBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    move-result-object p2

    if-nez p2, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setSuccessfulResultCode()V

    return-void

    .line 81
    :cond_1
    iget-boolean v0, p2, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isDup:Z

    if-nez v0, :cond_4

    iget-boolean v0, p2, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->hasExtenderService:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    iget-boolean p2, p2, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isOneSignalPayload:Z

    if-eqz p2, :cond_3

    .line 91
    invoke-static {p1}, Lcom/onesignal/OneSignal;->getFilterOtherGCMReceivers(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 92
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setAbort()V

    return-void

    .line 96
    :cond_3
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setSuccessfulResultCode()V

    return-void

    .line 83
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setAbort()V

    :cond_5
    :goto_1
    return-void
.end method
