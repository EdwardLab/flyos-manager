.class Lcom/onesignal/OneSignalCacheCleaner;
.super Ljava/lang/Object;
.source "OneSignalCacheCleaner.java"


# static fields
.field private static final NOTIFICATION_CACHE_DATA_LIFETIME:J = 0x93a80L

.field private static final OS_DELETE_CACHED_NOTIFICATIONS_THREAD:Ljava/lang/String; = "OS_DELETE_CACHED_NOTIFICATIONS_THREAD"

.field private static final OS_DELETE_CACHED_REDISPLAYED_IAMS_THREAD:Ljava/lang/String; = "OS_DELETE_CACHED_REDISPLAYED_IAMS_THREAD"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanCachedNotifications(Lcom/onesignal/OneSignalDbHelper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanCachedUniqueOutcomeEventNotifications(Lcom/onesignal/OneSignalDbHelper;)V

    return-void
.end method

.method static declared-synchronized cleanCachedInAppMessages(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 3

    const-class v0, Lcom/onesignal/OneSignalCacheCleaner;

    monitor-enter v0

    .line 55
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/onesignal/OneSignalCacheCleaner$2;

    invoke-direct {v2, p0}, Lcom/onesignal/OneSignalCacheCleaner$2;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    const-string p0, "OS_DELETE_CACHED_REDISPLAYED_IAMS_THREAD"

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static cleanCachedNotifications(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 4

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x93a80

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "notification"

    const-string v2, "created_time < ?"

    .line 82
    invoke-virtual {p0, v0, v2, v1}, Lcom/onesignal/OneSignalDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static cleanCachedUniqueOutcomeEventNotifications(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT EXISTS(SELECT NULL FROM notification n WHERE n.notification_id = channel_influence_id AND channel_type = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    .line 100
    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceChannel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cached_unique_outcome"

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0, v1, v0, v2}, Lcom/onesignal/OneSignalDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static declared-synchronized cleanNotificationCache(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 3

    const-class v0, Lcom/onesignal/OneSignalCacheCleaner;

    monitor-enter v0

    .line 35
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/onesignal/OneSignalCacheCleaner$1;

    invoke-direct {v2, p0}, Lcom/onesignal/OneSignalCacheCleaner$1;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    const-string p0, "OS_DELETE_CACHED_NOTIFICATIONS_THREAD"

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static cleanOldCachedData(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanNotificationCache(Lcom/onesignal/OneSignalDbHelper;)V

    .line 26
    invoke-static {p0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanCachedInAppMessages(Lcom/onesignal/OneSignalDbHelper;)V

    return-void
.end method
