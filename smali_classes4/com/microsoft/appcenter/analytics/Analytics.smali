.class public Lcom/microsoft/appcenter/analytics/Analytics;
.super Lcom/microsoft/appcenter/AbstractAppCenterService;
.source "Analytics.java"


# static fields
.field private static final ACTIVITY_SUFFIX:Ljava/lang/String; = "Activity"

.field static final ANALYTICS_CRITICAL_GROUP:Ljava/lang/String; = "group_analytics_critical"

.field static final ANALYTICS_GROUP:Ljava/lang/String; = "group_analytics"

.field public static final LOG_TAG:Ljava/lang/String; = "AppCenterAnalytics"

.field static final MAXIMUM_TRANSMISSION_INTERVAL_IN_SECONDS:I = 0x15180

.field static final MINIMUM_TRANSMISSION_INTERVAL_IN_SECONDS:I = 0x6

.field private static final SERVICE_NAME:Ljava/lang/String; = "Analytics"

.field private static sInstance:Lcom/microsoft/appcenter/analytics/Analytics;


# instance fields
.field private isManualSessionTrackerEnabled:Z

.field private mAnalyticsListener:Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

.field private mAnalyticsTransmissionTargetListener:Lcom/microsoft/appcenter/channel/Channel$Listener;

.field private mAnalyticsValidator:Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

.field private mAutoPageTrackingEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

.field private final mFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

.field private mStartedFromApp:Z

.field private mTransmissionInterval:J

.field private final mTransmissionTargets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 167
    invoke-direct {p0}, Lcom/microsoft/appcenter/AbstractAppCenterService;-><init>()V

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAutoPageTrackingEnabled:Z

    .line 162
    iput-boolean v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->isManualSessionTrackerEnabled:Z

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mFactories:Ljava/util/Map;

    .line 169
    new-instance v1, Lcom/microsoft/appcenter/analytics/ingestion/models/json/StartSessionLogFactory;

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/ingestion/models/json/StartSessionLogFactory;-><init>()V

    const-string v2, "startSession"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v1, Lcom/microsoft/appcenter/analytics/ingestion/models/json/PageLogFactory;

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/ingestion/models/json/PageLogFactory;-><init>()V

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v1, Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;-><init>()V

    const-string v2, "event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v1, Lcom/microsoft/appcenter/analytics/ingestion/models/one/json/CommonSchemaEventLogFactory;

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/ingestion/models/one/json/CommonSchemaEventLogFactory;-><init>()V

    const-string v2, "commonSchemaEvent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mTransmissionTargets:Ljava/util/Map;

    .line 174
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mTransmissionInterval:J

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/analytics/Analytics;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    return-object p0
.end method

.method static synthetic access$202(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/analytics/Analytics;Landroid/app/Activity;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/analytics/Analytics;->processOnResume(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/SessionTracker;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsListener:Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/microsoft/appcenter/analytics/Analytics;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mStartedFromApp:Z

    return p0
.end method

.method static synthetic access$700(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/analytics/Analytics;->queuePage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$800(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    return-object p0
.end method

.method static synthetic access$900(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    return-object p0
.end method

.method private static convertProperties(Lcom/microsoft/appcenter/analytics/EventProperties;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/analytics/EventProperties;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 506
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/microsoft/appcenter/analytics/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static convertProperties(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 519
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 520
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 521
    new-instance v2, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    invoke-direct {v2}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;-><init>()V

    .line 522
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->setName(Ljava/lang/String;)V

    .line 523
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->setValue(Ljava/lang/String;)V

    .line 524
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private createAnalyticsTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transmissionTargetToken"
        }
    .end annotation

    .line 587
    new-instance v0, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;-><init>(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created transmission target with token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppCenterAnalytics"

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance p1, Lcom/microsoft/appcenter/analytics/Analytics$1;

    invoke-direct {p1, p0, v0}, Lcom/microsoft/appcenter/analytics/Analytics$1;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static enableManualSessionTracker()V
    .locals 1

    .line 370
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->enableManualSessionTrackerAsync()V

    return-void
.end method

.method private declared-synchronized enableManualSessionTrackerAsync()V
    .locals 2

    monitor-enter p0

    .line 823
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/analytics/Analytics;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppCenter"

    const-string v1, "The manual session tracker state should be set before the App Center start."

    .line 824
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 827
    :try_start_1
    iput-boolean v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->isManualSessionTrackerEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static generatePageName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 546
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Activity"

    .line 548
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 549
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/appcenter/analytics/Analytics;
    .locals 2

    const-class v0, Lcom/microsoft/appcenter/analytics/Analytics;

    monitor-enter v0

    .line 184
    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/analytics/Analytics;->sInstance:Lcom/microsoft/appcenter/analytics/Analytics;

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/Analytics;-><init>()V

    sput-object v1, Lcom/microsoft/appcenter/analytics/Analytics;->sInstance:Lcom/microsoft/appcenter/analytics/Analytics;

    .line 187
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/analytics/Analytics;->sInstance:Lcom/microsoft/appcenter/analytics/Analytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getInstanceTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transmissionTargetToken"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 562
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->isConfigured()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "AppCenterAnalytics"

    const-string v1, "Cannot create transmission target, AppCenter is not configured or started."

    .line 566
    invoke-static {p1, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    monitor-exit p0

    return-object v0

    .line 569
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mTransmissionTargets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    if-eqz v0, :cond_2

    const-string v1, "AppCenterAnalytics"

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning transmission target found with token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    monitor-exit p0

    return-object v0

    .line 574
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/analytics/Analytics;->createAnalyticsTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mTransmissionTargets:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    monitor-exit p0

    return-object v0

    :cond_3
    :goto_0
    :try_start_3
    const-string p1, "AppCenterAnalytics"

    const-string v1, "Transmission target token may not be null or empty."

    .line 563
    invoke-static {p1, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 564
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transmissionTargetToken"
        }
    .end annotation

    .line 536
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstanceTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-result-object p0

    return-object p0
.end method

.method protected static isAutoPageTrackingEnabled()Z
    .locals 1

    .line 272
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->isInstanceAutoPageTrackingEnabled()Z

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

    .line 202
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method private isInstanceAutoPageTrackingEnabled()Z
    .locals 1

    .line 887
    iget-boolean v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAutoPageTrackingEnabled:Z

    return v0
.end method

.method public static pause()V
    .locals 1

    .line 238
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->pauseInstanceAsync()V

    return-void
.end method

.method private declared-synchronized pauseInstanceAsync()V
    .locals 1

    monitor-enter p0

    .line 908
    :try_start_0
    new-instance v0, Lcom/microsoft/appcenter/analytics/Analytics$9;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/analytics/Analytics$9;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processOnResume(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0}, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->onActivityResumed()V

    .line 658
    iget-boolean v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAutoPageTrackingEnabled:Z

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/appcenter/analytics/Analytics;->generatePageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/appcenter/analytics/Analytics;->queuePage(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private queuePage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 813
    new-instance v0, Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;

    invoke-direct {v0}, Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;-><init>()V

    .line 814
    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;->setName(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0, p2}, Lcom/microsoft/appcenter/analytics/ingestion/models/PageLog;->setProperties(Ljava/util/Map;)V

    .line 816
    iget-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-string p2, "group_analytics"

    const/4 v1, 0x1

    invoke-interface {p1, v0, p2, v1}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    return-void
.end method

.method public static resume()V
    .locals 1

    .line 246
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->resumeInstanceAsync()V

    return-void
.end method

.method private declared-synchronized resumeInstanceAsync()V
    .locals 1

    monitor-enter p0

    .line 922
    :try_start_0
    new-instance v0, Lcom/microsoft/appcenter/analytics/Analytics$10;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/analytics/Analytics$10;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static setAutoPageTrackingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoPageTrackingEnabled"
        }
    .end annotation

    .line 286
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/analytics/Analytics;->setInstanceAutoPageTrackingEnabled(Z)V

    return-void
.end method

.method private setDefaultTransmissionTarget(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transmissionTargetToken"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 958
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/analytics/Analytics;->createAnalyticsTransmissionTarget(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mDefaultTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    :cond_0
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

    .line 214
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/analytics/Analytics;->setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized setInstanceAutoPageTrackingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoPageTrackingEnabled"
        }
    .end annotation

    monitor-enter p0

    .line 894
    :try_start_0
    iput-boolean p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAutoPageTrackingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setInstanceListener(Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    monitor-enter p0

    .line 901
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsListener:Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setInstanceTransmissionInterval(I)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seconds"
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Lcom/microsoft/appcenter/analytics/Analytics;->isStarted()Z

    move-result v0

    const-string v1, "AppCenterAnalytics"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Transmission interval should be set before the service is started."

    .line 971
    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const v0, 0x15180

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-lt p1, v4, :cond_2

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 982
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mTransmissionInterval:J

    return v3

    .line 975
    :cond_2
    :goto_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 977
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    .line 978
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v6, 0x15180

    .line 979
    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v0

    const-string v0, "The transmission interval is invalid. The value should be between %d seconds and %d seconds (%d day)."

    .line 975
    invoke-static {p1, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method protected static setListener(Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 259
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/analytics/Analytics;->setInstanceListener(Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;)V

    return-void
.end method

.method public static setTransmissionInterval(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seconds"
        }
    .end annotation

    .line 225
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/analytics/Analytics;->setInstanceTransmissionInterval(I)Z

    move-result p0

    return p0
.end method

.method private startAppLevelFeatures()V
    .locals 3

    .line 756
    iget-boolean v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mStartedFromApp:Z

    if-eqz v0, :cond_2

    .line 759
    new-instance v0, Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

    invoke-direct {v0}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsValidator:Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

    .line 760
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsValidator:Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/channel/Channel;->addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 763
    new-instance v0, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-string v2, "group_analytics"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;-><init>(Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    .line 764
    iget-boolean v1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->isManualSessionTrackerEnabled:Z

    if-eqz v1, :cond_0

    .line 765
    invoke-virtual {v0}, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->enableManualSessionTracker()V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/channel/Channel;->addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 770
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 771
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 773
    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/analytics/Analytics;->processOnResume(Landroid/app/Activity;)V

    .line 778
    :cond_1
    invoke-static {}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getChannelListener()Lcom/microsoft/appcenter/channel/Channel$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsTransmissionTargetListener:Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 779
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsTransmissionTargetListener:Lcom/microsoft/appcenter/channel/Channel$Listener;

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/channel/Channel;->addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    :cond_2
    return-void
.end method

.method public static startSession()V
    .locals 1

    .line 377
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->startSessionAsync()V

    return-void
.end method

.method private declared-synchronized startSessionAsync()V
    .locals 2

    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    if-nez v0, :cond_0

    const-string v0, "AppCenter"

    const-string v1, "Start session should be called after the Analytics start."

    .line 835
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    monitor-exit p0

    return-void

    .line 838
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->startSession()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 839
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 332
    invoke-static {p0, v0, v0, v1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "properties"
        }
    .end annotation

    const/4 v0, 0x1

    .line 446
    invoke-static {p0, p1, v0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;I)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "properties",
            "flags"
        }
    .end annotation

    const/4 v0, 0x0

    .line 484
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V

    return-void
.end method

.method static trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "properties",
            "transmissionTarget",
            "flags"
        }
    .end annotation

    .line 491
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-static {p1}, Lcom/microsoft/appcenter/analytics/Analytics;->convertProperties(Lcom/microsoft/appcenter/analytics/EventProperties;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEventAsync(Ljava/lang/String;Ljava/util/List;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 363
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-static {p1}, Lcom/microsoft/appcenter/analytics/Analytics;->convertProperties(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEventAsync(Ljava/lang/String;Ljava/util/List;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "properties",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 413
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-static {p1}, Lcom/microsoft/appcenter/analytics/Analytics;->convertProperties(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEventAsync(Ljava/lang/String;Ljava/util/List;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V

    return-void
.end method

.method private declared-synchronized trackEventAsync(Ljava/lang/String;Ljava/util/List;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "properties",
            "transmissionTarget",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;",
            "Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;",
            "I)V"
        }
    .end annotation

    monitor-enter p0

    .line 850
    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getInstance()Lcom/microsoft/appcenter/utils/context/UserIdContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 851
    new-instance v0, Lcom/microsoft/appcenter/analytics/Analytics$8;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/appcenter/analytics/Analytics$8;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected static trackPage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x0

    .line 298
    invoke-static {p0, v0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackPage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected static trackPage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 316
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackPageAsync(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private declared-synchronized trackPageAsync(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 792
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 793
    :goto_0
    new-instance p2, Lcom/microsoft/appcenter/analytics/Analytics$7;

    invoke-direct {p2, p0, p1, v0}, Lcom/microsoft/appcenter/analytics/Analytics$7;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p2}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method static declared-synchronized unsetInstance()V
    .locals 2

    const-class v0, Lcom/microsoft/appcenter/analytics/Analytics;

    monitor-enter v0

    const/4 v1, 0x0

    .line 192
    :try_start_0
    sput-object v1, Lcom/microsoft/appcenter/analytics/Analytics;->sInstance:Lcom/microsoft/appcenter/analytics/Analytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected declared-synchronized applyEnabledState(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-string v1, "group_analytics_critical"

    invoke-virtual {p0}, Lcom/microsoft/appcenter/analytics/Analytics;->getTriggerCount()I

    move-result v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0}, Lcom/microsoft/appcenter/analytics/Analytics;->getTriggerMaxParallelRequests()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/microsoft/appcenter/analytics/Analytics;->getChannelListener()Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/microsoft/appcenter/channel/Channel;->addGroup(Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V

    .line 725
    invoke-direct {p0}, Lcom/microsoft/appcenter/analytics/Analytics;->startAppLevelFeatures()V

    goto :goto_0

    .line 730
    :cond_0
    iget-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-string v0, "group_analytics_critical"

    invoke-interface {p1, v0}, Lcom/microsoft/appcenter/channel/Channel;->removeGroup(Ljava/lang/String;)V

    .line 733
    iget-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsValidator:Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 734
    iget-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsValidator:Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

    invoke-interface {p1, v1}, Lcom/microsoft/appcenter/channel/Channel;->removeListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 735
    iput-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsValidator:Lcom/microsoft/appcenter/analytics/channel/AnalyticsValidator;

    .line 737
    :cond_1
    iget-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    if-eqz p1, :cond_2

    .line 738
    iget-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    invoke-interface {p1, v1}, Lcom/microsoft/appcenter/channel/Channel;->removeListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 739
    iget-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/analytics/channel/SessionTracker;->clearSessions()V

    .line 740
    iput-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mSessionTracker:Lcom/microsoft/appcenter/analytics/channel/SessionTracker;

    .line 742
    :cond_2
    iget-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsTransmissionTargetListener:Lcom/microsoft/appcenter/channel/Channel$Listener;

    if-eqz p1, :cond_3

    .line 743
    iget-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsTransmissionTargetListener:Lcom/microsoft/appcenter/channel/Channel$Listener;

    invoke-interface {p1, v1}, Lcom/microsoft/appcenter/channel/Channel;->removeListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 744
    iput-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mAnalyticsTransmissionTargetListener:Lcom/microsoft/appcenter/channel/Channel$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getChannelListener()Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    .locals 1

    .line 687
    new-instance v0, Lcom/microsoft/appcenter/analytics/Analytics$6;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/analytics/Analytics$6;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;)V

    return-object v0
.end method

.method getCurrentActivity()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 934
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method getEnabledPreferenceKeyPrefix()Ljava/lang/String;
    .locals 2

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/appcenter/analytics/Analytics;->getEnabledPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGroupName()Ljava/lang/String;
    .locals 1

    const-string v0, "group_analytics"

    return-object v0
.end method

.method public getLogFactories()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;",
            ">;"
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mFactories:Ljava/util/Map;

    return-object v0
.end method

.method protected getLoggerTag()Ljava/lang/String;
    .locals 1

    const-string v0, "AppCenterAnalytics"

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "Analytics"

    return-object v0
.end method

.method protected getTriggerInterval()J
    .locals 2

    .line 645
    iget-wide v0, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mTransmissionInterval:J

    return-wide v0
.end method

.method public isAppSecretRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    monitor-enter p0

    .line 666
    :try_start_0
    new-instance p1, Lcom/microsoft/appcenter/analytics/Analytics$4;

    invoke-direct {p1, p0}, Lcom/microsoft/appcenter/analytics/Analytics$4;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;)V

    .line 673
    new-instance v0, Lcom/microsoft/appcenter/analytics/Analytics$5;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/analytics/Analytics$5;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p1, p1}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    monitor-enter p0

    .line 626
    :try_start_0
    new-instance v0, Lcom/microsoft/appcenter/analytics/Analytics$2;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/analytics/Analytics$2;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;Landroid/app/Activity;)V

    .line 633
    new-instance v1, Lcom/microsoft/appcenter/analytics/Analytics$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/microsoft/appcenter/analytics/Analytics$3;-><init>(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/Runnable;Landroid/app/Activity;)V

    invoke-virtual {p0, v1, v0, v0}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onConfigurationUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appSecret",
            "transmissionTargetToken"
        }
    .end annotation

    const/4 p1, 0x1

    .line 947
    iput-boolean p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mStartedFromApp:Z

    .line 948
    invoke-direct {p0}, Lcom/microsoft/appcenter/analytics/Analytics;->startAppLevelFeatures()V

    .line 949
    invoke-direct {p0, p2}, Lcom/microsoft/appcenter/analytics/Analytics;->setDefaultTransmissionTarget(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channel",
            "appSecret",
            "transmissionTargetToken",
            "startedFromApp"
        }
    .end annotation

    monitor-enter p0

    .line 939
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mContext:Landroid/content/Context;

    .line 940
    iput-boolean p5, p0, Lcom/microsoft/appcenter/analytics/Analytics;->mStartedFromApp:Z

    .line 941
    invoke-super/range {p0 .. p5}, Lcom/microsoft/appcenter/AbstractAppCenterService;->onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 942
    invoke-direct {p0, p4}, Lcom/microsoft/appcenter/analytics/Analytics;->setDefaultTransmissionTarget(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized post(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    monitor-enter p0

    .line 1008
    :try_start_0
    invoke-super {p0, p1}, Lcom/microsoft/appcenter/AbstractAppCenterService;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method postCommand(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "runnable",
            "future",
            "valueIfDisabledOrNotStarted"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1000
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/appcenter/analytics/Analytics;->postAsyncGetter(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V

    return-void
.end method

.method postCommandEvenIfDisabled(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 1017
    invoke-virtual {p0, p1, p1, p1}, Lcom/microsoft/appcenter/analytics/Analytics;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    return-void
.end method
