.class public Lcom/microsoft/appcenter/AppCenter;
.super Ljava/lang/Object;
.source "AppCenter.java"


# static fields
.field static final APP_SECRET_KEY:Ljava/lang/String; = "appsecret"

.field static final CORE_GROUP:Ljava/lang/String; = "group_core"

.field static final DEFAULT_MAX_STORAGE_SIZE_IN_BYTES:J = 0xa00000L

.field static final KEY_VALUE_DELIMITER:Ljava/lang/String; = "="

.field public static final LOG_TAG:Ljava/lang/String; = "AppCenter"

.field static final MINIMUM_STORAGE_SIZE:J = 0x6000L

.field static final PAIR_DELIMITER:Ljava/lang/String; = ";"

.field static final RUNNING_IN_APP_CENTER:Ljava/lang/String; = "RUNNING_IN_APP_CENTER"

.field static final TRANSMISSION_TARGET_TOKEN_KEY:Ljava/lang/String; = "target"

.field private static final TRUE_ENVIRONMENT_STRING:Ljava/lang/String; = "1"

.field private static sInstance:Lcom/microsoft/appcenter/AppCenter;


# instance fields
.field private mAllowedNetworkRequests:Ljava/lang/Boolean;

.field private mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

.field private mAppSecret:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mApplicationLifecycleListener:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

.field private mChannel:Lcom/microsoft/appcenter/channel/Channel;

.field private mConfiguredFromApp:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLogLevelConfigured:Z

.field private mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

.field private mLogUrl:Ljava/lang/String;

.field private mMaxStorageSizeInBytes:J

.field private mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

.field private mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;"
        }
    .end annotation
.end field

.field private mServicesStartedFromLibrary:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;"
        }
    .end annotation
.end field

.field private mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartedServicesNamesToLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTransmissionTargetToken:Ljava/lang/String;

.field private mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    const-wide/32 v0, 0xa00000

    .line 222
    iput-wide v0, p0, Lcom/microsoft/appcenter/AppCenter;->mMaxStorageSizeInBytes:J

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/AppCenter;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/AppCenter;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/microsoft/appcenter/AppCenter;)Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/AppCenter;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->applyStorageMaxSize()V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/AppCenter;->handlerAppCenterOperation(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/microsoft/appcenter/AppCenter;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/AppCenter;->finishConfiguration(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/AppCenter;->finishStartServices(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/microsoft/appcenter/AppCenter;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/AppCenter;->setInstanceEnabled(Z)V

    return-void
.end method

.method private applyStorageMaxSize()V
    .locals 3

    .line 915
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-wide v1, p0, Lcom/microsoft/appcenter/AppCenter;->mMaxStorageSizeInBytes:J

    invoke-interface {v0, v1, v2}, Lcom/microsoft/appcenter/channel/Channel;->setMaxStorageSize(J)Z

    move-result v0

    .line 916
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    if-eqz v1, :cond_0

    .line 917
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized checkPrecondition()Z
    .locals 2

    monitor-enter p0

    .line 531
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceConfigured()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 532
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "AppCenter"

    const-string v1, "App Center hasn\'t been configured. You need to call AppCenter.start with appSecret or AppCenter.configure first."

    .line 534
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 535
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static configure(Landroid/app/Application;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 364
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static configure(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "application",
            "appSecret"
        }
    .end annotation

    .line 354
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/AppCenter;->configureInstanceWithRequiredAppSecret(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method private configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "application",
            "appSecret",
            "startFromApp",
            "services"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .line 1087
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1089
    invoke-direct {p0, p3, p4}, Lcom/microsoft/appcenter/AppCenter;->startServices(Z[Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized configureAndStartServices(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "application",
            "appSecret",
            "services"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 1074
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1077
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "AppCenter"

    const-string p2, "appSecret may not be null or empty."

    .line 1075
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "application",
            "secretString",
            "configureFromApp"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "AppCenter"

    const-string p2, "Application context may not be null."

    .line 691
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    monitor-exit p0

    return v0

    .line 696
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/microsoft/appcenter/AppCenter;->mLogLevelConfigured:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x5

    .line 697
    invoke-static {v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->setLogLevel(I)V

    .line 701
    :cond_1
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 702
    invoke-direct {p0, p2}, Lcom/microsoft/appcenter/AppCenter;->configureSecretString(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_2

    .line 703
    monitor-exit p0

    return v0

    .line 707
    :cond_2
    :try_start_2
    iget-object p2, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    .line 710
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 711
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/microsoft/appcenter/AppCenter$3;

    invoke-direct {p2, p0}, Lcom/microsoft/appcenter/AppCenter$3;-><init>(Lcom/microsoft/appcenter/AppCenter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 720
    :cond_3
    monitor-exit p0

    return v0

    .line 724
    :cond_4
    :try_start_3
    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    .line 725
    invoke-static {p1}, Lcom/microsoft/appcenter/ApplicationContextUtils;->getApplicationContext(Landroid/app/Application;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    .line 726
    invoke-static {p1}, Lcom/microsoft/appcenter/ApplicationContextUtils;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "AppCenter"

    const-string p2, "A user is locked, credential-protected private app data storage is not available.\nApp Center will use device-protected data storage that available without user authentication.\nPlease note that it\'s a separate storage, all settings and pending logs won\'t be shared with regular storage."

    .line 732
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_5
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "AppCenter.Looper"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 740
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 741
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    .line 742
    new-instance p1, Lcom/microsoft/appcenter/AppCenter$4;

    invoke-direct {p1, p0}, Lcom/microsoft/appcenter/AppCenter$4;-><init>(Lcom/microsoft/appcenter/AppCenter;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    .line 749
    new-instance p1, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    iget-object p2, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mApplicationLifecycleListener:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    .line 750
    iget-object p2, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-virtual {p2, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 753
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    .line 754
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mServicesStartedFromLibrary:Ljava/util/Set;

    .line 755
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/microsoft/appcenter/AppCenter$5;

    invoke-direct {p2, p0, p3}, Lcom/microsoft/appcenter/AppCenter$5;-><init>(Lcom/microsoft/appcenter/AppCenter;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "AppCenter"

    const-string p2, "App Center SDK configured successfully."

    .line 762
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 763
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private configureInstanceWithRequiredAppSecret(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "application",
            "appSecret"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 671
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 674
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "AppCenter"

    const-string p2, "appSecret may not be null or empty."

    .line 672
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private configureSecretString(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secretString"
        }
    .end annotation

    .line 777
    iget-boolean v0, p0, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "AppCenter"

    const-string v0, "App Center may only be configured once."

    .line 778
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 781
    iput-boolean v0, p0, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    if-eqz p1, :cond_4

    const-string v2, ";"

    .line 787
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 790
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    const/4 v5, -0x1

    const-string v6, "="

    .line 793
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 794
    aget-object v5, v4, v1

    .line 797
    array-length v6, v4

    if-ne v6, v0, :cond_1

    .line 798
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 799
    iput-object v5, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    goto :goto_1

    .line 801
    :cond_1
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 802
    aget-object v4, v4, v0

    const-string v6, "appsecret"

    .line 805
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 806
    iput-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v6, "target"

    .line 807
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 808
    iput-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private finishConfiguration(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configureFromApp"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/appcenter/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 853
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/FileManager;->initialize(Landroid/content/Context;)V

    .line 854
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->initialize(Landroid/content/Context;)V

    .line 857
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mAllowedNetworkRequests:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "allowedNetworkRequests"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 862
    :cond_0
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/SessionContext;->getInstance()Lcom/microsoft/appcenter/utils/context/SessionContext;

    .line 865
    invoke-virtual {p0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v0

    .line 868
    invoke-static {}, Lcom/microsoft/appcenter/DependencyConfiguration;->getHttpClient()Lcom/microsoft/appcenter/http/HttpClient;

    move-result-object v1

    if-nez v1, :cond_1

    .line 870
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/microsoft/appcenter/http/HttpUtils;->createHttpClient(Landroid/content/Context;)Lcom/microsoft/appcenter/http/HttpClient;

    move-result-object v1

    .line 874
    :cond_1
    new-instance v2, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;

    invoke-direct {v2}, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;-><init>()V

    iput-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 875
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/json/StartServiceLogFactory;

    invoke-direct {v3}, Lcom/microsoft/appcenter/ingestion/models/json/StartServiceLogFactory;-><init>()V

    const-string v4, "startService"

    invoke-interface {v2, v4, v3}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V

    .line 876
    new-instance v8, Lcom/microsoft/appcenter/channel/DefaultChannel;

    iget-object v3, p0, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    iget-object v5, p0, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    iget-object v7, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    move-object v2, v8

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/microsoft/appcenter/channel/DefaultChannel;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/http/HttpClient;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    if-eqz p1, :cond_2

    .line 880
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->applyStorageMaxSize()V

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0xa00000

    .line 884
    invoke-interface {v8, v2, v3}, Lcom/microsoft/appcenter/channel/Channel;->setMaxStorageSize(J)Z

    .line 886
    :goto_0
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    invoke-interface {p1, v0}, Lcom/microsoft/appcenter/channel/Channel;->setEnabled(Z)V

    .line 887
    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const/16 v4, 0x32

    const-wide/16 v5, 0xbb8

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "group_core"

    invoke-interface/range {v2 .. v9}, Lcom/microsoft/appcenter/channel/Channel;->addGroup(Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V

    .line 888
    new-instance p1, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v3, p0, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    invoke-static {}, Lcom/microsoft/appcenter/utils/IdHelper;->getInstallId()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {p1, v2, v3, v1, v4}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;-><init>(Lcom/microsoft/appcenter/channel/Channel;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/http/HttpClient;Ljava/util/UUID;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    .line 889
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    const-string v1, "AppCenter"

    if-eqz p1, :cond_4

    .line 890
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 891
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The log url of App Center endpoint has been changed to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/microsoft/appcenter/channel/Channel;->setLogUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 894
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The log url of One Collector endpoint has been changed to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->setLogUrl(Ljava/lang/String;)V

    .line 898
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    invoke-interface {p1, v2}, Lcom/microsoft/appcenter/channel/Channel;->addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    if-nez v0, :cond_5

    .line 902
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->close()V

    .line 906
    :cond_5
    new-instance p1, Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    invoke-direct {p1, v2, v3}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;-><init>(Landroid/os/Handler;Lcom/microsoft/appcenter/channel/Channel;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    if-eqz v0, :cond_6

    .line 908
    invoke-virtual {p1}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->register()V

    :cond_6
    const-string p1, "App Center initialized."

    .line 910
    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private finishStartServices(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "updatedServices",
            "startedServices",
            "startFromApp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;Z)V"
        }
    .end annotation

    .line 1018
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "AppCenter"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/AppCenterService;

    .line 1019
    iget-object v3, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/microsoft/appcenter/AppCenterService;->onConfigurationUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " service configuration updated."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1024
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v0

    .line 1025
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/appcenter/AppCenterService;

    .line 1026
    invoke-interface {v3}, Lcom/microsoft/appcenter/AppCenterService;->getLogFactories()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1028
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1029
    iget-object v6, p0, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;

    invoke-interface {v6, v7, v5}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    .line 1032
    invoke-interface {v3}, Lcom/microsoft/appcenter/AppCenterService;->isInstanceEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    .line 1033
    invoke-interface {v3, v4}, Lcom/microsoft/appcenter/AppCenterService;->setInstanceEnabled(Z)V

    :cond_2
    if-eqz p3, :cond_3

    .line 1036
    iget-object v5, p0, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v7, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    iget-object v8, p0, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    const/4 v9, 0x1

    move-object v4, v3

    invoke-interface/range {v4 .. v9}, Lcom/microsoft/appcenter/AppCenterService;->onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " service started from application."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1039
    :cond_3
    iget-object v5, p0, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-interface/range {v4 .. v9}, Lcom/microsoft/appcenter/AppCenterService;->onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1040
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " service started from library."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    if-eqz p3, :cond_7

    .line 1048
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/microsoft/appcenter/AppCenterService;

    .line 1049
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {p3}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1051
    :cond_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/appcenter/AppCenterService;

    .line 1052
    iget-object p3, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {p2}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1054
    :cond_6
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->sendStartServiceLog()V

    :cond_7
    return-void
.end method

.method public static getInstallId()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 483
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->getInstanceInstallIdAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/appcenter/AppCenter;
    .locals 2

    const-class v0, Lcom/microsoft/appcenter/AppCenter;

    monitor-enter v0

    .line 245
    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;

    if-nez v1, :cond_0

    .line 246
    new-instance v1, Lcom/microsoft/appcenter/AppCenter;

    invoke-direct {v1}, Lcom/microsoft/appcenter/AppCenter;-><init>()V

    sput-object v1, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;

    .line 248
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getInstanceInstallIdAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1207
    :try_start_0
    new-instance v0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    invoke-direct {v0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    .line 1208
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1209
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    new-instance v2, Lcom/microsoft/appcenter/AppCenter$11;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/appcenter/AppCenter$11;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    new-instance v3, Lcom/microsoft/appcenter/AppCenter$12;

    invoke-direct {v3, p0, v0}, Lcom/microsoft/appcenter/AppCenter$12;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    invoke-interface {v1, v2, v3}, Lcom/microsoft/appcenter/AppCenterHandler;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1223
    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getLogLevel()I
    .locals 1

    .line 274
    invoke-static {}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getLogLevel()I

    move-result v0

    return v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.0.0"

    return-object v0
.end method

.method private declared-synchronized handlerAppCenterOperation(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "runnable",
            "disabledRunnable"
        }
    .end annotation

    monitor-enter p0

    .line 817
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    new-instance v0, Lcom/microsoft/appcenter/AppCenter$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/appcenter/AppCenter$6;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 838
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    if-ne p2, v1, :cond_0

    .line 839
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 841
    :cond_0
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static isConfigured()Z
    .locals 1

    .line 327
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceConfigured()Z

    move-result v0

    return v0
.end method

.method public static isEnabled()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 458
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized isInstanceConfigured()Z
    .locals 1

    monitor-enter p0

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1097
    :try_start_0
    new-instance v0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    invoke-direct {v0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    .line 1098
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1099
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    new-instance v2, Lcom/microsoft/appcenter/AppCenter$8;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/appcenter/AppCenter$8;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    new-instance v3, Lcom/microsoft/appcenter/AppCenter$9;

    invoke-direct {v3, p0, v0}, Lcom/microsoft/appcenter/AppCenter$9;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    invoke-interface {v1, v2, v3}, Lcom/microsoft/appcenter/AppCenterHandler;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1113
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isInstanceNetworkRequestsAllowed()Z
    .locals 2

    monitor-enter p0

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mAllowedNetworkRequests:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 626
    :goto_0
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->isConfigured()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 627
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string v1, "allowedNetworkRequests"

    .line 629
    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isNetworkRequestsAllowed()Z
    .locals 1

    .line 447
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceNetworkRequestsAllowed()Z

    move-result v0

    return v0
.end method

.method public static isRunningInAppCenterTestCloud()Z
    .locals 2

    .line 338
    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/utils/InstrumentationRegistryHelper;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RUNNING_IN_APP_CENTER"

    .line 339
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 340
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendStartServiceLog()V
    .locals 4

    .line 1063
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1065
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1066
    new-instance v1, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;-><init>()V

    .line 1067
    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->setServices(Ljava/util/List;)V

    .line 1068
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->oneCollectorEnabled(Ljava/lang/Boolean;)V

    .line 1069
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-string v3, "group_core"

    invoke-interface {v0, v1, v3, v2}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static setCountryCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countryCode"
        }
    .end annotation

    .line 308
    invoke-static {p0}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->setCountryCode(Ljava/lang/String;)V

    return-void
.end method

.method public static setEnabled(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 471
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter;->setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object p0

    return-object p0
.end method

.method private setInstanceEnabled(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1133
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/channel/Channel;->setEnabled(Z)V

    .line 1136
    invoke-virtual {p0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 1142
    iget-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    invoke-virtual {v4}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->register()V

    .line 1143
    iget-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->reopen()V

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    .line 1145
    iget-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    invoke-virtual {v4}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->unregister()V

    .line 1146
    iget-object v4, p0, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->close()V

    :cond_3
    :goto_2
    const-string v4, "enabled"

    if-eqz p1, :cond_4

    .line 1151
    invoke-static {v4, v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 1155
    :cond_4
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 1156
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->sendStartServiceLog()V

    .line 1160
    :cond_5
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/AppCenterService;

    .line 1163
    invoke-interface {v5}, Lcom/microsoft/appcenter/AppCenterService;->isInstanceEnabled()Z

    move-result v6

    if-eq v6, p1, :cond_6

    .line 1164
    invoke-interface {v5, p1}, Lcom/microsoft/appcenter/AppCenterService;->setInstanceEnabled(Z)V

    goto :goto_3

    :cond_7
    if-nez p1, :cond_8

    .line 1170
    invoke-static {v4, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    const-string v1, "AppCenter"

    if-eqz v3, :cond_9

    const-string p1, "App Center has been disabled."

    .line 1175
    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    if-eqz v0, :cond_a

    const-string p1, "App Center has been enabled."

    .line 1177
    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1179
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App Center has already been "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    const-string v4, "disabled"

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method private declared-synchronized setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1187
    :try_start_0
    new-instance v0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    invoke-direct {v0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    .line 1188
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/microsoft/appcenter/AppCenter$10;

    invoke-direct {v2, p0, p1, v0}, Lcom/microsoft/appcenter/AppCenter$10;-><init>(Lcom/microsoft/appcenter/AppCenter;ZLcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1198
    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setInstanceLogLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logLevel"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 566
    :try_start_0
    iput-boolean v0, p0, Lcom/microsoft/appcenter/AppCenter;->mLogLevelConfigured:Z

    .line 567
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->setLogLevel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setInstanceLogUrl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logUrl"
        }
    .end annotation

    monitor-enter p0

    .line 576
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 582
    new-instance v1, Lcom/microsoft/appcenter/AppCenter$2;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/AppCenter$2;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setInstanceMaxStorageSizeAsync(J)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storageSizeInBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 639
    :try_start_0
    new-instance v0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    invoke-direct {v0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    .line 640
    iget-boolean v1, p0, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "AppCenter"

    const-string p2, "setMaxStorageSize may not be called after App Center has been configured."

    .line 641
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    monitor-exit p0

    return-object v0

    :cond_0
    const-wide/16 v3, 0x6000

    cmp-long v1, p1, v3

    if-gez v1, :cond_1

    :try_start_1
    const-string p1, "AppCenter"

    const-string p2, "Maximum storage size must be at least 24576 bytes."

    .line 646
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    monitor-exit p0

    return-object v0

    .line 650
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    if-eqz v1, :cond_2

    const-string p1, "AppCenter"

    const-string p2, "setMaxStorageSize may only be called once per app launch."

    .line 651
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 653
    monitor-exit p0

    return-object v0

    .line 655
    :cond_2
    :try_start_3
    iput-wide p1, p0, Lcom/microsoft/appcenter/AppCenter;->mMaxStorageSizeInBytes:J

    .line 656
    iput-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 657
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setInstanceNetworkRequestsAllowed(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isAllowed"
        }
    .end annotation

    monitor-enter p0

    .line 604
    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mAllowedNetworkRequests:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    monitor-exit p0

    return-void

    .line 608
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceNetworkRequestsAllowed()Z

    move-result v0

    if-ne v0, p1, :cond_2

    const-string v0, "AppCenter"

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network requests are already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "allowed"

    goto :goto_0

    :cond_1
    const-string p1, "forbidden"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string v0, "allowedNetworkRequests"

    .line 612
    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 613
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    if-eqz v0, :cond_3

    .line 614
    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/channel/Channel;->setNetworkRequests(Z)V

    :cond_3
    const-string v0, "AppCenter"

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set network requests "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    const-string p1, "allowed"

    goto :goto_1

    :cond_4
    const-string p1, "forbidden"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 617
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setInstanceUserId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    monitor-enter p0

    .line 506
    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    if-nez v0, :cond_0

    const-string p1, "AppCenter"

    const-string v0, "AppCenter must be configured from application, libraries cannot use call setUserId."

    .line 507
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    monitor-exit p0

    return-void

    .line 510
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string p1, "AppCenter"

    const-string v0, "AppCenter must be configured with a secret from application to call setUserId."

    .line 511
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 515
    :try_start_2
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->checkUserIdValidForAppCenter(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 516
    monitor-exit p0

    return-void

    .line 518
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->checkUserIdValidForOneCollector(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 519
    monitor-exit p0

    return-void

    .line 522
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getInstance()Lcom/microsoft/appcenter/utils/context/UserIdContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->setUserId(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setInstanceWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapperSdk"
        }
    .end annotation

    monitor-enter p0

    .line 544
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->setWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V

    .line 547
    iget-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 550
    new-instance v0, Lcom/microsoft/appcenter/AppCenter$1;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter$1;-><init>(Lcom/microsoft/appcenter/AppCenter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static setLogLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logLevel"
        }
    .end annotation

    .line 290
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter;->setInstanceLogLevel(I)V

    return-void
.end method

.method public static setLogUrl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logUrl"
        }
    .end annotation

    .line 299
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter;->setInstanceLogUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static setLogger(Ljava/util/logging/Logger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logger"
        }
    .end annotation

    .line 426
    invoke-static {p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->setLogger(Ljava/util/logging/Logger;)V

    return-void
.end method

.method public static setMaxStorageSize(J)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storageSizeInBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 499
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/AppCenter;->setInstanceMaxStorageSizeAsync(J)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object p0

    return-object p0
.end method

.method public static setNetworkRequestsAllowed(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAllowed"
        }
    .end annotation

    .line 437
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter;->setInstanceNetworkRequestsAllowed(Z)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1239
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter;->setInstanceUserId(Ljava/lang/String;)V

    return-void
.end method

.method public static setWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapperSdk"
        }
    .end annotation

    .line 264
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/AppCenter;->setInstanceWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V

    return-void
.end method

.method public static varargs start(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "application",
            "appSecret",
            "services"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 388
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method

.method public static varargs start(Landroid/app/Application;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "application",
            "services"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 400
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V

    return-void
.end method

.method public static varargs start([Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "services"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 375
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/microsoft/appcenter/AppCenter;->startServices(Z[Ljava/lang/Class;)V

    return-void
.end method

.method public static varargs startFromLibrary(Landroid/content/Context;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "services"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 417
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/AppCenter;->startInstanceFromLibrary(Landroid/content/Context;[Ljava/lang/Class;)V

    return-void
.end method

.method private declared-synchronized startInstanceFromLibrary(Landroid/content/Context;[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "services"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1082
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    .line 1083
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private startOrUpdateService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "serviceInstance",
            "startedServices",
            "updatedServices",
            "startFromApp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 964
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/AppCenter;->startOrUpdateServiceFromApp(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    .line 965
    :cond_0
    iget-object p3, p0, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 966
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/AppCenter;->startServiceFromLibrary(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startOrUpdateServiceFromApp(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "serviceInstance",
            "startedServices",
            "updatedServices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .line 971
    invoke-interface {p1}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 972
    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "AppCenter"

    if-eqz v1, :cond_1

    .line 973
    iget-object p2, p0, Lcom/microsoft/appcenter/AppCenter;->mServicesStartedFromLibrary:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 974
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 976
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "App Center has already started the service with class name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 978
    :cond_1
    iget-object p3, p0, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-nez p3, :cond_2

    invoke-interface {p1}, Lcom/microsoft/appcenter/AppCenterService;->isAppSecretRequired()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 979
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "App Center was started without app secret, but the service requires it; not starting service "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 981
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/AppCenter;->startService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method private startService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serviceInstance",
            "startedServices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)Z"
        }
    .end annotation

    .line 1000
    invoke-interface {p1}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 1001
    invoke-static {v0}, Lcom/microsoft/appcenter/ServiceInstrumentationUtils;->isServiceDisabledByInstrumentation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Instrumentation variable to disable service has been set; not starting service "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppCenter"

    invoke-static {p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    invoke-interface {p1, v0}, Lcom/microsoft/appcenter/AppCenterService;->onStarting(Lcom/microsoft/appcenter/AppCenterHandler;)V

    .line 1006
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mApplicationLifecycleListener:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->registerApplicationLifecycleCallbacks(Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;)V

    .line 1007
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1008
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1009
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private startServiceFromLibrary(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serviceInstance",
            "startedServices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .line 991
    invoke-interface {p1}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 992
    invoke-interface {p1}, Lcom/microsoft/appcenter/AppCenterService;->isAppSecretRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This service cannot be started from a library: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppCenter"

    invoke-static {p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 994
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/AppCenter;->startService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 995
    iget-object p2, p0, Lcom/microsoft/appcenter/AppCenter;->mServicesStartedFromLibrary:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private final varargs declared-synchronized startServices(Z[Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "startFromApp",
            "services"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string p1, "AppCenter"

    const-string p2, "Cannot start services, services array is null. Failed to start services."

    .line 924
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    monitor-exit p0

    return-void

    .line 927
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 928
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 929
    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    const-string v3, "\t"

    .line 930
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "AppCenter"

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot start services, App Center has not been configured. Failed to start the following services:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    monitor-exit p0

    return-void

    .line 937
    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 938
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 939
    array-length v3, p2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, p2, v4

    if-nez v5, :cond_3

    const-string v5, "AppCenter"

    const-string v6, "Skipping null service, please check your varargs/array does not contain any null reference."

    .line 941
    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_3
    const-string v6, "getInstance"

    new-array v7, v1, [Ljava/lang/Class;

    .line 944
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/appcenter/AppCenterService;

    .line 945
    invoke-direct {p0, v6, v0, v2, p1}, Lcom/microsoft/appcenter/AppCenter;->startOrUpdateService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_4
    const-string v7, "AppCenter"

    .line 947
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get service instance \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', skipping it."

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 953
    :cond_4
    iget-object p2, p0, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/appcenter/AppCenter$7;

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/microsoft/appcenter/AppCenter$7;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Collection;Ljava/util/Collection;Z)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 960
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static declared-synchronized unsetInstance()V
    .locals 2

    const-class v0, Lcom/microsoft/appcenter/AppCenter;

    monitor-enter v0

    const/4 v1, 0x0

    .line 253
    :try_start_0
    sput-object v1, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;

    .line 254
    invoke-static {}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->unsetInstance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method getAppCenterHandler()Lcom/microsoft/appcenter/AppCenterHandler;
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    return-object v0
.end method

.method getApplication()Landroid/app/Application;
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method getServices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;"
        }
    .end annotation

    .line 1244
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    return-object v0
.end method

.method getUncaughtExceptionHandler()Lcom/microsoft/appcenter/UncaughtExceptionHandler;
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    return-object v0
.end method

.method isInstanceEnabled()Z
    .locals 2

    const-string v0, "enabled"

    const/4 v1, 0x1

    .line 1123
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method resetApplication()V
    .locals 1

    const/4 v0, 0x0

    .line 1254
    iput-object v0, p0, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    return-void
.end method

.method public setChannel(Lcom/microsoft/appcenter/channel/Channel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 1269
    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    return-void
.end method
