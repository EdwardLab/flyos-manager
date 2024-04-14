.class abstract Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;
.super Ljava/lang/Object;
.source "OneSignalSyncServiceUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalSyncServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SyncRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 226
    const-class v0, Lcom/onesignal/OneSignalSyncServiceUtils;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 227
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/OneSignalSyncServiceUtils;->access$002(Ljava/lang/Long;)Ljava/lang/Long;

    .line 228
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;->stopSync()V

    return-void

    .line 234
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->initUserState()V

    const/4 v0, 0x1

    .line 242
    :try_start_1
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 243
    new-instance v2, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;

    invoke-direct {v2, p0, v1}, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;-><init>(Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;Ljava/util/concurrent/BlockingQueue;)V

    .line 255
    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v4, v2}, Lcom/onesignal/LocationController;->getLocation(Landroid/content/Context;ZZLcom/onesignal/LocationController$LocationHandler;)V

    .line 258
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .line 259
    instance-of v2, v1, Lcom/onesignal/LocationController$LocationPoint;

    if-eqz v2, :cond_1

    .line 260
    check-cast v1, Lcom/onesignal/LocationController$LocationPoint;

    invoke-static {v1}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 263
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 268
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->syncUserState(Z)V

    .line 269
    invoke-static {}, Lcom/onesignal/FocusTimeController;->getInstance()Lcom/onesignal/FocusTimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/FocusTimeController;->doBlockingBackgroundSyncOfUnsentTime()V

    .line 270
    invoke-virtual {p0}, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;->stopSync()V

    return-void

    :catchall_0
    move-exception v1

    .line 228
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected abstract stopSync()V
.end method
