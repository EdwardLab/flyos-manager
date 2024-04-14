.class public Lcom/onesignal/OneSignal;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignal$PromptActionResult;,
        Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;,
        Lcom/onesignal/OneSignal$OutcomeCallback;,
        Lcom/onesignal/OneSignal$PendingTaskRunnable;,
        Lcom/onesignal/OneSignal$IAPUpdateJob;,
        Lcom/onesignal/OneSignal$Builder;,
        Lcom/onesignal/OneSignal$PostNotificationResponseHandler;,
        Lcom/onesignal/OneSignal$EmailUpdateHandler;,
        Lcom/onesignal/OneSignal$EmailUpdateError;,
        Lcom/onesignal/OneSignal$EmailErrorType;,
        Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;,
        Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;,
        Lcom/onesignal/OneSignal$SendTagsError;,
        Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;,
        Lcom/onesignal/OneSignal$GetTagsHandler;,
        Lcom/onesignal/OneSignal$IdsAvailableHandler;,
        Lcom/onesignal/OneSignal$NotificationReceivedHandler;,
        Lcom/onesignal/OneSignal$InAppMessageClickHandler;,
        Lcom/onesignal/OneSignal$NotificationOpenedHandler;,
        Lcom/onesignal/OneSignal$AppEntryAction;,
        Lcom/onesignal/OneSignal$OSInFocusDisplayOption;,
        Lcom/onesignal/OneSignal$LOG_LEVEL;
    }
.end annotation


# static fields
.field static final MIN_ON_SESSION_TIME_MILLIS:J = 0x7530L

.field public static final VERSION:Ljava/lang/String; = "031507"

.field private static adIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

.field private static apiClient:Lcom/onesignal/OneSignalAPIClient;

.field static appContext:Landroid/content/Context;

.field private static appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

.field static appId:Ljava/lang/String;

.field private static currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

.field private static currentPermissionState:Lcom/onesignal/OSPermissionState;

.field private static currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

.field static delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

.field private static emailId:Ljava/lang/String;

.field private static emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

.field private static emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSEmailSubscriptionObserver;",
            "Lcom/onesignal/OSEmailSubscriptionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

.field private static foreground:Z

.field private static getTagsCall:Z

.field private static iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

.field private static idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

.field private static inAppMessageControllerFactory:Lcom/onesignal/OSInAppMessageControllerFactory;

.field private static inForeground:Z

.field private static initDone:Z

.field static lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

.field private static lastLocationPoint:Lcom/onesignal/LocationController$LocationPoint;

.field static lastPermissionState:Lcom/onesignal/OSPermissionState;

.field private static lastRegistrationId:Ljava/lang/String;

.field static lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

.field static lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static locationFired:Z

.field private static logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

.field private static logger:Lcom/onesignal/OSLogger;

.field private static mGoogleProjectNumber:Ljava/lang/String;

.field static mInitBuilder:Lcom/onesignal/OneSignal$Builder;

.field private static mPushRegistrator:Lcom/onesignal/PushRegistrator;

.field private static osUtils:Lcom/onesignal/OSUtils;

.field private static outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

.field private static outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

.field private static pendingGetTagsHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OneSignal$GetTagsHandler;",
            ">;"
        }
    .end annotation
.end field

.field static pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field private static permissionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSPermissionObserver;",
            "Lcom/onesignal/OSPermissionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static postedOpenedNotifIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static preferences:Lcom/onesignal/OSSharedPreferences;

.field private static promptedLocation:Z

.field private static registerForPushFired:Z

.field static remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

.field static requiresUserPrivacyConsent:Z

.field public static sdkType:Ljava/lang/String;

.field private static sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

.field private static sessionManager:Lcom/onesignal/OSSessionManager;

.field static shareLocation:Z

.field private static subscribableStatus:I

.field private static subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSSubscriptionObserver;",
            "Lcom/onesignal/OSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field public static taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

.field private static trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

.field private static trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

.field private static trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

.field private static unprocessedOpenedNotifis:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private static userDevice:Lcom/onesignal/OSDevice;

.field private static userId:Ljava/lang/String;

.field private static visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

.field private static waitingToPostStateSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 413
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 414
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const/4 v0, 0x0

    .line 416
    sput-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    sput-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 432
    sget-object v1, Lcom/onesignal/OneSignal$AppEntryAction;->APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v1, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 439
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 440
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 450
    new-instance v1, Lcom/onesignal/OneSignal$1;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$1;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    .line 461
    new-instance v1, Lcom/onesignal/OSInAppMessageControllerFactory;

    invoke-direct {v1}, Lcom/onesignal/OSInAppMessageControllerFactory;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->inAppMessageControllerFactory:Lcom/onesignal/OSInAppMessageControllerFactory;

    .line 465
    new-instance v1, Lcom/onesignal/OSLogWrapper;

    invoke-direct {v1}, Lcom/onesignal/OSLogWrapper;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    .line 466
    new-instance v1, Lcom/onesignal/OneSignalRestClientWrapper;

    invoke-direct {v1}, Lcom/onesignal/OneSignalRestClientWrapper;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->apiClient:Lcom/onesignal/OneSignalAPIClient;

    .line 467
    new-instance v1, Lcom/onesignal/OSSharedPreferencesWrapper;

    invoke-direct {v1}, Lcom/onesignal/OSSharedPreferencesWrapper;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 468
    new-instance v2, Lcom/onesignal/influence/OSTrackerFactory;

    sget-object v3, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-direct {v2, v1, v3}, Lcom/onesignal/influence/OSTrackerFactory;-><init>(Lcom/onesignal/OSSharedPreferences;Lcom/onesignal/OSLogger;)V

    sput-object v2, Lcom/onesignal/OneSignal;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    .line 469
    new-instance v1, Lcom/onesignal/OSSessionManager;

    sget-object v3, Lcom/onesignal/OneSignal;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    sget-object v4, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-direct {v1, v3, v2, v4}, Lcom/onesignal/OSSessionManager;-><init>(Lcom/onesignal/OSSessionManager$SessionListener;Lcom/onesignal/influence/OSTrackerFactory;Lcom/onesignal/OSLogger;)V

    sput-object v1, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    const-string v1, "native"

    .line 484
    sput-object v1, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    .line 486
    new-instance v1, Lcom/onesignal/OSUtils;

    invoke-direct {v1}, Lcom/onesignal/OSUtils;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    const/4 v1, 0x1

    .line 493
    sput-boolean v1, Lcom/onesignal/OneSignal;->shareLocation:Z

    .line 494
    new-instance v1, Lcom/onesignal/OneSignal$Builder;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$Builder;-><init>(Lcom/onesignal/OneSignal$1;)V

    sput-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    .line 497
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 504
    sput-boolean v0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1214
    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1221
    sget-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "OneSignal"

    if-ge v0, v1, :cond_5

    .line 1222
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_0

    .line 1223
    invoke-static {v2, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1224
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_1

    .line 1225
    invoke-static {v2, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1226
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_2

    .line 1227
    invoke-static {v2, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1228
    :cond_2
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_3

    .line 1229
    invoke-static {v2, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1230
    :cond_3
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_5

    .line 1231
    :cond_4
    invoke-static {v2, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1234
    :cond_5
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ge v0, v1, :cond_7

    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1236
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_6

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1239
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1240
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1241
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1242
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1246
    :cond_6
    new-instance p2, Lcom/onesignal/OneSignal$6;

    invoke-direct {p2, p0, p1}, Lcom/onesignal/OneSignal$6;-><init>(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string p1, "Error showing logging message."

    .line 1258
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OneSignal$Builder;)V
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/onesignal/OneSignal;->init(Lcom/onesignal/OneSignal$Builder;)V

    return-void
.end method

.method static synthetic access$100()Lcom/onesignal/OSOutcomeEventsController;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    return-object v0
.end method

.method static synthetic access$1000(I)Z
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/onesignal/OneSignal;->pushStatusRuntimeError(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 86
    sput-object p0, Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    .line 86
    sput-boolean p0, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    return p0
.end method

.method static synthetic access$1300(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 86
    sput-object p0, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/onesignal/OSSharedPreferences;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/onesignal/OSLogger;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/onesignal/influence/OSTrackerFactory;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    return-object v0
.end method

.method static synthetic access$1800()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->registerForPushToken()V

    return-void
.end method

.method static synthetic access$1900()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->registerUserTask()V

    return-void
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200()Ljava/util/ArrayList;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->runGetTags()V

    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/onesignal/OneSignal;->getTagsCall:Z

    return v0
.end method

.method static synthetic access$2402(Z)Z
    .locals 0

    .line 86
    sput-boolean p0, Lcom/onesignal/OneSignal;->getTagsCall:Z

    return p0
.end method

.method static synthetic access$2500()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->internalFireIdsAvailableCallback()V

    return-void
.end method

.method static synthetic access$2602(Z)Z
    .locals 0

    .line 86
    sput-boolean p0, Lcom/onesignal/OneSignal;->promptedLocation:Z

    return p0
.end method

.method static synthetic access$400(J)V
    .locals 0

    .line 86
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->onTaskRan(J)V

    return-void
.end method

.method static synthetic access$602(Lcom/onesignal/LocationController$LocationPoint;)Lcom/onesignal/LocationController$LocationPoint;
    .locals 0

    .line 86
    sput-object p0, Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationController$LocationPoint;

    return-object p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 86
    sput-boolean p0, Lcom/onesignal/OneSignal;->locationFired:Z

    return p0
.end method

.method static synthetic access$800()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->registerUser()V

    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    .line 86
    sget v0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0

    .line 86
    sput p0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    return p0
.end method

.method public static addEmailSubscriptionObserver(Lcom/onesignal/OSEmailSubscriptionObserver;)V
    .locals 1

    .line 2921
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2922
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "OneSignal.init has not been called. Could not add email subscription observer"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 2926
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 2928
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object p0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getLastEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSEmailSubscriptionState;->compare(Lcom/onesignal/OSEmailSubscriptionState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2929
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSEmailSubscriptionState;)V

    :cond_1
    return-void
.end method

.method static addNetType(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "net_type"

    .line 1344
    sget-object v1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v1}, Lcom/onesignal/OSUtils;->getNetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static addPermissionObserver(Lcom/onesignal/OSPermissionObserver;)V
    .locals 1

    .line 2850
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2851
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "OneSignal.init has not been called. Could not add permission observer"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 2855
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 2857
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object p0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getLastPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSPermissionState;->compare(Lcom/onesignal/OSPermissionState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2858
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OSPermissionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSPermissionState;)V

    :cond_1
    return-void
.end method

.method public static addSubscriptionObserver(Lcom/onesignal/OSSubscriptionObserver;)V
    .locals 1

    .line 2887
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2888
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "OneSignal.init has not been called. Could not add subscription observer"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 2892
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 2894
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object p0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getLastSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSSubscriptionState;->compare(Lcom/onesignal/OSSubscriptionState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2895
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSSubscriptionState;)V

    :cond_1
    return-void
.end method

.method private static addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V
    .locals 5

    .line 933
    sget-object v0, Lcom/onesignal/OneSignal;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$502(Lcom/onesignal/OneSignal$PendingTaskRunnable;J)J

    .line 935
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 936
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding a task to the pending queue with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$500(Lcom/onesignal/OneSignal$PendingTaskRunnable;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 938
    sget-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 940
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 941
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executor is still running, add to the executor with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$500(Lcom/onesignal/OneSignal$PendingTaskRunnable;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 944
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 946
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executor is shutdown, running task manually with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$500(Lcom/onesignal/OneSignal$PendingTaskRunnable;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->run()V

    .line 952
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static addTrigger(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2997
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2998
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSInAppMessageController;->addTriggers(Ljava/util/Map;)V

    return-void
.end method

.method public static addTriggers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2977
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSInAppMessageController;->addTriggers(Ljava/util/Map;)V

    return-void
.end method

.method public static addTriggersFromJsonString(Ljava/lang/String;)V
    .locals 2

    .line 2986
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2987
    invoke-static {v0}, Lcom/onesignal/JSONUtils;->jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->addTriggers(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2989
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "addTriggersFromJsonString, invalid json"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static areNotificationsEnabledForSubscribedState()Z
    .locals 1

    .line 3101
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v0, v0, Lcom/onesignal/OneSignal$Builder;->mUnsubscribeWhenNotificationsAreDisabled:Z

    if-eqz v0, :cond_0

    .line 3102
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z
    .locals 2

    .line 1210
    sget-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static cancelGroupedNotifications(Ljava/lang/String;)V
    .locals 4

    const-string v0, "cancelGroupedNotifications()"

    .line 2766
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2769
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$24;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$24;-><init>(Ljava/lang/String;)V

    .line 2810
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2818
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2811
    :cond_2
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal.init has not been called. Could not clear notifications part of group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - movingthis operation to a waiting task queue."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2814
    new-instance p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {p0, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    return-void
.end method

.method public static cancelNotification(I)V
    .locals 4

    .line 2728
    new-instance v0, Lcom/onesignal/OneSignal$23;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$23;-><init>(I)V

    .line 2750
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2759
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2751
    :cond_1
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal.init has not been called. Could not clear notification id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " at this time - movingthis operation to a waiting task queue. The notification will still be canceledfrom NotificationManager at this time."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2755
    sget-object p0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static clearOneSignalNotifications()V
    .locals 3

    .line 2672
    new-instance v0, Lcom/onesignal/OneSignal$22;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$22;-><init>()V

    .line 2710
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2718
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2711
    :cond_1
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OneSignal.init has not been called. Could not clear notifications at this time - moving this operation toa waiting task queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2714
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    return-void
.end method

.method private static createInitBuilder(Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)Lcom/onesignal/OneSignal$Builder;
    .locals 2

    .line 805
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    .line 806
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iput-object p0, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .line 807
    sget-object p0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iput-object p1, p0, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .line 808
    sget-object p0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    return-object p0
.end method

.method public static currentInFocusDisplayOption()Lcom/onesignal/OneSignal$OSInFocusDisplayOption;
    .locals 1

    .line 2528
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object v0
.end method

.method public static deleteTag(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1928
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->deleteTag(Ljava/lang/String;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    return-void
.end method

.method public static deleteTag(Ljava/lang/String;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 2

    const-string v0, "deleteTag()"

    .line 1933
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1936
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1937
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1938
    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->deleteTags(Ljava/util/Collection;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    return-void
.end method

.method public static deleteTags(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1967
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->deleteTags(Ljava/lang/String;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    return-void
.end method

.method public static deleteTags(Ljava/lang/String;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 1

    .line 1972
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->deleteTags(Lorg/json/JSONArray;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1974
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Failed to generate JSON for deleteTags."

    invoke-static {p1, v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static deleteTags(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1947
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->deleteTags(Ljava/util/Collection;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    return-void
.end method

.method public static deleteTags(Ljava/util/Collection;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;",
            ")V"
        }
    .end annotation

    const-string v0, "deleteTags()"

    .line 1952
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1956
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1957
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    .line 1958
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1960
    :cond_1
    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1962
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Failed to generate JSON for deleteTags."

    invoke-static {p1, v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static deleteTags(Lorg/json/JSONArray;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 4

    const-string v0, "deleteTags()"

    .line 1980
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1984
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 1986
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1987
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1989
    :cond_1
    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1991
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Failed to generate JSON for deleteTags."

    invoke-static {p1, v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static doSessionInit()V
    .locals 2

    .line 866
    invoke-static {}, Lcom/onesignal/OneSignal;->isPastOnSessionTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Starting new session"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 868
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->setNewSession()V

    .line 869
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    if-eqz v0, :cond_1

    .line 870
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    invoke-virtual {v0}, Lcom/onesignal/OSOutcomeEventsController;->cleanOutcomes()V

    .line 871
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-static {}, Lcom/onesignal/OneSignal;->getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSessionManager;->restartSessionIfNeeded(Lcom/onesignal/OneSignal$AppEntryAction;)V

    .line 872
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageController;->resetSessionLaunchTime()V

    goto :goto_0

    .line 874
    :cond_0
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    if-eqz v0, :cond_1

    .line 875
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Continue on same session"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 876
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-static {}, Lcom/onesignal/OneSignal;->getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSessionManager;->attemptSessionUpgrade(Lcom/onesignal/OneSignal$AppEntryAction;)V

    .line 878
    :cond_1
    :goto_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageController;->initWithCachedInAppMessages()V

    .line 882
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 885
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 886
    invoke-static {}, Lcom/onesignal/OneSignal;->startRegistrationOrOnSession()V

    return-void
.end method

.method public static enableSound(Z)V
    .locals 2

    .line 2478
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2481
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_SOUND_ENABLED"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static enableVibrate(Z)V
    .locals 2

    .line 2452
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2455
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_VIBRATE_ENABLED"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static fireCallbackForOpenedNotifications()V
    .locals 4

    .line 1106
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1107
    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignal;->runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V

    goto :goto_0

    .line 1109
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method static fireEmailUpdateFailure()V
    .locals 4

    .line 3128
    sget-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 3129
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->NETWORK:Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v3, "Failed due to network failure. Will retry on next sync."

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    const/4 v0, 0x0

    .line 3130
    sput-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    :cond_0
    return-void
.end method

.method static fireEmailUpdateSuccess()V
    .locals 1

    .line 3121
    sget-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 3122
    invoke-interface {v0}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onSuccess()V

    const/4 v0, 0x0

    .line 3123
    sput-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    :cond_0
    return-void
.end method

.method static fireIdsAvailableCallback()V
    .locals 1

    .line 2027
    sget-object v0, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    if-eqz v0, :cond_0

    .line 2028
    new-instance v0, Lcom/onesignal/OneSignal$17;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$17;-><init>()V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static fireNotificationOpenedHandler(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 1

    .line 2174
    new-instance v0, Lcom/onesignal/OneSignal$18;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$18;-><init>(Lcom/onesignal/OSNotificationOpenResult;)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;
    .locals 12

    const-string v0, "actionId"

    .line 2129
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 2133
    new-instance v2, Lcom/onesignal/OSNotificationOpenResult;

    invoke-direct {v2}, Lcom/onesignal/OSNotificationOpenResult;-><init>()V

    .line 2134
    new-instance v3, Lcom/onesignal/OSNotification;

    invoke-direct {v3}, Lcom/onesignal/OSNotification;-><init>()V

    .line 2135
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v4

    iput-boolean v4, v3, Lcom/onesignal/OSNotification;->isAppInFocus:Z

    .line 2136
    iput-boolean p1, v3, Lcom/onesignal/OSNotification;->shown:Z

    const/4 p1, 0x0

    .line 2137
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "androidNotificationId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/onesignal/OSNotification;->androidNotificationId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v7, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_3

    .line 2143
    :try_start_0
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2145
    invoke-static {v8}, Lcom/onesignal/NotificationBundleProcessor;->OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;

    move-result-object v9

    iput-object v9, v3, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    if-nez v7, :cond_0

    .line 2146
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2147
    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_0
    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 2152
    :cond_1
    iget-object v8, v3, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    if-nez v8, :cond_2

    .line 2153
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v3, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    .line 2154
    :cond_2
    iget-object v8, v3, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    iget-object v9, v3, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    .line 2157
    sget-object v9, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing JSON item "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " for callback."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2161
    :cond_3
    iput-object v3, v2, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    .line 2162
    new-instance p0, Lcom/onesignal/OSNotificationAction;

    invoke-direct {p0}, Lcom/onesignal/OSNotificationAction;-><init>()V

    iput-object p0, v2, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    .line 2163
    iget-object p0, v2, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iput-object v7, p0, Lcom/onesignal/OSNotificationAction;->actionID:Ljava/lang/String;

    .line 2164
    iget-object p0, v2, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    if-eqz v7, :cond_4

    sget-object p1, Lcom/onesignal/OSNotificationAction$ActionType;->ActionTaken:Lcom/onesignal/OSNotificationAction$ActionType;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/onesignal/OSNotificationAction$ActionType;->Opened:Lcom/onesignal/OSNotificationAction$ActionType;

    :goto_2
    iput-object p1, p0, Lcom/onesignal/OSNotificationAction;->type:Lcom/onesignal/OSNotificationAction$ActionType;

    if-eqz p2, :cond_5

    .line 2166
    iget-object p0, v2, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    sget-object p1, Lcom/onesignal/OSNotification$DisplayType;->InAppAlert:Lcom/onesignal/OSNotification$DisplayType;

    iput-object p1, p0, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    goto :goto_3

    .line 2168
    :cond_5
    iget-object p0, v2, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    sget-object p1, Lcom/onesignal/OSNotification$DisplayType;->Notification:Lcom/onesignal/OSNotification$DisplayType;

    iput-object p1, p0, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    :goto_3
    return-object v2
.end method

.method private static declared-synchronized getAdIdProvider()Lcom/onesignal/AdvertisingIdentifierProvider;
    .locals 2

    const-class v0, Lcom/onesignal/OneSignal;

    monitor-enter v0

    .line 475
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignal;->adIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

    if-nez v1, :cond_0

    .line 476
    invoke-static {}, Lcom/onesignal/OSUtils;->isAndroidDeviceType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    new-instance v1, Lcom/onesignal/AdvertisingIdProviderGPS;

    invoke-direct {v1}, Lcom/onesignal/AdvertisingIdProviderGPS;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->adIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

    .line 480
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal;->adIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;
    .locals 1

    .line 434
    sget-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    return-object v0
.end method

.method static getClearGroupSummaryClick()Z
    .locals 3

    .line 2435
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_CLEAR_GROUP_SUMMARY_CLICK"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 409
    invoke-static {}, Lcom/onesignal/ActivityLifecycleListener;->getActivityLifecycleHandler()Lcom/onesignal/ActivityLifecycleHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler;->getCurActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 583
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    if-nez p0, :cond_1

    .line 584
    new-instance p0, Lcom/onesignal/OSEmailSubscriptionState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/onesignal/OSEmailSubscriptionState;-><init>(Z)V

    sput-object p0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    .line 585
    iget-object p0, p0, Lcom/onesignal/OSEmailSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v0, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;

    invoke-direct {v0}, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 588
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    return-object p0
.end method

.method public static getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;
    .locals 1

    .line 631
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    return-object v0
.end method

.method private static getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 515
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    if-nez p0, :cond_1

    .line 516
    new-instance p0, Lcom/onesignal/OSPermissionState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/onesignal/OSPermissionState;-><init>(Z)V

    sput-object p0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    .line 517
    iget-object p0, p0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v0, Lcom/onesignal/OSPermissionChangedInternalObserver;

    invoke-direct {v0}, Lcom/onesignal/OSPermissionChangedInternalObserver;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 520
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    return-object p0
.end method

.method private static getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 548
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    if-nez v0, :cond_1

    .line 549
    new-instance v0, Lcom/onesignal/OSSubscriptionState;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSSubscriptionState;-><init>(ZZ)V

    sput-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    .line 550
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object p0

    iget-object p0, p0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {p0, v0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 551
    sget-object p0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    iget-object p0, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v0, Lcom/onesignal/OSSubscriptionChangedInternalObserver;

    invoke-direct {v0}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 554
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    return-object p0
.end method

.method static getDBHelperInstance()Lcom/onesignal/OneSignalDbHelper;
    .locals 1

    .line 664
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v0

    return-object v0
.end method

.method static getEmailId()Ljava/lang/String;
    .locals 3

    .line 2356
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2357
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v2, "OS_EMAIL_ID"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 2363
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 2366
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    return-object v0
.end method

.method static getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSEmailSubscriptionObserver;",
            "Lcom/onesignal/OSEmailSubscriptionStateChanges;",
            ">;"
        }
    .end annotation

    .line 604
    sget-object v0, Lcom/onesignal/OneSignal;->emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Lcom/onesignal/OSObservable;

    const/4 v1, 0x1

    const-string v2, "onOSEmailSubscriptionChanged"

    invoke-direct {v0, v2, v1}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 606
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method static getFilterOtherGCMReceivers(Landroid/content/Context;)Z
    .locals 2

    .line 2381
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v0, "OS_FILTER_OTHER_GCM_RECEIVERS"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static getFirebaseAnalyticsEnabled()Z
    .locals 3

    .line 2428
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_FIREBASE_TRACKING_ENABLED"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getInAppAlertNotificationEnabled()Z
    .locals 3

    .line 2553
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2554
    :cond_0
    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    sget-object v2, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static getInAppMessageController()Lcom/onesignal/OSInAppMessageController;
    .locals 2

    .line 463
    sget-object v0, Lcom/onesignal/OneSignal;->inAppMessageControllerFactory:Lcom/onesignal/OSInAppMessageControllerFactory;

    invoke-static {}, Lcom/onesignal/OneSignal;->getDBHelperInstance()Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessageControllerFactory;->getController(Lcom/onesignal/OneSignalDbHelper;)Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    return-object v0
.end method

.method private static getInFocusDisplaying(I)Lcom/onesignal/OneSignal$OSInFocusDisplayOption;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    if-gez p0, :cond_0

    .line 2542
    sget-object p0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->None:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object p0

    .line 2543
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object p0

    .line 2538
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object p0

    .line 2536
    :cond_2
    sget-object p0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object p0

    .line 2534
    :cond_3
    sget-object p0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->None:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object p0
.end method

.method private static getLastEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 596
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    if-nez p0, :cond_1

    .line 597
    new-instance p0, Lcom/onesignal/OSEmailSubscriptionState;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/onesignal/OSEmailSubscriptionState;-><init>(Z)V

    sput-object p0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    .line 599
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    return-object p0
.end method

.method private static getLastPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 528
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    if-nez p0, :cond_1

    .line 529
    new-instance p0, Lcom/onesignal/OSPermissionState;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/onesignal/OSPermissionState;-><init>(Z)V

    sput-object p0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    .line 531
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    return-object p0
.end method

.method private static getLastSessionTime()J
    .locals 4

    .line 2500
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_SESSION_TIME"

    const-wide/16 v2, -0x7918

    invoke-static {v0, v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLastSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 562
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    if-nez p0, :cond_1

    .line 563
    new-instance p0, Lcom/onesignal/OSSubscriptionState;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/onesignal/OSSubscriptionState;-><init>(ZZ)V

    sput-object p0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    .line 565
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    return-object p0
.end method

.method private static getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;
    .locals 0

    packed-switch p0, :pswitch_data_0

    if-gez p0, :cond_0

    .line 1205
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1201
    :pswitch_0
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1199
    :pswitch_1
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1197
    :pswitch_2
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1195
    :pswitch_3
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1193
    :pswitch_4
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1191
    :pswitch_5
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1189
    :pswitch_6
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1206
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNotificationIdFromGCMJsonPayload(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 3085
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "custom"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "i"

    .line 3086
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method static getNotificationsWhenActiveEnabled()Z
    .locals 3

    .line 2548
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2549
    :cond_0
    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    sget-object v2, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSPermissionObserver;",
            "Lcom/onesignal/OSPermissionStateChanges;",
            ">;"
        }
    .end annotation

    .line 536
    sget-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Lcom/onesignal/OSObservable;

    const/4 v1, 0x1

    const-string v2, "onOSPermissionChanged"

    invoke-direct {v0, v2, v1}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 538
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method public static getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;
    .locals 3

    const-string v0, "getPermissionSubscriptionState()"

    .line 2954
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2957
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2958
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OneSignal.init has not been called. Could not get OSPermissionSubscriptionState"

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-object v1

    .line 2962
    :cond_1
    new-instance v0, Lcom/onesignal/OSPermissionSubscriptionState;

    invoke-direct {v0}, Lcom/onesignal/OSPermissionSubscriptionState;-><init>()V

    .line 2963
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    .line 2964
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSPermissionSubscriptionState;->permissionStatus:Lcom/onesignal/OSPermissionState;

    .line 2965
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSPermissionSubscriptionState;->emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

    return-object v0
.end method

.method private static getPushRegistrator()Lcom/onesignal/PushRegistrator;
    .locals 1

    .line 1009
    sget-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    if-eqz v0, :cond_0

    return-object v0

    .line 1012
    :cond_0
    invoke-static {}, Lcom/onesignal/OSUtils;->isFireOSDeviceType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    new-instance v0, Lcom/onesignal/PushRegistratorADM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorADM;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    goto :goto_0

    .line 1014
    :cond_1
    invoke-static {}, Lcom/onesignal/OSUtils;->isAndroidDeviceType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1015
    invoke-static {}, Lcom/onesignal/OSUtils;->hasFCMLibrary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    new-instance v0, Lcom/onesignal/PushRegistratorFCM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorFCM;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    goto :goto_0

    .line 1018
    :cond_2
    new-instance v0, Lcom/onesignal/PushRegistratorGCM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorGCM;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    goto :goto_0

    .line 1021
    :cond_3
    new-instance v0, Lcom/onesignal/PushRegistratorHMS;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorHMS;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    .line 1023
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    return-object v0
.end method

.method static getSavedAppId()Ljava/lang/String;
    .locals 1

    .line 2293
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getSavedAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSavedAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2300
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_APP_ID"

    invoke-static {p0, v1, v0}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSavedUserConsentStatus()Z
    .locals 3

    .line 2307
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "ONESIGNAL_USER_PROVIDED_CONSENT"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getSavedUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2324
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_PLAYER_ID"

    invoke-static {p0, v1, v0}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSessionListener()Lcom/onesignal/OSSessionManager$SessionListener;
    .locals 1

    .line 3150
    sget-object v0, Lcom/onesignal/OneSignal;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    return-object v0
.end method

.method static getSessionManager()Lcom/onesignal/OSSessionManager;
    .locals 1

    .line 3160
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    return-object v0
.end method

.method static getSoundEnabled()Z
    .locals 3

    .line 2486
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_SOUND_ENABLED"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSSubscriptionObserver;",
            "Lcom/onesignal/OSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation

    .line 570
    sget-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Lcom/onesignal/OSObservable;

    const/4 v1, 0x1

    const-string v2, "onOSSubscriptionChanged"

    invoke-direct {v0, v2, v1}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 572
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method public static getTags(Lcom/onesignal/OneSignal$GetTagsHandler;)V
    .locals 2

    const-string v0, "getTags()"

    .line 1854
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 1858
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "getTagsHandler is null!"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 1862
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$14;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$14;-><init>(Lcom/onesignal/OneSignal$GetTagsHandler;)V

    const-string p0, "OS_GETTAGS"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1887
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static getTimeZoneOffset()I
    .locals 3

    .line 1349
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1350
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 1352
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1353
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    add-int/2addr v1, v0

    .line 1355
    :cond_0
    div-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method public static getTriggerValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 3037
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSInAppMessageController;->getTriggerValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getUserDevice()Lcom/onesignal/OSDevice;
    .locals 1

    .line 612
    sget-object v0, Lcom/onesignal/OneSignal;->userDevice:Lcom/onesignal/OSDevice;

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Lcom/onesignal/OSDevice;

    invoke-direct {v0}, Lcom/onesignal/OSDevice;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->userDevice:Lcom/onesignal/OSDevice;

    .line 615
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->userDevice:Lcom/onesignal/OSDevice;

    return-object v0
.end method

.method static getUserId()Ljava/lang/String;
    .locals 1

    .line 2335
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2336
    invoke-static {v0}, Lcom/onesignal/OneSignal;->getSavedUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 2337
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static getVibrate()Z
    .locals 3

    .line 2462
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_VIBRATE_ENABLED"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static handleActivityLifecycleHandler(Landroid/content/Context;)V
    .locals 2

    .line 842
    invoke-static {}, Lcom/onesignal/ActivityLifecycleListener;->getActivityLifecycleHandler()Lcom/onesignal/ActivityLifecycleHandler;

    move-result-object v0

    .line 843
    invoke-static {p0}, Lcom/onesignal/OneSignal;->isContextActivity(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/onesignal/OneSignal;->foreground:Z

    .line 844
    invoke-static {v1}, Lcom/onesignal/OneSignal;->setInForeground(Z)V

    .line 845
    sget-boolean v1, Lcom/onesignal/OneSignal;->foreground:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 847
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/onesignal/ActivityLifecycleHandler;->setCurActivity(Landroid/app/Activity;)V

    .line 848
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/NotificationRestorer;->asyncRestore(Landroid/content/Context;)V

    .line 849
    invoke-static {}, Lcom/onesignal/FocusTimeController;->getInstance()Lcom/onesignal/FocusTimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onesignal/FocusTimeController;->appForegrounded()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 p0, 0x1

    .line 852
    invoke-virtual {v0, p0}, Lcom/onesignal/ActivityLifecycleHandler;->setNextResumeIsFirstActivity(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static handleAmazonPurchase()V
    .locals 2

    :try_start_0
    const-string v0, "com.amazon.device.iap.PurchasingListener"

    .line 857
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 858
    new-instance v0, Lcom/onesignal/TrackAmazonPurchase;

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onesignal/TrackAmazonPurchase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static handleAppIdChange()V
    .locals 2

    .line 813
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 815
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 816
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "APP ID changed, clearing user id as it is no longer valid."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 817
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveAppId(Ljava/lang/String;)V

    .line 818
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->resetCurrentState()V

    const/4 v0, 0x0

    .line 819
    sput-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 823
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 824
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveAppId(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static handleFailedEmailLogout()V
    .locals 4

    .line 3114
    sget-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 3115
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->NETWORK:Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v3, "Failed due to network failure. Will retry on next sync."

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    const/4 v0, 0x0

    .line 3116
    sput-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    :cond_0
    return-void
.end method

.method public static handleNotificationOpen(Landroid/content/Context;Lorg/json/JSONArray;ZLjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 2200
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2203
    :cond_0
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->notificationOpenedRESTCall(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 2205
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2206
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-static {p1, v1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onesignal/TrackFirebaseAnalytics;->trackOpenedEvent(Lcom/onesignal/OSNotificationOpenResult;)V

    :cond_1
    const/4 v0, 0x0

    const-string v2, "com.onesignal.NotificationOpened.DEFAULT"

    .line 2209
    invoke-static {p0, v2}, Lcom/onesignal/OSUtils;->getManifestMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DISABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2212
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->openURLFromNotification(Landroid/content/Context;Lorg/json/JSONArray;)Z

    move-result v0

    .line 2215
    :cond_2
    invoke-static {p0, p2, v0, v2}, Lcom/onesignal/OneSignal;->shouldInitDirectSessionFromNotificationOpen(Landroid/content/Context;ZZZ)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2217
    sget-object p0, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object p0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 2218
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {v0, p0, p3}, Lcom/onesignal/OSSessionManager;->onDirectInfluenceFromNotificationOpen(Lcom/onesignal/OneSignal$AppEntryAction;Ljava/lang/String;)V

    .line 2221
    :cond_3
    invoke-static {p1, v1, p2}, Lcom/onesignal/OneSignal;->runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V

    return-void
.end method

.method static handleNotificationReceived(Lorg/json/JSONArray;ZZ)V
    .locals 0

    .line 2186
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object p0

    .line 2187
    sget-object p1, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2188
    sget-object p1, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-virtual {p1, p0}, Lcom/onesignal/TrackFirebaseAnalytics;->trackReceivedEvent(Lcom/onesignal/OSNotificationOpenResult;)V

    .line 2190
    :cond_0
    sget-object p1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    if-nez p1, :cond_1

    goto :goto_0

    .line 2193
    :cond_1
    sget-object p1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object p1, p1, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    iget-object p0, p0, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    invoke-interface {p1, p0}, Lcom/onesignal/OneSignal$NotificationReceivedHandler;->notificationReceived(Lcom/onesignal/OSNotification;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static handleSuccessfulEmailLogout()V
    .locals 1

    .line 3107
    sget-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 3108
    invoke-interface {v0}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onSuccess()V

    const/4 v0, 0x0

    .line 3109
    sput-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    :cond_0
    return-void
.end method

.method static hasEmailId()Z
    .locals 1

    .line 2352
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static hasUserId()Z
    .locals 1

    .line 2331
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static idsAvailable(Lcom/onesignal/OneSignal$IdsAvailableHandler;)V
    .locals 2

    const-string v0, "idsAvailable()"

    .line 1998
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2001
    :cond_0
    sput-object p0, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    .line 2003
    new-instance p0, Lcom/onesignal/OneSignal$16;

    invoke-direct {p0}, Lcom/onesignal/OneSignal$16;-><init>()V

    .line 2016
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2023
    :cond_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2017
    :cond_2
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "You must initialize OneSignal before getting tags! Moving this tag operation to a pending queue."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2019
    new-instance v0, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 713
    invoke-static {p0, p1, p2, v0, v0}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 717
    invoke-static {p0, p1, p2, p3, v0}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V
    .locals 8

    .line 721
    invoke-static {p3, p4}, Lcom/onesignal/OneSignal;->createInitBuilder(Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 722
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 723
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setupPrivacyConsent(Landroid/content/Context;)V

    .line 725
    invoke-static {}, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal SDK initialization delayed, user privacy consent is set to required for this application."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 727
    new-instance v0, Lcom/onesignal/DelayedConsentInitializationParameters;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/onesignal/DelayedConsentInitializationParameters;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    sput-object v0, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    return-void

    .line 731
    :cond_0
    invoke-static {p3, p4}, Lcom/onesignal/OneSignal;->createInitBuilder(Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)Lcom/onesignal/OneSignal$Builder;

    move-result-object p3

    sput-object p3, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 733
    invoke-static {}, Lcom/onesignal/OneSignal;->isGoogleProjectNumberRemote()Z

    move-result p3

    if-nez p3, :cond_1

    .line 734
    sput-object p1, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    .line 736
    :cond_1
    sget-object p1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {p1, p0, p2}, Lcom/onesignal/OSUtils;->initializationChecker(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/onesignal/OneSignal;->subscribableStatus:I

    .line 737
    invoke-static {}, Lcom/onesignal/OneSignal;->isSubscriptionStatusUninitializable()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 742
    :cond_2
    sget-object p1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 743
    sput-boolean p1, Lcom/onesignal/OneSignal;->initDone:Z

    .line 745
    :cond_3
    sget-boolean p1, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz p1, :cond_5

    .line 746
    sget-object p0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object p0, p0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-eqz p0, :cond_4

    .line 747
    invoke-static {}, Lcom/onesignal/OneSignal;->fireCallbackForOpenedNotifications()V

    :cond_4
    return-void

    .line 752
    :cond_5
    sput-object p2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 754
    sget-object p1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean p1, p1, Lcom/onesignal/OneSignal$Builder;->mFilterOtherGCMReceivers:Z

    invoke-static {p1}, Lcom/onesignal/OneSignal;->saveFilterOtherGCMReceivers(Z)V

    .line 756
    invoke-static {p0}, Lcom/onesignal/OneSignal;->handleActivityLifecycleHandler(Landroid/content/Context;)V

    .line 758
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->initUserState()V

    .line 761
    invoke-static {}, Lcom/onesignal/OneSignal;->handleAmazonPurchase()V

    .line 764
    invoke-static {}, Lcom/onesignal/OneSignal;->handleAppIdChange()V

    .line 766
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OSPermissionChangedInternalObserver;->handleInternalChanges(Lcom/onesignal/OSPermissionState;)V

    .line 770
    invoke-static {}, Lcom/onesignal/OneSignal;->doSessionInit()V

    .line 772
    sget-object p0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object p0, p0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-eqz p0, :cond_6

    .line 773
    invoke-static {}, Lcom/onesignal/OneSignal;->fireCallbackForOpenedNotifications()V

    .line 775
    :cond_6
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/TrackGooglePurchase;->CanTrack(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 776
    new-instance p0, Lcom/onesignal/TrackGooglePurchase;

    sget-object p1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/onesignal/TrackGooglePurchase;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    .line 778
    :cond_7
    invoke-static {}, Lcom/onesignal/TrackFirebaseAnalytics;->CanTrack()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 779
    new-instance p0, Lcom/onesignal/TrackFirebaseAnalytics;

    sget-object p1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/onesignal/TrackFirebaseAnalytics;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    .line 781
    :cond_8
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/PushRegistratorFCM;->disableFirebaseInstanceIdService(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 783
    sput-boolean p0, Lcom/onesignal/OneSignal;->initDone:Z

    .line 785
    sget-object p0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    invoke-virtual {p0}, Lcom/onesignal/OSOutcomeEventsController;->sendSavedOutcomes()V

    .line 788
    invoke-static {}, Lcom/onesignal/OneSignal;->startPendingTasks()V

    return-void
.end method

.method private static init(Lcom/onesignal/OneSignal$Builder;)V
    .locals 4

    .line 690
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    if-eqz v0, :cond_0

    .line 691
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    iput-object v0, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 692
    :cond_0
    sput-object p0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 694
    iget-object p0, p0, Lcom/onesignal/OneSignal$Builder;->mContext:Landroid/content/Context;

    .line 695
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onesignal/OneSignal$Builder;->mContext:Landroid/content/Context;

    .line 698
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 699
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "onesignal_google_project_number"

    .line 701
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 702
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 703
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "onesignal_app_id"

    .line 705
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    sget-object v2, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v2, v2, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    sget-object v3, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v3, v3, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    invoke-static {p0, v1, v0, v2, v3}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 708
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static internalFireGetTagsCallbacks()V
    .locals 3

    .line 1899
    sget-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1900
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 1901
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1903
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$15;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$15;-><init>()V

    const-string v2, "OS_GETTAGS_CALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1917
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v1

    .line 1901
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static declared-synchronized internalFireIdsAvailableCallback()V
    .locals 5

    const-class v0, Lcom/onesignal/OneSignal;

    monitor-enter v0

    .line 2038
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2039
    monitor-exit v0

    return-void

    .line 2041
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    .line 2042
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getSubscribed()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v1, v3

    .line 2045
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 2047
    monitor-exit v0

    return-void

    .line 2049
    :cond_2
    :try_start_2
    sget-object v4, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    invoke-interface {v4, v2, v1}, Lcom/onesignal/OneSignal$IdsAvailableHandler;->idsAvailable(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 2052
    sput-object v3, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2053
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static isAppActive()Z
    .locals 1

    .line 3092
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isContextActivity(Landroid/content/Context;)Z
    .locals 0

    .line 890
    instance-of p0, p0, Landroid/app/Activity;

    return p0
.end method

.method private static isDuplicateNotification(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, ""

    .line 3051
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3054
    :cond_0
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v2

    const-string p1, "notification_id"

    .line 3056
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    aput-object p0, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "notification"

    const-string v5, "notification_id = ?"

    .line 3059
    invoke-virtual/range {v2 .. v9}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3066
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    .line 3068
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v2, :cond_1

    .line 3071
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate GCM message received, skip processing of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method static isForeground()Z
    .locals 1

    .line 428
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    return v0
.end method

.method private static isGoogleProjectNumberRemote()Z
    .locals 1

    .line 833
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->googleProjectNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isInForeground()Z
    .locals 1

    .line 401
    sget-boolean v0, Lcom/onesignal/OneSignal;->inForeground:Z

    return v0
.end method

.method static isInitDone()Z
    .locals 1

    .line 422
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    return v0
.end method

.method private static isPastOnSessionTime()Z
    .locals 5

    .line 3096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/onesignal/OneSignal;->getLastSessionTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSubscriptionStatusUninitializable()Z
    .locals 2

    .line 838
    sget v0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidOutcomeEntry(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 3230
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 3231
    :cond_1
    :goto_0
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Outcome name must not be empty"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static isValidOutcomeValue(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    .line 3222
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Outcome value must be greater than 0"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 1265
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 1267
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logoutEmail()V
    .locals 1

    const/4 v0, 0x0

    .line 1536
    invoke-static {v0}, Lcom/onesignal/OneSignal;->logoutEmail(Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    return-void
.end method

.method public static logoutEmail(Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    .locals 3

    const-string v0, "logoutEmail()"

    .line 1542
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1545
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "logoutEmail not valid as email was not set or already logged out!"

    if-eqz p0, :cond_1

    .line 1548
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->INVALID_OPERATION:Lcom/onesignal/OneSignal$EmailErrorType;

    invoke-direct {v1, v2, v0}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 1549
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 1553
    :cond_2
    sput-object p0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 1555
    new-instance p0, Lcom/onesignal/OneSignal$10;

    invoke-direct {p0}, Lcom/onesignal/OneSignal$10;-><init>()V

    .line 1563
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1569
    :cond_3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1564
    :cond_4
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "You should initialize OneSignal before calling logoutEmail! Moving this operation to a pending task queue."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1566
    new-instance v0, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    return-void
.end method

.method private static makeAndroidParamsRequest()V
    .locals 1

    .line 1056
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    if-eqz v0, :cond_0

    .line 1057
    invoke-static {}, Lcom/onesignal/OneSignal;->registerForPushToken()V

    return-void

    .line 1061
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$5;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$5;-><init>()V

    invoke-static {v0}, Lcom/onesignal/OneSignalRemoteParams;->makeAndroidParamsRequest(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V

    return-void
.end method

.method static notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 0

    .line 3079
    invoke-static {p1}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3080
    invoke-static {p1, p0}, Lcom/onesignal/OneSignal;->isDuplicateNotification(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static notificationOpenedRESTCall(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 5

    const/4 v0, 0x0

    .line 2251
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2253
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2254
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "custom"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "i"

    .line 2256
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2259
    sget-object v2, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 2261
    :cond_0
    sget-object v2, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2263
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "app_id"

    .line 2264
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getSavedAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "player_id"

    .line 2265
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getSavedUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "opened"

    const/4 v4, 0x1

    .line 2266
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "device_type"

    .line 2267
    sget-object v4, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v4}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifications/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/onesignal/OneSignal$19;

    invoke-direct {v3}, Lcom/onesignal/OneSignal$19;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignalRestClient;->put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 2277
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Failed to generate JSON to send notification opened."

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static onAppFocus()V
    .locals 2

    .line 1308
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Application on focus"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1309
    invoke-static {v0}, Lcom/onesignal/OneSignal;->setInForeground(Z)V

    .line 1310
    sput-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    .line 1313
    sget-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    sget-object v1, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {v0, v1}, Lcom/onesignal/OneSignal$AppEntryAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1314
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_OPEN:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 1316
    :cond_0
    invoke-static {}, Lcom/onesignal/LocationController;->onFocusChange()V

    const-string v0, "onAppFocus"

    .line 1319
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1322
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->shouldLogMissingAppIdError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1325
    :cond_2
    invoke-static {}, Lcom/onesignal/FocusTimeController;->getInstance()Lcom/onesignal/FocusTimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/FocusTimeController;->appForegrounded()V

    .line 1327
    invoke-static {}, Lcom/onesignal/OneSignal;->doSessionInit()V

    .line 1329
    sget-object v0, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    if-eqz v0, :cond_3

    .line 1330
    invoke-virtual {v0}, Lcom/onesignal/TrackGooglePurchase;->trackIAP()V

    .line 1332
    :cond_3
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/NotificationRestorer;->asyncRestore(Landroid/content/Context;)V

    .line 1334
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSPermissionState;->refreshAsTo()V

    .line 1336
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1337
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-virtual {v0}, Lcom/onesignal/TrackFirebaseAnalytics;->trackInfluenceOpenEvent()V

    .line 1339
    :cond_4
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalSyncServiceUtils;->cancelSyncTask(Landroid/content/Context;)V

    return-void
.end method

.method static onAppLostFocus()V
    .locals 2

    .line 1273
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Application lost focus"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1274
    invoke-static {v0}, Lcom/onesignal/OneSignal;->setInForeground(Z)V

    .line 1275
    sput-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    .line 1276
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 1278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 1279
    invoke-static {}, Lcom/onesignal/LocationController;->onFocusChange()V

    .line 1281
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-nez v0, :cond_0

    return-void

    .line 1284
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

    if-eqz v0, :cond_1

    .line 1285
    invoke-virtual {v0}, Lcom/onesignal/TrackAmazonPurchase;->checkListener()V

    .line 1287
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1288
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Android Context not found, please call OneSignal.init when your app starts."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 1292
    :cond_2
    invoke-static {}, Lcom/onesignal/FocusTimeController;->getInstance()Lcom/onesignal/FocusTimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/FocusTimeController;->appBackgrounded()V

    .line 1294
    invoke-static {}, Lcom/onesignal/OneSignal;->scheduleSyncService()Z

    return-void
.end method

.method private static onTaskRan(J)V
    .locals 3

    .line 894
    sget-object v0, Lcom/onesignal/OneSignal;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    .line 895
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p1, "Last Pending Task has ran, shutting down"

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 896
    sget-object p0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public static onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    .locals 0

    .line 1117
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method private static openURLFromNotification(Landroid/content/Context;Lorg/json/JSONArray;)Z
    .locals 9

    const-string p0, "u"

    const-string v0, "custom"

    const/4 v1, 0x0

    .line 2087
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 2090
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 2096
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2097
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 2100
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2102
    invoke-virtual {v6, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2103
    invoke-virtual {v6, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2105
    invoke-static {v5}, Lcom/onesignal/OSUtils;->openURLInBrowser(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 2110
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing JSON item "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for launching a web URL."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method public static pauseInAppMessages(Z)V
    .locals 1

    .line 3047
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/onesignal/OSInAppMessageController;->setInAppMessagingEnabled(Z)V

    return-void
.end method

.method public static postNotification(Ljava/lang/String;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 2

    .line 1762
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1764
    :catch_0
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid postNotification JSON format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 2

    const-string v0, "app_id"

    const-string v1, "postNotification()"

    .line 1783
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1787
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1788
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1791
    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 1793
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "Missing app_id"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "notifications/"

    .line 1797
    new-instance v1, Lcom/onesignal/OneSignal$13;

    invoke-direct {v1, p1}, Lcom/onesignal/OneSignal$13;-><init>(Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V

    invoke-static {v0, p0, v1}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1834
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "HTTP create notification json exception!"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_4

    .line 1837
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    const-string v0, "{\'error\': \'HTTP create notification json exception!\'}"

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1839
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static promptLocation()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2616
    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->promptLocation(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V

    return-void
.end method

.method static promptLocation(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V
    .locals 1

    const-string v0, "promptLocation()"

    .line 2621
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2624
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$21;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignal$21;-><init>(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V

    .line 2655
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 2663
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2656
    :cond_2
    :goto_0
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p1, "OneSignal.init has not been called. Could not prompt for location at this time - moving this operation to awaiting queue."

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2659
    new-instance p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {p0, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    return-void
.end method

.method public static provideUserConsent(Z)V
    .locals 4

    .line 1121
    invoke-static {}, Lcom/onesignal/OneSignal;->userProvidedPrivacyConsent()Z

    move-result v0

    .line 1123
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveUserConsentStatus(Z)V

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1125
    sget-object p0, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    if-eqz p0, :cond_0

    .line 1126
    iget-object p0, p0, Lcom/onesignal/DelayedConsentInitializationParameters;->context:Landroid/content/Context;

    sget-object v0, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    iget-object v0, v0, Lcom/onesignal/DelayedConsentInitializationParameters;->googleProjectNumber:Ljava/lang/String;

    sget-object v1, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    iget-object v1, v1, Lcom/onesignal/DelayedConsentInitializationParameters;->appId:Ljava/lang/String;

    sget-object v2, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    iget-object v2, v2, Lcom/onesignal/DelayedConsentInitializationParameters;->openedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    sget-object v3, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    iget-object v3, v3, Lcom/onesignal/DelayedConsentInitializationParameters;->receivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    const/4 p0, 0x0

    .line 1127
    sput-object p0, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    :cond_0
    return-void
.end method

.method private static pushStatusRuntimeError(I)Z
    .locals 1

    const/4 v0, -0x6

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static registerForPushToken()V
    .locals 4

    .line 1027
    invoke-static {}, Lcom/onesignal/OneSignal;->getPushRegistrator()Lcom/onesignal/PushRegistrator;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    new-instance v3, Lcom/onesignal/OneSignal$4;

    invoke-direct {v3}, Lcom/onesignal/OneSignal$4;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/PushRegistrator;->registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V

    return-void
.end method

.method private static registerUser()V
    .locals 3

    .line 1359
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerUser:registerForPushFired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", locationFired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->locationFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", remoteParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", appId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1367
    sget-boolean v0, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/onesignal/OneSignal;->locationFired:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1370
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$7;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$7;-><init>()V

    const-string v2, "OS_REG_USER"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1379
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static registerUserTask()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1383
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1384
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1386
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1388
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1390
    invoke-static {}, Lcom/onesignal/OneSignal;->getAdIdProvider()Lcom/onesignal/AdvertisingIdentifierProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1391
    invoke-static {}, Lcom/onesignal/OneSignal;->getAdIdProvider()Lcom/onesignal/AdvertisingIdentifierProvider;

    move-result-object v3

    sget-object v4, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/onesignal/AdvertisingIdentifierProvider;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "ad_id"

    .line 1393
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1395
    :cond_0
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "device_os"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1396
    invoke-static {}, Lcom/onesignal/OneSignal;->getTimeZoneOffset()I

    move-result v3

    const-string v4, "timezone"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1397
    invoke-static {}, Lcom/onesignal/OSUtils;->getCorrectedLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdk"

    const-string v4, "031507"

    .line 1398
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1399
    sget-object v3, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    const-string v4, "sdk_type"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "android_package"

    .line 1400
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1401
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "device_model"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "game_version"

    .line 1404
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1407
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getNetType()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "net_type"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1408
    sget-object v0, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carrier"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1409
    invoke-static {}, Lcom/onesignal/RootToolsInternalMethods;->isRooted()Z

    move-result v0

    const-string v1, "rooted"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1411
    invoke-static {v2}, Lcom/onesignal/OneSignalStateSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;)V

    .line 1413
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1414
    sget-object v1, Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;

    const-string v2, "identifier"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1415
    sget v1, Lcom/onesignal/OneSignal;->subscribableStatus:I

    const-string v2, "subscribableStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1416
    invoke-static {}, Lcom/onesignal/OneSignal;->areNotificationsEnabledForSubscribedState()Z

    move-result v1

    const-string v2, "androidPermission"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1417
    sget-object v1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v1}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1418
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->updatePushState(Lorg/json/JSONObject;)V

    .line 1420
    sget-boolean v0, Lcom/onesignal/OneSignal;->shareLocation:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationController$LocationPoint;

    if-eqz v0, :cond_1

    .line 1421
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V

    :cond_1
    const/4 v0, 0x1

    .line 1423
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->readyToUpdate(Z)V

    .line 1425
    sput-boolean v3, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    return-void
.end method

.method public static removeEmailSubscriptionObserver(Lcom/onesignal/OSEmailSubscriptionObserver;)V
    .locals 1

    .line 2933
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2934
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "OneSignal.init has not been called. Could not modify email subscription observer"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 2938
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public static removeExternalUserId()V
    .locals 1

    const-string v0, "removeExternalUserId()"

    .line 1626
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1629
    invoke-static {v0}, Lcom/onesignal/OneSignal;->removeExternalUserId(Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    return-void
.end method

.method public static removeExternalUserId(Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    .locals 1

    const-string v0, "removeExternalUserId()"

    .line 1633
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    .line 1637
    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->setExternalUserId(Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    return-void
.end method

.method public static removeInAppMessageClickHandler()V
    .locals 2

    .line 2826
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onesignal/OneSignal$Builder;->mInAppMessageClickHandler:Lcom/onesignal/OneSignal$InAppMessageClickHandler;

    return-void
.end method

.method public static removeNotificationOpenedHandler()V
    .locals 2

    .line 2822
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    return-void
.end method

.method public static removeNotificationReceivedHandler()V
    .locals 2

    .line 2830
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    return-void
.end method

.method public static removePermissionObserver(Lcom/onesignal/OSPermissionObserver;)V
    .locals 1

    .line 2862
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2863
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "OneSignal.init has not been called. Could not modify permission observer"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 2867
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public static removeSubscriptionObserver(Lcom/onesignal/OSSubscriptionObserver;)V
    .locals 1

    .line 2899
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2900
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "OneSignal.init has not been called. Could not modify subscription observer"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 2904
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public static removeTriggerForKey(Ljava/lang/String;)V
    .locals 1

    .line 3028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3029
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3031
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSInAppMessageController;->removeTriggersForKeys(Ljava/util/Collection;)V

    return-void
.end method

.method public static removeTriggersForKeys(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3006
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSInAppMessageController;->removeTriggersForKeys(Ljava/util/Collection;)V

    return-void
.end method

.method public static removeTriggersForKeysFromJsonArrayString(Ljava/lang/String;)V
    .locals 2

    .line 3013
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3015
    invoke-static {v0}, Lcom/onesignal/JSONUtils;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    .line 3014
    invoke-static {p0}, Lcom/onesignal/OSUtils;->extractStringsFromCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    .line 3018
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3019
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "removeTriggersForKeysFromJsonArrayString: Skipped removing non-String type keys "

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 3020
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSInAppMessageController;->removeTriggersForKeys(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3022
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "removeTriggersForKeysFromJsonArrayString, invalid json"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static requiresUserPrivacyConsent()Z
    .locals 1

    .line 1145
    sget-boolean v0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->userProvidedPrivacyConsent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static runGetTags()V
    .locals 1

    .line 1891
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1895
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->internalFireGetTagsCallbacks()V

    return-void
.end method

.method private static runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V
    .locals 1

    .line 2118
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2123
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->fireNotificationOpenedHandler(Lcom/onesignal/OSNotificationOpenResult;)V

    return-void

    .line 2119
    :cond_1
    :goto_0
    sget-object p1, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static saveAppId(Ljava/lang/String;)V
    .locals 2

    .line 2283
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2286
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_APP_ID"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static saveEmailId(Ljava/lang/String;)V
    .locals 2

    .line 2370
    sput-object p0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 2371
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez p0, :cond_0

    return-void

    .line 2374
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    const-string v1, ""

    .line 2377
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    :goto_0
    const-string v1, "OS_EMAIL_ID"

    .line 2374
    invoke-static {p0, v1, v0}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static saveFilterOtherGCMReceivers(Z)V
    .locals 2

    .line 2388
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2391
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_FILTER_OTHER_GCM_RECEIVERS"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static saveUserConsentStatus(Z)V
    .locals 2

    .line 2314
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "ONESIGNAL_USER_PROVIDED_CONSENT"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static saveUserId(Ljava/lang/String;)V
    .locals 2

    .line 2341
    sput-object p0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 2342
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez p0, :cond_0

    return-void

    .line 2345
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    const-string v1, "GT_PLAYER_ID"

    invoke-static {p0, v1, v0}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static scheduleSyncService()Z
    .locals 2

    .line 1299
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->persist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncTask(Landroid/content/Context;)V

    .line 1303
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/LocationController;->scheduleUpdate(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static sendClickActionOutcomes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessageOutcome;",
            ">;)V"
        }
    .end annotation

    .line 3164
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v0, :cond_0

    .line 3165
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Make sure OneSignal.init is called first"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 3169
    :cond_0
    invoke-virtual {v0, p0}, Lcom/onesignal/OSOutcomeEventsController;->sendClickActionOutcomes(Ljava/util/List;)V

    return-void
.end method

.method public static sendOutcome(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3173
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->sendOutcome(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void
.end method

.method public static sendOutcome(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 1

    .line 3177
    invoke-static {p0}, Lcom/onesignal/OneSignal;->isValidOutcomeEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3180
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v0, :cond_1

    .line 3181
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p1, "Make sure OneSignal.init is called first"

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 3185
    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/onesignal/OSOutcomeEventsController;->sendOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void
.end method

.method public static sendOutcomeWithValue(Ljava/lang/String;F)V
    .locals 1

    const/4 v0, 0x0

    .line 3205
    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->sendOutcomeWithValue(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void
.end method

.method public static sendOutcomeWithValue(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 1

    .line 3209
    invoke-static {p0}, Lcom/onesignal/OneSignal;->isValidOutcomeEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/onesignal/OneSignal;->isValidOutcomeValue(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3212
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v0, :cond_1

    .line 3213
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p1, "Make sure OneSignal.init is called first"

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 3217
    :cond_1
    invoke-virtual {v0, p0, p1, p2}, Lcom/onesignal/OSOutcomeEventsController;->sendOutcomeEventWithValue(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 5

    const-string v0, "/on_purchase"

    const-string v1, "players/"

    const-string v2, "sendPurchases()"

    .line 2058
    invoke-static {v2}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2061
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2062
    new-instance v0, Lcom/onesignal/OneSignal$IAPUpdateJob;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$IAPUpdateJob;-><init>(Lorg/json/JSONArray;)V

    sput-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    .line 2063
    iput-boolean p1, v0, Lcom/onesignal/OneSignal$IAPUpdateJob;->newAsExisting:Z

    .line 2064
    sget-object p0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iput-object p2, p0, Lcom/onesignal/OneSignal$IAPUpdateJob;->restResponseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    return-void

    .line 2070
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "app_id"

    .line 2071
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    const-string p1, "existing"

    const/4 v3, 0x1

    .line 2073
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "purchases"

    .line 2074
    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2076
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, p2}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 2077
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2078
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v2, p1}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2080
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "Failed to generate JSON for sendPurchases."

    invoke-static {p1, p2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static sendTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sendTag()"

    .line 1656
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1660
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1662
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static sendTags(Ljava/lang/String;)V
    .locals 2

    .line 1668
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1670
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Generating JSONObject for sendTags failed!"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static sendTags(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1684
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    return-void
.end method

.method public static sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 3

    const-string v0, "sendTags()"

    .line 1703
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1706
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$12;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignal$12;-><init>(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    .line 1747
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 1757
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1748
    :cond_2
    :goto_0
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "You must initialize OneSignal before modifying tags!Moving this operation to a pending task queue."

    invoke-static {p0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 1751
    new-instance p0, Lcom/onesignal/OneSignal$SendTagsError;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/onesignal/OneSignal$SendTagsError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    .line 1753
    :cond_3
    new-instance p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {p0, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    return-void
.end method

.method public static sendUniqueOutcome(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3189
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->sendUniqueOutcome(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void
.end method

.method public static sendUniqueOutcome(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 1

    .line 3193
    invoke-static {p0}, Lcom/onesignal/OneSignal;->isValidOutcomeEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3196
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v0, :cond_1

    .line 3197
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p1, "Make sure OneSignal.init is called first"

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 3201
    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/onesignal/OSOutcomeEventsController;->sendUniqueOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 5

    if-nez p0, :cond_0

    .line 639
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "setAppContext(null) is not valid, ignoring!"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 643
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 644
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    .line 647
    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lcom/onesignal/ActivityLifecycleListener;->registerActivityLifecycleCallbacks(Landroid/app/Application;)V

    if-eqz v0, :cond_3

    .line 650
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    if-nez v0, :cond_2

    .line 651
    new-instance v0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    sget-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    sget-object v2, Lcom/onesignal/OneSignal;->apiClient:Lcom/onesignal/OneSignalAPIClient;

    invoke-static {}, Lcom/onesignal/OneSignal;->getDBHelperInstance()Lcom/onesignal/OneSignalDbHelper;

    move-result-object v3

    sget-object v4, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;-><init>(Lcom/onesignal/OSLogger;Lcom/onesignal/OneSignalAPIClient;Lcom/onesignal/OneSignalDb;Lcom/onesignal/OSSharedPreferences;)V

    sput-object v0, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    .line 653
    :cond_2
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {v0}, Lcom/onesignal/OSSessionManager;->initSessionFromCache()V

    .line 654
    new-instance v0, Lcom/onesignal/OSOutcomeEventsController;

    sget-object v1, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    sget-object v2, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSOutcomeEventsController;-><init>(Lcom/onesignal/OSSessionManager;Lcom/onesignal/outcomes/OSOutcomeEventsFactory;)V

    sput-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    .line 657
    invoke-static {}, Lcom/onesignal/OneSignalPrefs;->startDelayedWrite()V

    .line 659
    invoke-static {p0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanOldCachedData(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public static setEmail(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1465
    invoke-static {p0, v0, v0}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    return-void
.end method

.method public static setEmail(Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 1461
    invoke-static {p0, v0, p1}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    return-void
.end method

.method public static setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1469
    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    return-void
.end method

.method public static setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    .locals 1

    const-string v0, "setEmail()"

    .line 1485
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1488
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OSUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "Email is invalid"

    if-eqz p2, :cond_1

    .line 1491
    new-instance p1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v0, Lcom/onesignal/OneSignal$EmailErrorType;->VALIDATION:Lcom/onesignal/OneSignal$EmailErrorType;

    invoke-direct {p1, v0, p0}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 1492
    :cond_1
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {p1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 1496
    :cond_2
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->useEmailAuth:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    const-string p0, "Email authentication (auth token) is set to REQUIRED for this application. Please provide an auth token from your backend server or change the setting in the OneSignal dashboard."

    if-eqz p2, :cond_4

    .line 1499
    new-instance p1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v0, Lcom/onesignal/OneSignal$EmailErrorType;->REQUIRES_EMAIL_AUTH:Lcom/onesignal/OneSignal$EmailErrorType;

    invoke-direct {p1, v0, p0}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 1500
    :cond_4
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {p1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 1504
    :cond_5
    sput-object p2, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 1506
    new-instance p2, Lcom/onesignal/OneSignal$9;

    invoke-direct {p2, p0, p1}, Lcom/onesignal/OneSignal$9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    .line 1527
    :cond_6
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1522
    :cond_7
    :goto_0
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p1, "You should initialize OneSignal before calling setEmail! Moving this operation to a pending task queue."

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1524
    new-instance p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {p0, p2}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    return-void
.end method

.method public static setExternalUserId(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1573
    invoke-static {p0, v0, v0}, Lcom/onesignal/OneSignal;->setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    return-void
.end method

.method public static setExternalUserId(Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 1577
    invoke-static {p0, v0, p1}, Lcom/onesignal/OneSignal;->setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    return-void
.end method

.method public static setExternalUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1581
    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    return-void
.end method

.method public static setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    .locals 1

    const-string v0, "setExternalUserId()"

    .line 1585
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1588
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/onesignal/OneSignal$11;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    .line 1617
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 1622
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1618
    :cond_2
    :goto_0
    new-instance p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {p0, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    return-void
.end method

.method public static setInFocusDisplaying(I)V
    .locals 0

    .line 2524
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getInFocusDisplaying(I)Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->setInFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)V

    return-void
.end method

.method public static setInFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)V
    .locals 2

    .line 2519
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    .line 2520
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iput-object p0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-void
.end method

.method static setInForeground(Z)V
    .locals 0

    .line 404
    sput-boolean p0, Lcom/onesignal/OneSignal;->inForeground:Z

    return-void
.end method

.method static setLastSessionTime(J)V
    .locals 2

    .line 2493
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_SESSION_TIME"

    invoke-static {v0, v1, p0, p1}, Lcom/onesignal/OneSignalPrefs;->saveLong(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static setLocationShared(Z)V
    .locals 2

    const-string v0, "setLocationShared()"

    .line 2589
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2592
    :cond_0
    sput-boolean p0, Lcom/onesignal/OneSignal;->shareLocation:Z

    if-nez p0, :cond_1

    .line 2594
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->clearLocation()V

    .line 2595
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shareLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/onesignal/OneSignal;->shareLocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method public static setLogLevel(II)V
    .locals 0

    .line 1183
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;

    move-result-object p0

    invoke-static {p1}, Lcom/onesignal/OneSignal;->getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V

    return-void
.end method

.method public static setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V
    .locals 0

    .line 1159
    sput-object p0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object p1, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-void
.end method

.method public static setRequiresUserPrivacyConsent(Z)V
    .locals 1

    .line 1132
    sget-boolean v0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 1133
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Cannot change requiresUserPrivacyConsent() from TRUE to FALSE"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 1137
    :cond_0
    sput-boolean p0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    return-void
.end method

.method static setSessionManager(Lcom/onesignal/OSSessionManager;)V
    .locals 0

    .line 3142
    sput-object p0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    return-void
.end method

.method static setSharedPreferences(Lcom/onesignal/OSSharedPreferences;)V
    .locals 0

    .line 3146
    sput-object p0, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    return-void
.end method

.method public static setSubscription(Z)V
    .locals 2

    const-string v0, "setSubscription()"

    .line 2565
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2568
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$20;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$20;-><init>(Z)V

    .line 2576
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 2583
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2577
    :cond_2
    :goto_0
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Moving subscription action to a waiting task queue."

    invoke-static {p0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2579
    new-instance p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {p0, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    return-void
.end method

.method static setTrackerFactory(Lcom/onesignal/influence/OSTrackerFactory;)V
    .locals 0

    .line 3138
    sput-object p0, Lcom/onesignal/OneSignal;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    return-void
.end method

.method private static setupPrivacyConsent(Landroid/content/Context;)V
    .locals 2

    .line 793
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 794
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.onesignal.PrivacyConsent"

    .line 797
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ENABLE"

    .line 798
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->setRequiresUserPrivacyConsent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 800
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static shouldInitDirectSessionFromNotificationOpen(Landroid/content/Context;ZZZ)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 2243
    sget-boolean p1, Lcom/onesignal/OneSignal;->foreground:Z

    if-nez p1, :cond_0

    .line 2247
    invoke-static {p0}, Lcom/onesignal/OneSignal;->startOrResumeApp(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z
    .locals 3

    .line 1149
    invoke-static {}, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 1151
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was called before the user provided privacy consent. Your application is set to require the user\'s privacy consent before the OneSignal SDK can be initialized. Please ensure the user has provided consent before calling this method. You can check the latest OneSignal consent status by calling OneSignal.userProvidedPrivacyConsent()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static shouldRunTaskThroughQueue()Z
    .locals 3

    .line 959
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 963
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    return v2

    .line 967
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;
    .locals 2

    .line 679
    new-instance v0, Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onesignal/OneSignal$Builder;-><init>(Landroid/content/Context;Lcom/onesignal/OneSignal$1;)V

    return-object v0
.end method

.method private static startLocationUpdate()V
    .locals 5

    .line 988
    new-instance v0, Lcom/onesignal/OneSignal$3;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$3;-><init>()V

    .line 1000
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v1, v1, Lcom/onesignal/OneSignal$Builder;->mPromptLocation:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/onesignal/OneSignal;->promptedLocation:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1002
    :goto_0
    sget-boolean v4, Lcom/onesignal/OneSignal;->promptedLocation:Z

    if-nez v4, :cond_2

    sget-object v4, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v4, v4, Lcom/onesignal/OneSignal$Builder;->mPromptLocation:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    sput-boolean v2, Lcom/onesignal/OneSignal;->promptedLocation:Z

    .line 1004
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2, v1, v3, v0}, Lcom/onesignal/LocationController;->getLocation(Landroid/content/Context;ZZLcom/onesignal/LocationController$LocationHandler;)V

    return-void
.end method

.method static startOrResumeApp(Landroid/content/Context;)Z
    .locals 2

    .line 2225
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x10020000

    .line 2228
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2229
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static startPendingTasks()V
    .locals 2

    .line 916
    sget-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 917
    new-instance v0, Lcom/onesignal/OneSignal$2;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$2;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 926
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static startRegistrationOrOnSession()V
    .locals 2

    .line 974
    sget-boolean v0, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 976
    sput-boolean v0, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    .line 978
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getSyncAsNewSession()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 979
    sput-boolean v1, Lcom/onesignal/OneSignal;->locationFired:Z

    .line 981
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->startLocationUpdate()V

    .line 983
    sput-boolean v1, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    .line 984
    invoke-static {}, Lcom/onesignal/OneSignal;->makeAndroidParamsRequest()V

    return-void
.end method

.method public static syncHashedEmail(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SyncHashedEmail()"

    .line 1435
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1439
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OSUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1442
    :cond_1
    new-instance v0, Lcom/onesignal/OneSignal$8;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$8;-><init>(Ljava/lang/String;)V

    .line 1451
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 1457
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1452
    :cond_3
    :goto_0
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "You should initialize OneSignal before calling syncHashedEmail! Moving this operation to a pending task queue."

    invoke-static {p0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1454
    new-instance p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {p0, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    return-void
.end method

.method static updateEmailIdDependents(Ljava/lang/String;)V
    .locals 2

    .line 2417
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    .line 2418
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSEmailSubscriptionState;->setEmailUserId(Ljava/lang/String;)V

    .line 2420
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "parent_player_id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 2421
    invoke-static {p0}, Lcom/onesignal/OneSignalStateSynchronizer;->updatePushState(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2423
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static updateUserIdDependents(Ljava/lang/String;)V
    .locals 3

    .line 2400
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveUserId(Ljava/lang/String;)V

    .line 2401
    invoke-static {}, Lcom/onesignal/OneSignal;->fireIdsAvailableCallback()V

    .line 2402
    invoke-static {}, Lcom/onesignal/OneSignal;->internalFireGetTagsCallbacks()V

    .line 2404
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSSubscriptionState;->setUserId(Ljava/lang/String;)V

    .line 2406
    sget-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    if-eqz v0, :cond_0

    .line 2407
    iget-object v0, v0, Lcom/onesignal/OneSignal$IAPUpdateJob;->toReport:Lorg/json/JSONArray;

    sget-object v1, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-boolean v1, v1, Lcom/onesignal/OneSignal$IAPUpdateJob;->newAsExisting:Z

    sget-object v2, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-object v2, v2, Lcom/onesignal/OneSignal$IAPUpdateJob;->restResponseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignal;->sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    const/4 v0, 0x0

    .line 2408
    sput-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    .line 2411
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->refreshEmailState()V

    .line 2413
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/onesignal/AdvertisingIdProviderGPS;->getLastValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/onesignal/OneSignalChromeTabAndroidFrame;->setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static userProvidedPrivacyConsent()Z
    .locals 1

    .line 829
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedUserConsentStatus()Z

    move-result v0

    return v0
.end method
