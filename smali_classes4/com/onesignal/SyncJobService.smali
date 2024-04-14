.class public Lcom/onesignal/SyncJobService;
.super Landroid/app/job/JobService;
.source "SyncJobService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 42
    new-instance v0, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    invoke-static {p0, v0}, Lcom/onesignal/OneSignalSyncServiceUtils;->doBackgroundSync(Landroid/content/Context;Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 51
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->stopSyncBgThread()Z

    move-result p1

    .line 52
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncJobService onStopJob called, system conditions not available reschedule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return p1
.end method
