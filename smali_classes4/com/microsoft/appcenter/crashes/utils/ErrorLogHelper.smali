.class public Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;
.super Ljava/lang/Object;
.source "ErrorLogHelper.java"


# static fields
.field static final CAUSE_LIMIT:I = 0x10

.field private static final CAUSE_LIMIT_HALF:I = 0x8

.field public static final DEVICE_INFO_FILE:Ljava/lang/String; = "deviceInfo"

.field static DEVICE_INFO_KEY:Ljava/lang/String; = "DEVICE_INFO"

.field static final ERROR_DIRECTORY:Ljava/lang/String; = "error"

.field public static final ERROR_LOG_FILE_EXTENSION:Ljava/lang/String; = ".json"

.field public static final FRAME_LIMIT:I = 0x100

.field private static final FRAME_LIMIT_HALF:I = 0x80

.field private static final MAX_PROPERTY_COUNT:I = 0x14

.field public static final MAX_PROPERTY_ITEM_LENGTH:I = 0x7d

.field private static final MINIDUMP_DIRECTORY:Ljava/lang/String; = "minidump"

.field public static final MINIDUMP_FILE_EXTENSION:Ljava/lang/String; = ".dmp"

.field private static final NEW_MINIDUMP_DIRECTORY:Ljava/lang/String; = "new"

.field private static final PENDING_MINIDUMP_DIRECTORY:Ljava/lang/String; = "pending"

.field public static final THROWABLE_FILE_EXTENSION:Ljava/lang/String; = ".throwable"

.field static USER_ID_KEY:Ljava/lang/String; = "USER_ID"

.field private static sErrorLogDirectory:Ljava/io/File;

.field private static sNewMinidumpDirectory:Ljava/io/File;

.field private static sPendingMinidumpDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .line 51
    sget-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sNewMinidumpDirectory:Ljava/io/File;

    return-object v0
.end method

.method public static cleanPendingMinidumps()V
    .locals 1

    .line 670
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getPendingMinidumpDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/FileManager;->cleanDirectory(Ljava/io/File;)V

    return-void
.end method

.method public static clearStaticState()V
    .locals 1

    const/4 v0, 0x0

    .line 694
    sput-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sNewMinidumpDirectory:Ljava/io/File;

    .line 695
    sput-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sErrorLogDirectory:Ljava/io/File;

    .line 696
    sput-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sPendingMinidumpDirectory:Ljava/io/File;

    return-void
.end method

.method public static createErrorLog(Landroid/content/Context;Ljava/lang/Thread;Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;Ljava/util/Map;JZ)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "context",
            "thread",
            "exception",
            "allStackTraces",
            "initializeTimestamp",
            "fatal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Thread;",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;JZ)",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;"
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;-><init>()V

    .line 163
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setId(Ljava/util/UUID;)V

    .line 166
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setTimestamp(Ljava/util/Date;)V

    .line 169
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getInstance()Lcom/microsoft/appcenter/utils/context/UserIdContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setUserId(Ljava/lang/String;)V

    .line 173
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getDeviceInfo(Landroid/content/Context;)Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V
    :try_end_0
    .catch Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppCenterCrashes"

    const-string v3, "Could not attach device properties snapshot to error log, will attach at sending time"

    .line 175
    invoke-static {v2, v3, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setProcessId(Ljava/lang/Integer;)V

    const-string v1, "activity"

    .line 180
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_1

    .line 182
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 184
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 185
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 186
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setProcessName(Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getProcessName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, ""

    .line 197
    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setProcessName(Ljava/lang/String;)V

    .line 201
    :cond_2
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getArchitecture()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setArchitecture(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setErrorThreadId(Ljava/lang/Long;)V

    .line 205
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setErrorThreadName(Ljava/lang/String;)V

    .line 208
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setFatal(Ljava/lang/Boolean;)V

    .line 211
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setAppLaunchTimestamp(Ljava/util/Date;)V

    .line 214
    invoke-virtual {v0, p2}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)V

    .line 217
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 219
    new-instance p3, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;

    invoke-direct {p3}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;-><init>()V

    .line 220
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Thread;

    invoke-virtual {p4}, Ljava/lang/Thread;->getId()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->setId(J)V

    .line 221
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Thread;

    invoke-virtual {p4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->setName(Ljava/lang/String;)V

    .line 222
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/StackTraceElement;

    invoke-static {p2}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getModelFramesFromStackTrace([Ljava/lang/StackTraceElement;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->setFrames(Ljava/util/List;)V

    .line 223
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 225
    :cond_3
    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setThreads(Ljava/util/List;)V

    return-object v0
.end method

.method public static createErrorLog(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;J)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "thread",
            "throwable",
            "allStackTraces",
            "initializeTimestamp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;J)",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;"
        }
    .end annotation

    .line 155
    invoke-static {p2}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getModelExceptionFromThrowable(Ljava/lang/Throwable;)Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-result-object v2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->createErrorLog(Landroid/content/Context;Ljava/lang/Thread;Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;Ljava/util/Map;JZ)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-result-object p0

    return-object p0
.end method

.method private static getArchitecture()Ljava/lang/String;
    .locals 2

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 233
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 235
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method static getContextInformation(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logFolder"
        }
    .end annotation

    .line 380
    new-instance v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$2;

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$2;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "AppCenterCrashes"

    if-eqz p0, :cond_2

    .line 387
    array-length v2, p0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 391
    aget-object p0, p0, v2

    .line 392
    invoke-static {p0}, Lcom/microsoft/appcenter/utils/storage/FileManager;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Failed to read stored device info."

    .line 394
    invoke-static {v1, p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, "No stored deviceinfo file found in a minidump folder."

    .line 388
    invoke-static {v1, p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getErrorReportFromErrorLog(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "log",
            "stackTrace"
        }
    .end annotation

    .line 532
    new-instance v0, Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;-><init>()V

    .line 533
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setId(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getErrorThreadName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setThreadName(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setStackTrace(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getAppLaunchTimestamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setAppStartTime(Ljava/util/Date;)V

    .line 537
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setAppErrorTime(Ljava/util/Date;)V

    .line 538
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V

    return-object v0
.end method

.method public static declared-synchronized getErrorStorageDirectory()Ljava/io/File;
    .locals 4

    const-class v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;

    monitor-enter v0

    .line 241
    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sErrorLogDirectory:Ljava/io/File;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/microsoft/appcenter/Constants;->FILES_PATH:Ljava/lang/String;

    const-string v3, "error"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sErrorLogDirectory:Ljava/io/File;

    .line 243
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/FileManager;->mkdir(Ljava/lang/String;)V

    .line 245
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sErrorLogDirectory:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLastErrorLogFile()Ljava/io/File;
    .locals 2

    .line 478
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$4;

    invoke-direct {v1}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$4;-><init>()V

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/storage/FileManager;->lastModifiedFile(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getModelExceptionFromThrowable(Ljava/lang/Throwable;)Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 562
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-eqz p0, :cond_0

    .line 564
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 566
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/16 v1, 0x10

    if-le p0, v1, :cond_1

    .line 567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crash causes truncated from "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " causes."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppCenterCrashes"

    invoke-static {v1, p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/16 v1, 0x8

    sub-int/2addr p0, v1

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 570
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 571
    new-instance v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    invoke-direct {v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;-><init>()V

    .line 572
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setType(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setMessage(Ljava/lang/String;)V

    .line 574
    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getModelFramesFromStackTrace(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setFrames(Ljava/util/List;)V

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_2

    .line 578
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setInnerExceptions(Ljava/util/List;)V

    :goto_2
    move-object v1, v3

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private static getModelFramesFromStackTrace(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;",
            ">;"
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 590
    array-length v1, v0

    const/16 v2, 0x100

    if-le v1, v2, :cond_0

    new-array v1, v2, [Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    const/16 v4, 0x80

    .line 592
    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 593
    array-length v3, v0

    sub-int/2addr v3, v4

    invoke-static {v0, v3, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 595
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crash frames truncated from "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frames."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppCenterCrashes"

    invoke-static {v0, p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 598
    :cond_0
    invoke-static {v0}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getModelFramesFromStackTrace([Ljava/lang/StackTraceElement;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getModelFramesFromStackTrace([Ljava/lang/StackTraceElement;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stackTrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;",
            ">;"
        }
    .end annotation

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 605
    invoke-static {v3}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getModelStackFrame(Ljava/lang/StackTraceElement;)Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getModelStackFrame(Ljava/lang/StackTraceElement;)Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stackTraceElement"
        }
    .end annotation

    .line 612
    new-instance v0, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;-><init>()V

    .line 613
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->setClassName(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->setMethodName(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->setLineNumber(Ljava/lang/Integer;)V

    .line 616
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->setFileName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized getNewMinidumpDirectory()Ljava/io/File;
    .locals 4

    const-class v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;

    monitor-enter v0

    .line 255
    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 256
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "minidump"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/io/File;

    const-string v3, "new"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getNewMinidumpFiles()[Ljava/io/File;
    .locals 1

    .line 342
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getNewMinidumpDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getNewMinidumpSubfolder()Ljava/io/File;
    .locals 4

    const-class v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;

    monitor-enter v0

    .line 267
    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sNewMinidumpDirectory:Ljava/io/File;

    if-nez v1, :cond_0

    .line 268
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getNewMinidumpDirectory()Ljava/io/File;

    move-result-object v1

    .line 269
    new-instance v2, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sNewMinidumpDirectory:Ljava/io/File;

    .line 270
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/FileManager;->mkdir(Ljava/lang/String;)V

    .line 272
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sNewMinidumpDirectory:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getNewMinidumpSubfolderWithContextData(Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;

    monitor-enter v0

    .line 285
    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getNewMinidumpSubfolder()Ljava/io/File;

    move-result-object v1

    .line 286
    new-instance v2, Ljava/io/File;

    const-string v3, "deviceInfo"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :try_start_1
    invoke-static {p0}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getDeviceInfo(Landroid/content/Context;)Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object p0

    .line 289
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getInstance()Lcom/microsoft/appcenter/utils/context/UserIdContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appcenter.ndk"

    .line 290
    invoke-virtual {p0, v4}, Lcom/microsoft/appcenter/ingestion/models/Device;->setWrapperSdkName(Ljava/lang/String;)V

    .line 293
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    .line 294
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 295
    invoke-virtual {p0, v4}, Lcom/microsoft/appcenter/ingestion/models/Device;->write(Lorg/json/JSONStringer;)V

    .line 296
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 297
    invoke-virtual {v4}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 298
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 299
    sget-object v5, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->DEVICE_INFO_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    sget-object p0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->USER_ID_KEY:Ljava/lang/String;

    invoke-virtual {v4, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/microsoft/appcenter/utils/storage/FileManager;->write(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    :try_start_2
    const-string v3, "AppCenterCrashes"

    const-string v4, "Failed to store device info in a minidump folder."

    .line 305
    invoke-static {v3, v4, p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getPendingMinidumpDirectory()Ljava/io/File;
    .locals 4

    const-class v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;

    monitor-enter v0

    .line 320
    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sPendingMinidumpDirectory:Ljava/io/File;

    if-nez v1, :cond_0

    .line 321
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 322
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "minidump"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v1, Ljava/io/File;

    const-string v3, "pending"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sPendingMinidumpDirectory:Ljava/io/File;

    .line 324
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/FileManager;->mkdir(Ljava/lang/String;)V

    .line 326
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sPendingMinidumpDirectory:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getStoredDeviceInfo(Ljava/io/File;)Lcom/microsoft/appcenter/ingestion/models/Device;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logFolder"
        }
    .end annotation

    .line 354
    invoke-static {p0}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getContextInformation(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 358
    :cond_0
    invoke-static {p0}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->parseDevice(Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object p0

    return-object p0
.end method

.method static getStoredErrorLogFile(Ljava/util/UUID;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const-string v0, ".json"

    .line 501
    invoke-static {p0, v0}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredFile(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getStoredErrorLogFiles()[Ljava/io/File;
    .locals 2

    .line 331
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$1;

    invoke-direct {v1}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    :goto_0
    return-object v0
.end method

.method private static getStoredFile(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "extension"
        }
    .end annotation

    .line 548
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$6;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$6;-><init>(Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 555
    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getStoredThrowableFile(Ljava/util/UUID;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const-string v0, ".throwable"

    .line 488
    invoke-static {p0, v0}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredFile(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getStoredUserInfo(Ljava/io/File;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logFolder"
        }
    .end annotation

    .line 367
    invoke-static {p0}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getContextInformation(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 371
    :cond_0
    invoke-static {p0}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->parseUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static parseDevice(Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Device;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contextInformation"
        }
    .end annotation

    .line 426
    :try_start_0
    new-instance v0, Lcom/microsoft/appcenter/ingestion/models/Device;

    invoke-direct {v0}, Lcom/microsoft/appcenter/ingestion/models/Device;-><init>()V

    .line 427
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 429
    sget-object p0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->DEVICE_INFO_KEY:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 430
    new-instance p0, Lorg/json/JSONObject;

    sget-object v2, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->DEVICE_INFO_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    .line 434
    :cond_0
    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/ingestion/models/Device;->read(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "AppCenterCrashes"

    const-string v1, "Failed to deserialize device info."

    .line 437
    invoke-static {v0, v1, p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseLogFolderUuid(Ljava/io/File;)Ljava/util/UUID;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logFolder"
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AppCenterCrashes"

    const-string v1, "Cannot parse minidump folder name to UUID."

    .line 686
    invoke-static {v0, v1, p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 689
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static parseUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contextInformation"
        }
    .end annotation

    .line 408
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 409
    sget-object p0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->USER_ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 410
    sget-object p0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->USER_ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "AppCenterCrashes"

    const-string v1, "Failed to deserialize user info."

    .line 413
    invoke-static {v0, v1, p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeLostThrowableFiles()V
    .locals 6

    .line 516
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$5;

    invoke-direct {v1}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$5;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    array-length v1, v0

    if-lez v1, :cond_0

    .line 524
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 525
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\.[^.]+$"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->removeStoredThrowableFile(Ljava/util/UUID;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeMinidumpFolder()V
    .locals 3

    .line 471
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 472
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "minidump"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/FileManager;->deleteDirectory(Ljava/io/File;)Z

    return-void
.end method

.method public static removeStaleMinidumpSubfolders()V
    .locals 4

    .line 448
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getNewMinidumpDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$3;

    invoke-direct {v1}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 458
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 462
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 463
    invoke-static {v3}, Lcom/microsoft/appcenter/utils/storage/FileManager;->deleteDirectory(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string v0, "AppCenterCrashes"

    const-string v1, "No previous minidump sub-folders."

    .line 459
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removeStoredErrorLogFile(Ljava/util/UUID;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 505
    invoke-static {p0}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredErrorLogFile(Ljava/util/UUID;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting error log file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenterCrashes"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {p0}, Lcom/microsoft/appcenter/utils/storage/FileManager;->delete(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public static removeStoredThrowableFile(Ljava/util/UUID;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 492
    invoke-static {p0}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredThrowableFile(Ljava/util/UUID;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting throwable file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenterCrashes"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {p0}, Lcom/microsoft/appcenter/utils/storage/FileManager;->delete(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public static setErrorLogDirectory(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 543
    sput-object p0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sErrorLogDirectory:Ljava/io/File;

    return-void
.end method

.method public static validateProperties(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "properties",
            "logType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 632
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 633
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 634
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 635
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 636
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x14

    const/4 v5, 0x2

    const-string v6, "AppCenterCrashes"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lt v3, v4, :cond_1

    new-array p0, v5, [Ljava/lang/Object;

    aput-object p1, p0, v8

    .line 637
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v7

    const-string p1, "%s : properties cannot contain more than %s items. Skipping other properties."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 638
    invoke-static {v6, p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    if-eqz v2, :cond_6

    .line 641
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    if-nez v1, :cond_3

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v8

    aput-object v2, v1, v7

    aput-object v2, v1, v5

    const-string v2, "%s : property \'%s\' : property value cannot be null. Property \'%s\' will be skipped."

    .line 647
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 648
    invoke-static {v6, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 651
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v9, 0x7d

    if-le v4, v9, :cond_4

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v8

    aput-object v2, v4, v7

    .line 652
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v5

    const-string v10, "%s : property \'%s\' : property key length cannot be longer than %s characters. Property key will be truncated."

    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 653
    invoke-static {v6, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 656
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v8

    aput-object v2, v3, v7

    .line 657
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "%s : property \'%s\' : property value cannot be longer than %s characters. Property value will be truncated."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 658
    invoke-static {v6, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 661
    :cond_5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    :goto_1
    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v8

    const-string v2, "%s : a property key cannot be null or empty. Property will be skipped."

    .line 642
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-static {v6, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :goto_2
    return-object v0
.end method
