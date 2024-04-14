.class Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;
.super Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;
.source "OneSignalSyncServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalSyncServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopSyncRunnable"
.end annotation


# instance fields
.field private jobParameters:Landroid/app/job/JobParameters;

.field private jobService:Landroid/app/job/JobService;


# direct methods
.method constructor <init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;->jobService:Landroid/app/job/JobService;

    .line 288
    iput-object p2, p0, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;->jobParameters:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method protected stopSync()V
    .locals 3

    .line 293
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LollipopSyncRunnable:JobFinished needsJobReschedule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->access$100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->access$100()Z

    move-result v0

    const/4 v1, 0x0

    .line 296
    invoke-static {v1}, Lcom/onesignal/OneSignalSyncServiceUtils;->access$102(Z)Z

    .line 297
    iget-object v1, p0, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;->jobService:Landroid/app/job/JobService;

    iget-object v2, p0, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;->jobParameters:Landroid/app/job/JobParameters;

    invoke-virtual {v1, v2, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
