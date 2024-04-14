.class Lcom/onesignal/TrackFirebaseAnalytics;
.super Ljava/lang/Object;
.source "TrackFirebaseAnalytics.java"


# static fields
.field private static final EVENT_NOTIFICATION_INFLUENCE_OPEN:Ljava/lang/String; = "os_notification_influence_open"

.field private static final EVENT_NOTIFICATION_OPENED:Ljava/lang/String; = "os_notification_opened"

.field private static final EVENT_NOTIFICATION_RECEIVED:Ljava/lang/String; = "os_notification_received"

.field private static FirebaseAnalyticsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private static lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;

.field private static lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private appContext:Landroid/content/Context;

.field private mFirebaseAnalyticsInstance:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/onesignal/TrackFirebaseAnalytics;->appContext:Landroid/content/Context;

    return-void
.end method

.method static CanTrack()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 57
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private getCampaignNameFromPayload(Lcom/onesignal/OSNotificationPayload;)Ljava/lang/String;
    .locals 3

    .line 152
    iget-object v0, p1, Lcom/onesignal/OSNotificationPayload;->templateName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/onesignal/OSNotificationPayload;->templateId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/onesignal/OSNotificationPayload;->templateName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/onesignal/OSNotificationPayload;->templateId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    iget-object v0, p1, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p1, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xa

    iget-object p1, p1, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private getFirebaseAnalyticsInstance(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/onesignal/TrackFirebaseAnalytics;->mFirebaseAnalyticsInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 163
    sget-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/onesignal/TrackFirebaseAnalytics;->getInstanceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 165
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/TrackFirebaseAnalytics;->mFirebaseAnalyticsInstance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v2

    .line 172
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/onesignal/TrackFirebaseAnalytics;->mFirebaseAnalyticsInstance:Ljava/lang/Object;

    return-object p1
.end method

.method private static getInstanceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4

    :try_start_0
    const-string v0, "getInstance"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 186
    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTrackMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4

    :try_start_0
    const-string v0, "logEvent"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 177
    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method trackInfluenceOpenEvent()V
    .locals 7

    .line 65
    sget-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    sget-object v2, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    return-void

    .line 75
    :cond_1
    sget-object v2, Lcom/onesignal/TrackFirebaseAnalytics;->lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    return-void

    .line 79
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/TrackFirebaseAnalytics;->appContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/onesignal/TrackFirebaseAnalytics;->getFirebaseAnalyticsInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/onesignal/TrackFirebaseAnalytics;->getTrackMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "os_notification_influence_open"

    .line 86
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "source"

    const-string v5, "OneSignal"

    .line 87
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "medium"

    const-string v5, "notification"

    .line 88
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "notification_id"

    .line 89
    sget-object v5, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;

    iget-object v5, v5, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "campaign"

    .line 90
    sget-object v5, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;

    invoke-direct {p0, v5}, Lcom/onesignal/TrackFirebaseAnalytics;->getCampaignNameFromPayload(Lcom/onesignal/OSNotificationPayload;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    .line 92
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method trackOpenedEvent(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 5

    .line 99
    sget-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 101
    :cond_0
    sget-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/TrackFirebaseAnalytics;->appContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/onesignal/TrackFirebaseAnalytics;->getFirebaseAnalyticsInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/onesignal/TrackFirebaseAnalytics;->getTrackMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 110
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "source"

    const-string v4, "OneSignal"

    .line 111
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "medium"

    const-string v4, "notification"

    .line 112
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "notification_id"

    .line 113
    iget-object v4, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v4, v4, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v4, v4, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "campaign"

    .line 114
    iget-object p1, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object p1, p1, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    invoke-direct {p0, p1}, Lcom/onesignal/TrackFirebaseAnalytics;->getCampaignNameFromPayload(Lcom/onesignal/OSNotificationPayload;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "os_notification_opened"

    aput-object v4, p1, v3

    const/4 v3, 0x1

    aput-object v2, p1, v3

    .line 116
    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method trackReceivedEvent(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 6

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/TrackFirebaseAnalytics;->appContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/onesignal/TrackFirebaseAnalytics;->getFirebaseAnalyticsInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/onesignal/TrackFirebaseAnalytics;->getTrackMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 132
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "source"

    const-string v4, "OneSignal"

    .line 133
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "medium"

    const-string v4, "notification"

    .line 134
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "notification_id"

    .line 135
    iget-object v4, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v4, v4, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v4, v4, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "campaign"

    .line 136
    iget-object v4, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v4, v4, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    invoke-direct {p0, v4}, Lcom/onesignal/TrackFirebaseAnalytics;->getCampaignNameFromPayload(Lcom/onesignal/OSNotificationPayload;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "os_notification_received"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 138
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 142
    :cond_0
    sget-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 144
    iget-object p1, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object p1, p1, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    sput-object p1, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
