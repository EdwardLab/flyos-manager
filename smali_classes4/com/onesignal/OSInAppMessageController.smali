.class Lcom/onesignal/OSInAppMessageController;
.super Ljava/lang/Object;
.source "OSInAppMessageController.java"

# interfaces
.implements Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;
.implements Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;


# static fields
.field public static final IN_APP_MESSAGES_JSON_KEY:Ljava/lang/String; = "in_app_messages"

.field private static final LOCK:Ljava/lang/Object;

.field private static final OS_SAVE_IN_APP_MESSAGE:Ljava/lang/String; = "OS_SAVE_IN_APP_MESSAGE"

.field private static PREFERRED_VARIANT_ORDER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clickedClickIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

.field private final dismissedMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private htmlNetworkRequestAttemptCount:I

.field private final impressionedMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

.field private inAppMessageShowing:Z

.field private inAppMessagingEnabled:Z

.field lastTimeInAppDismissed:Ljava/util/Date;

.field private final messageDisplayQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private redisplayedInAppMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private systemConditionController:Lcom/onesignal/OSSystemConditionController;

.field triggerController:Lcom/onesignal/OSTriggerController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/onesignal/OSInAppMessageController$1;

    invoke-direct {v0}, Lcom/onesignal/OSInAppMessageController$1;-><init>()V

    sput-object v0, Lcom/onesignal/OSInAppMessageController;->PREFERRED_VARIANT_ORDER:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/OSInAppMessageController;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 6

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessagingEnabled:Z

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    .line 69
    iput-object v0, p0, Lcom/onesignal/OSInAppMessageController;->lastTimeInAppDismissed:Ljava/util/Date;

    .line 71
    iput v1, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    .line 75
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    .line 77
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    .line 78
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/onesignal/OSInAppMessageController;->clickedClickIds:Ljava/util/Set;

    .line 79
    new-instance v4, Lcom/onesignal/OSTriggerController;

    invoke-direct {v4, p0}, Lcom/onesignal/OSTriggerController;-><init>(Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;)V

    iput-object v4, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    .line 80
    new-instance v4, Lcom/onesignal/OSSystemConditionController;

    invoke-direct {v4, p0}, Lcom/onesignal/OSSystemConditionController;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;)V

    iput-object v4, p0, Lcom/onesignal/OSInAppMessageController;->systemConditionController:Lcom/onesignal/OSSystemConditionController;

    .line 82
    sget-object v4, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v5, "PREFS_OS_DISPLAYED_IAMS"

    invoke-static {v4, v5, v0}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 88
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v4, "PREFS_OS_IMPRESSIONED_IAMS"

    invoke-static {v1, v4, v0}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_1
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v2, "PREFS_OS_CLICKED_CLICK_IDS_IAMS"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 104
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_2
    invoke-virtual {p0, p1}, Lcom/onesignal/OSInAppMessageController;->initRedisplayData(Lcom/onesignal/OneSignalDbHelper;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcom/onesignal/OSInAppMessageController;->printHttpSuccessForInAppMessageRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/OSInAppMessageController;)Ljava/util/Set;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->queueMessageForDisplay(Lcom/onesignal/OSInAppMessage;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->dismissCurrentMessage(Lcom/onesignal/OSInAppMessage;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->printHttpErrorForInAppMessageRequest(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessagePrompt;)Lcom/onesignal/OSInAppMessagePrompt;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    return-object p1
.end method

.method static synthetic access$400(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->showAlertDialogMessage(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->showMultiplePrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/onesignal/OSInAppMessageController;)Ljava/util/Set;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/onesignal/OSInAppMessageController;->clickedClickIds:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700(Lcom/onesignal/OSInAppMessageController;)Lcom/onesignal/OSInAppMessageRepository;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    return-object p0
.end method

.method static synthetic access$802(Lcom/onesignal/OSInAppMessageController;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/onesignal/OSInAppMessageController;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    return p0
.end method

.method static synthetic access$902(Lcom/onesignal/OSInAppMessageController;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    return p1
.end method

.method static synthetic access$908(Lcom/onesignal/OSInAppMessageController;)I
    .locals 2

    .line 26
    iget v0, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    return v0
.end method

.method private attemptToShowInAppMessage()V
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->systemConditionController:Lcom/onesignal/OSSystemConditionController;

    invoke-virtual {v1}, Lcom/onesignal/OSSystemConditionController;->systemConditionsAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 534
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "In app message not showing due to system condition not correct"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 535
    monitor-exit v0

    return-void

    .line 538
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayFirstIAMOnQueue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/onesignal/OSInAppMessageController;->isInAppMessageShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 541
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "No IAM showing currently, showing first item in the queue!"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessage;

    invoke-direct {p0, v1}, Lcom/onesignal/OSInAppMessageController;->displayMessage(Lcom/onesignal/OSInAppMessage;)V

    .line 543
    monitor-exit v0

    return-void

    .line 546
    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "In app message is currently showing or there are no IAMs left in the queue!"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 547
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private beginProcessingPrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OSInAppMessage;",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessagePrompt;",
            ">;)V"
        }
    .end annotation

    .line 317
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 318
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAM showing prompts from IAM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/onesignal/WebViewManager;->dismissCurrentInAppMessage()V

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->showMultiplePrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private dismissCurrentMessage(Lcom/onesignal/OSInAppMessage;)V
    .locals 5

    .line 601
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSSessionManager;->onDirectInfluenceFromIAMClickFinished()V

    .line 603
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    if-eqz v0, :cond_0

    .line 604
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Stop evaluateMessageDisplayQueue because prompt is currently displayed"

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 608
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    .line 609
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 610
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz p1, :cond_1

    .line 611
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 612
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Message already removed from the queue!"

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 613
    monitor-exit v1

    return-void

    .line 615
    :cond_1
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/OSInAppMessage;

    iget-object p1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    .line 616
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In app message with id, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dismissed (removed) from the queue!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 621
    :cond_2
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 622
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In app message on queue available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/OSInAppMessage;

    iget-object v3, v3, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 623
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/OSInAppMessage;

    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->displayMessage(Lcom/onesignal/OSInAppMessage;)V

    goto :goto_0

    .line 625
    :cond_3
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "In app message dismissed evaluating messages"

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 626
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    .line 628
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private displayMessage(Lcom/onesignal/OSInAppMessage;)V
    .locals 2

    .line 671
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessagingEnabled:Z

    if-nez v0, :cond_0

    .line 672
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "In app messaging is currently paused, iam will not be shown!"

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 676
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    .line 678
    invoke-static {p1}, Lcom/onesignal/OSInAppMessageController;->htmlPathForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;

    move-result-object v0

    .line 679
    new-instance v1, Lcom/onesignal/OSInAppMessageController$10;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OSInAppMessageController$10;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/onesignal/OneSignalRestClient;->get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    return-void
.end method

.method private evaluateInAppMessages()V
    .locals 4

    .line 198
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Starting evaluateInAppMessages"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessage;

    .line 202
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    invoke-virtual {v2, v1}, Lcom/onesignal/OSTriggerController;->evaluateMessageTriggers(Lcom/onesignal/OSInAppMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-direct {p0, v1}, Lcom/onesignal/OSInAppMessageController;->setDataForRedisplay(Lcom/onesignal/OSInAppMessage;)V

    .line 205
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    iget-object v3, v1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/onesignal/OSInAppMessage;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    invoke-direct {p0, v1}, Lcom/onesignal/OSInAppMessageController;->queueMessageForDisplay(Lcom/onesignal/OSInAppMessage;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fireClickAction(Lcom/onesignal/OSInAppMessageAction;)V
    .locals 2

    .line 405
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    sget-object v1, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->BROWSER:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    if-ne v0, v1, :cond_0

    .line 407
    iget-object p1, p1, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/onesignal/OSUtils;->openURLInBrowser(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    sget-object v1, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->IN_APP_WEBVIEW:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    if-ne v0, v1, :cond_1

    .line 409
    iget-object p1, p1, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/onesignal/OneSignalChromeTab;->open(Ljava/lang/String;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private fireOutcomesForClick(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessageOutcome;",
            ">;)V"
        }
    .end annotation

    .line 372
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onesignal/OSSessionManager;->onDirectInfluenceFromIAMClick(Ljava/lang/String;)V

    .line 373
    invoke-static {p2}, Lcom/onesignal/OneSignal;->sendClickActionOutcomes(Ljava/util/List;)V

    return-void
.end method

.method private firePublicClickHandler(Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V
    .locals 1

    .line 388
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mInAppMessageClickHandler:Lcom/onesignal/OneSignal$InAppMessageClickHandler;

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    new-instance v0, Lcom/onesignal/OSInAppMessageController$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/onesignal/OSInAppMessageController$6;-><init>(Lcom/onesignal/OSInAppMessageController;Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fireRESTCallForClick(Lcom/onesignal/OSInAppMessage;Lcom/onesignal/OSInAppMessageAction;)V
    .locals 3

    .line 414
    invoke-static {p1}, Lcom/onesignal/OSInAppMessageController;->variantIdForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    iget-object v1, p2, Lcom/onesignal/OSInAppMessageAction;->clickId:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessageRedisplayStats;->isRedisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/onesignal/OSInAppMessage;->isClickAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 423
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 426
    :cond_2
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {p1, v1}, Lcom/onesignal/OSInAppMessage;->addClickId(Ljava/lang/String;)V

    .line 431
    :try_start_0
    new-instance v2, Lcom/onesignal/OSInAppMessageController$7;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/onesignal/OSInAppMessageController$7;-><init>(Lcom/onesignal/OSInAppMessageController;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in_app_messages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/click"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/onesignal/OSInAppMessageController$8;

    invoke-direct {v0, p0, p2}, Lcom/onesignal/OSInAppMessageController$8;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessageAction;)V

    invoke-static {p1, v2, v0}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 460
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 461
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "Unable to execute in-app message action HTTP request due to invalid JSON"

    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private fireTagCallForClick(Lcom/onesignal/OSInAppMessageAction;)V
    .locals 1

    .line 377
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    if-eqz v0, :cond_1

    .line 378
    iget-object p1, p1, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    .line 380
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageTag;->getTagsToAdd()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageTag;->getTagsToAdd()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageTag;->getTagsToRemove()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageTag;->getTagsToRemove()Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->deleteTags(Lorg/json/JSONArray;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    :cond_1
    return-void
.end method

.method private hasMessageTriggerChanged(Lcom/onesignal/OSInAppMessage;)Z
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    invoke-virtual {v0, p1}, Lcom/onesignal/OSTriggerController;->messageHasOnlyDynamicTriggers(Lcom/onesignal/OSInAppMessage;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->isDisplayedInSession()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 509
    :cond_0
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->isDisplayedInSession()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 511
    :goto_0
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->isTriggerChanged()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method private static htmlPathForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;
    .locals 3

    .line 660
    invoke-static {p0}, Lcom/onesignal/OSInAppMessageController;->variantIdForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 663
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find a variant for in-app message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 667
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in_app_messages/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/variants/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/html?app_id="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private logInAppMessagePreviewActions(Lcom/onesignal/OSInAppMessageAction;)V
    .locals 3

    .line 307
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags detected inside of the action click payload, ignoring because action came from IAM preview:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessageTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 310
    :cond_0
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 311
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outcomes detected inside of the action click payload, ignoring because action came from IAM preview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private makeRedisplayMessagesAvailableWithTriggers(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessage;

    .line 806
    invoke-virtual {v1}, Lcom/onesignal/OSInAppMessage;->isTriggerChanged()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    .line 807
    invoke-virtual {v2, v1, p1}, Lcom/onesignal/OSTriggerController;->isTriggerOnMessage(Lcom/onesignal/OSInAppMessage;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 808
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trigger changed for message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onesignal/OSInAppMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 809
    invoke-virtual {v1, v2}, Lcom/onesignal/OSInAppMessage;->setTriggerChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private persistInAppMessage(Lcom/onesignal/OSInAppMessage;)V
    .locals 4

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 633
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/onesignal/OSInAppMessageRedisplayStats;->setLastDisplayTime(J)V

    .line 634
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;->incrementDisplayQuantity()V

    const/4 v0, 0x0

    .line 635
    invoke-virtual {p1, v0}, Lcom/onesignal/OSInAppMessage;->setTriggerChanged(Z)V

    const/4 v0, 0x1

    .line 636
    invoke-virtual {p1, v0}, Lcom/onesignal/OSInAppMessage;->setDisplayedInSession(Z)V

    .line 638
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OSInAppMessageController$9;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OSInAppMessageController$9;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V

    const-string v2, "OS_SAVE_IN_APP_MESSAGE"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 648
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistInAppMessageForRedisplay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with msg array data: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method private static printHttpErrorForInAppMessageRequest(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 233
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error while attempting in-app message "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " request: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method private static printHttpSuccessForInAppMessageRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 229
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successful post for in-app message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " request: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method private processInAppMessageJson(Lorg/json/JSONArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/onesignal/OSInAppMessageController;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 184
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 185
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 186
    new-instance v4, Lcom/onesignal/OSInAppMessage;

    invoke-direct {v4, v3}, Lcom/onesignal/OSInAppMessage;-><init>(Lorg/json/JSONObject;)V

    .line 188
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    return-void

    :catchall_0
    move-exception p1

    .line 192
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private queueMessageForDisplay(Lcom/onesignal/OSInAppMessage;)V
    .locals 4

    .line 519
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In app message with id, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", added to the queue"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 526
    :cond_0
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->attemptToShowInAppMessage()V

    .line 527
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private resetRedisplayMessagesBySession()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessage;

    const/4 v2, 0x0

    .line 177
    invoke-virtual {v1, v2}, Lcom/onesignal/OSInAppMessage;->setDisplayedInSession(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setDataForRedisplay(Lcom/onesignal/OSInAppMessage;)V
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 479
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OSInAppMessage;

    .line 483
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onesignal/OSInAppMessageRedisplayStats;->setDisplayStats(Lcom/onesignal/OSInAppMessageRedisplayStats;)V

    .line 484
    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessage;->isDisplayedInSession()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onesignal/OSInAppMessage;->setDisplayedInSession(Z)V

    .line 486
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->hasMessageTriggerChanged(Lcom/onesignal/OSInAppMessage;)Z

    move-result v0

    .line 487
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataForRedisplay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " triggerHasChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;->isDelayTimeSatisfied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;->shouldDisplayAgain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataForRedisplay message available for redisplay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->clearClickIds()V

    :cond_0
    return-void
.end method

.method private showAlertDialogMessage(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OSInAppMessage;",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessagePrompt;",
            ">;)V"
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget v1, Lcom/onesignal/R$string;->location_not_available_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget v2, Lcom/onesignal/R$string;->location_not_available_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 360
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onesignal/OSInAppMessageController$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OSInAppMessageController$5;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    const p1, 0x104000a

    .line 363
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showMultiplePrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OSInAppMessage;",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessagePrompt;",
            ">;)V"
        }
    .end annotation

    .line 326
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessagePrompt;

    .line 328
    invoke-virtual {v1}, Lcom/onesignal/OSInAppMessagePrompt;->hasPrompted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    if-eqz v0, :cond_2

    .line 335
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAM prompt to handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessagePrompt;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessagePrompt;->setPrompted(Z)V

    .line 337
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    new-instance v1, Lcom/onesignal/OSInAppMessageController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OSInAppMessageController$4;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessagePrompt;->handlePrompt(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;)V

    goto :goto_0

    .line 351
    :cond_2
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No IAM prompt to handle, dismiss message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0, p1}, Lcom/onesignal/OSInAppMessageController;->messageWasDismissed(Lcom/onesignal/OSInAppMessage;)V

    :goto_0
    return-void
.end method

.method private static variantIdForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;
    .locals 4

    .line 213
    invoke-static {}, Lcom/onesignal/OSUtils;->getCorrectedLanguage()Ljava/lang/String;

    move-result-object v0

    .line 215
    sget-object v1, Lcom/onesignal/OSInAppMessageController;->PREFERRED_VARIANT_ORDER:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    iget-object v3, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object p0, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 220
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "default"

    .line 222
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method addTriggers(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 822
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add trigger called with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    invoke-virtual {v0, p1}, Lcom/onesignal/OSTriggerController;->addTriggers(Ljava/util/Map;)V

    .line 824
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->makeRedisplayMessagesAvailableWithTriggers(Ljava/util/Collection;)V

    .line 825
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    return-void
.end method

.method displayPreviewMessage(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 723
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in_app_messages/device_preview?preview_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&app_id="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 726
    new-instance v0, Lcom/onesignal/OSInAppMessageController$11;

    invoke-direct {v0, p0}, Lcom/onesignal/OSInAppMessageController$11;-><init>(Lcom/onesignal/OSInAppMessageController;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/onesignal/OneSignalRestClient;->get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    return-void
.end method

.method getCurrentDisplayedInAppMessage()Lcom/onesignal/OSInAppMessage;
    .locals 2

    .line 557
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OSInAppMessage;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInAppMessageDisplayQueue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method getInAppMessageRepository(Lcom/onesignal/OneSignalDbHelper;)Lcom/onesignal/OSInAppMessageRepository;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/onesignal/OSInAppMessageRepository;

    invoke-direct {v0, p1}, Lcom/onesignal/OSInAppMessageRepository;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    return-object p1
.end method

.method public getRedisplayedInAppMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    return-object v0
.end method

.method getTriggerValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    invoke-virtual {v0, p1}, Lcom/onesignal/OSTriggerController;->getTriggerValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected initRedisplayData(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 2

    .line 117
    invoke-virtual {p0, p1}, Lcom/onesignal/OSInAppMessageController;->getInAppMessageRepository(Lcom/onesignal/OneSignalDbHelper;)Lcom/onesignal/OSInAppMessageRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    .line 118
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageRepository;->getCachedInAppMessages()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    .line 120
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "redisplayedInAppMessages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method initWithCachedInAppMessages()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWithCachedInAppMessages with already in memory messages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "PREFS_OS_CACHED_IAMS"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWithCachedInAppMessages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 146
    :cond_1
    sget-object v1, Lcom/onesignal/OSInAppMessageController;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 150
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 152
    :cond_2
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/onesignal/OSInAppMessageController;->processInAppMessageJson(Lorg/json/JSONArray;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 154
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 156
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method isInAppMessageShowing()Z
    .locals 1

    .line 551
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    return v0
.end method

.method public messageDynamicTriggerCompleted(Ljava/lang/String;)V
    .locals 3

    .line 764
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageDynamicTriggerCompleted called with triggerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 765
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 766
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 767
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->makeRedisplayMessagesAvailableWithTriggers(Ljava/util/Collection;)V

    return-void
.end method

.method public messageTriggerConditionChanged()V
    .locals 2

    .line 779
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "messageTriggerConditionChanged called"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 783
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    return-void
.end method

.method messageWasDismissed(Lcom/onesignal/OSInAppMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 564
    invoke-virtual {p0, p1, v0}, Lcom/onesignal/OSInAppMessageController;->messageWasDismissed(Lcom/onesignal/OSInAppMessage;Z)V

    return-void
.end method

.method messageWasDismissed(Lcom/onesignal/OSInAppMessage;Z)V
    .locals 2

    .line 568
    iget-boolean v0, p1, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    if-nez v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_0

    .line 572
    sget-object p2, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    const-string v1, "PREFS_OS_DISPLAYED_IAMS"

    invoke-static {p2, v1, v0}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 578
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageController;->lastTimeInAppDismissed:Ljava/util/Date;

    .line 580
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->persistInAppMessage(Lcom/onesignal/OSInAppMessage;)V

    .line 582
    :cond_0
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSInAppMessageController messageWasDismissed dismissedMessages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 585
    :cond_1
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->dismissCurrentMessage(Lcom/onesignal/OSInAppMessage;)V

    return-void
.end method

.method messageWasDismissedByBackPress(Lcom/onesignal/OSInAppMessage;)V
    .locals 3

    .line 589
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSInAppMessageController messageWasDismissed by back press: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 591
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->dismissCurrentMessage(Lcom/onesignal/OSInAppMessage;)V

    return-void
.end method

.method onMessageActionOccurredOnMessage(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 285
    new-instance v0, Lcom/onesignal/OSInAppMessageAction;

    invoke-direct {v0, p2}, Lcom/onesignal/OSInAppMessageAction;-><init>(Lorg/json/JSONObject;)V

    .line 286
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->takeActionAsUnique()Z

    move-result p2

    iput-boolean p2, v0, Lcom/onesignal/OSInAppMessageAction;->firstClick:Z

    .line 288
    iget-object p2, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/onesignal/OSInAppMessageController;->firePublicClickHandler(Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V

    .line 289
    iget-object p2, v0, Lcom/onesignal/OSInAppMessageAction;->prompts:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->beginProcessingPrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    .line 290
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->fireClickAction(Lcom/onesignal/OSInAppMessageAction;)V

    .line 291
    invoke-direct {p0, p1, v0}, Lcom/onesignal/OSInAppMessageController;->fireRESTCallForClick(Lcom/onesignal/OSInAppMessage;Lcom/onesignal/OSInAppMessageAction;)V

    .line 292
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->fireTagCallForClick(Lcom/onesignal/OSInAppMessageAction;)V

    .line 293
    iget-object p1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    iget-object p2, v0, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->fireOutcomesForClick(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method onMessageActionOccurredOnPreview(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/onesignal/OSInAppMessageAction;

    invoke-direct {v0, p2}, Lcom/onesignal/OSInAppMessageAction;-><init>(Lorg/json/JSONObject;)V

    .line 298
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->takeActionAsUnique()Z

    move-result p2

    iput-boolean p2, v0, Lcom/onesignal/OSInAppMessageAction;->firstClick:Z

    .line 300
    iget-object p2, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/onesignal/OSInAppMessageController;->firePublicClickHandler(Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V

    .line 301
    iget-object p2, v0, Lcom/onesignal/OSInAppMessageAction;->prompts:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->beginProcessingPrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    .line 302
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->fireClickAction(Lcom/onesignal/OSInAppMessageAction;)V

    .line 303
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->logInAppMessagePreviewActions(Lcom/onesignal/OSInAppMessageAction;)V

    return-void
.end method

.method onMessageWasShown(Lcom/onesignal/OSInAppMessage;)V
    .locals 3

    .line 237
    iget-boolean v0, p1, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    if-eqz v0, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-static {p1}, Lcom/onesignal/OSInAppMessageController;->variantIdForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 252
    :cond_2
    :try_start_0
    new-instance v1, Lcom/onesignal/OSInAppMessageController$2;

    invoke-direct {v1, p0, v0}, Lcom/onesignal/OSInAppMessageController$2;-><init>(Lcom/onesignal/OSInAppMessageController;Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in_app_messages/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/impression"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/onesignal/OSInAppMessageController$3;

    invoke-direct {v2, p0, p1}, Lcom/onesignal/OSInAppMessageController$3;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 279
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 280
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Unable to execute in-app message impression HTTP request due to invalid JSON"

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method receivedInAppMessageJson(Lorg/json/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 165
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PREFS_OS_CACHED_IAMS"

    .line 165
    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->resetRedisplayMessagesBySession()V

    .line 172
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->processInAppMessageJson(Lorg/json/JSONArray;)V

    return-void
.end method

.method removeTriggersForKeys(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 829
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove trigger called with keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    invoke-virtual {v0, p1}, Lcom/onesignal/OSTriggerController;->removeTriggersForKeys(Ljava/util/Collection;)V

    .line 831
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->makeRedisplayMessagesAvailableWithTriggers(Ljava/util/Collection;)V

    .line 832
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    return-void
.end method

.method resetSessionLaunchTime()V
    .locals 0

    .line 124
    invoke-static {}, Lcom/onesignal/OSDynamicTriggerController;->resetSessionLaunchTime()V

    return-void
.end method

.method setInAppMessagingEnabled(Z)V
    .locals 0

    .line 836
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessagingEnabled:Z

    if-eqz p1, :cond_0

    .line 838
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    :cond_0
    return-void
.end method

.method public systemConditionChanged()V
    .locals 0

    .line 794
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->attemptToShowInAppMessage()V

    return-void
.end method
