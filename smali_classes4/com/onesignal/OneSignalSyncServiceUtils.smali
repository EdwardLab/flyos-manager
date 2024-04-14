.class Lcom/onesignal/OneSignalSyncServiceUtils;
.super Ljava/lang/Object;
.source "OneSignalSyncServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalSyncServiceUtils$LegacySyncRunnable;,
        Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;,
        Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;
    }
.end annotation


# static fields
.field private static final SYNC_AFTER_BG_DELAY_MS:J = 0x7530L

.field private static final SYNC_TASK_ID:I = 0x7b7e1b66

.field private static needsJobReschedule:Z

.field private static nextScheduledSyncTimeMs:Ljava/lang/Long;

.field private static syncBgThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTimeMs:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 66
    sput-boolean v0, Lcom/onesignal/OneSignalSyncServiceUtils;->needsJobReschedule:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 58
    sput-object p0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTimeMs:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/onesignal/OneSignalSyncServiceUtils;->needsJobReschedule:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 58
    sput-boolean p0, Lcom/onesignal/OneSignalSyncServiceUtils;->needsJobReschedule:Z

    return p0
.end method

.method static declared-synchronized cancelSyncTask(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/onesignal/OneSignalSyncServiceUtils;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 79
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTimeMs:Ljava/lang/Long;

    .line 80
    invoke-static {p0}, Lcom/onesignal/LocationController;->scheduleUpdate(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 82
    monitor-exit v0

    return-void

    .line 84
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->useJob()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "jobscheduler"

    .line 85
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const v1, 0x7b7e1b66

    .line 86
    invoke-virtual {p0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0

    :cond_1
    const-string v1, "alarm"

    .line 88
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 89
    invoke-static {p0}, Lcom/onesignal/OneSignalSyncServiceUtils;->syncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static doBackgroundSync(Landroid/content/Context;Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;)V
    .locals 1

    .line 200
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 201
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "OS_SYNCSRV_BG_SYNC"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object p0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    .line 202
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static hasBootPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 133
    invoke-static {p0, v0}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isJobIdRunning(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "jobscheduler"

    .line 142
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 143
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 144
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    const v1, 0x7b7e1b66

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static scheduleLocationUpdateTask(Landroid/content/Context;J)V
    .locals 3

    .line 69
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleLocationUpdateTask:delayMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 70
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncTask(Landroid/content/Context;J)V

    return-void
.end method

.method private static scheduleSyncServiceAsAlarm(Landroid/content/Context;J)V
    .locals 3

    .line 189
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleServiceSyncTask:atTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 191
    invoke-static {p0}, Lcom/onesignal/OneSignalSyncServiceUtils;->syncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 192
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    add-long/2addr v1, p1

    const/4 p1, 0x0

    .line 194
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private static scheduleSyncServiceAsJob(Landroid/content/Context;J)V
    .locals 5

    .line 153
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleSyncServiceAsJob:atTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 155
    invoke-static {p0}, Lcom/onesignal/OneSignalSyncServiceUtils;->isJobIdRunning(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 156
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p1, "scheduleSyncServiceAsJob Scheduler already running!"

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 159
    sput-boolean v1, Lcom/onesignal/OneSignalSyncServiceUtils;->needsJobReschedule:Z

    return-void

    .line 163
    :cond_0
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const v2, 0x7b7e1b66

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/onesignal/SyncJobService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 169
    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 172
    invoke-static {p0}, Lcom/onesignal/OneSignalSyncServiceUtils;->hasBootPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 173
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    :cond_1
    const-string p1, "jobscheduler"

    .line 175
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 177
    :try_start_0
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    .line 178
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scheduleSyncServiceAsJob:result: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 182
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "scheduleSyncServiceAsJob called JobScheduler.jobScheduler which triggered an internal null Android error. Skipping job."

    invoke-static {p1, p2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static scheduleSyncTask(Landroid/content/Context;)V
    .locals 2

    .line 74
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "scheduleSyncTask:SYNC_AFTER_BG_DELAY_MS: 30000"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const-wide/16 v0, 0x7530

    .line 75
    invoke-static {p0, v0, v1}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncTask(Landroid/content/Context;J)V

    return-void
.end method

.method private static declared-synchronized scheduleSyncTask(Landroid/content/Context;J)V
    .locals 6

    const-class v0, Lcom/onesignal/OneSignalSyncServiceUtils;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTimeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    sget-object v3, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTimeMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 119
    monitor-exit v0

    return-void

    :cond_0
    const-wide/16 v1, 0x1388

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    move-wide p1, v1

    .line 124
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->useJob()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncServiceAsJob(Landroid/content/Context;J)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncServiceAsAlarm(Landroid/content/Context;J)V

    .line 129
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTimeMs:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static stopSyncBgThread()Z
    .locals 2

    .line 206
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 209
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 212
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x1

    return v0
.end method

.method private static syncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/onesignal/SyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7b7e1b66

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static useJob()Z
    .locals 2

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
