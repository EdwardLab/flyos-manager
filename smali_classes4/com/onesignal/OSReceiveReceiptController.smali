.class Lcom/onesignal/OSReceiveReceiptController;
.super Ljava/lang/Object;
.source "OSReceiveReceiptController.java"


# static fields
.field private static sInstance:Lcom/onesignal/OSReceiveReceiptController;


# instance fields
.field private final repository:Lcom/onesignal/OSReceiveReceiptRepository;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/onesignal/OSReceiveReceiptRepository;

    invoke-direct {v0}, Lcom/onesignal/OSReceiveReceiptRepository;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSReceiveReceiptController;->repository:Lcom/onesignal/OSReceiveReceiptRepository;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/onesignal/OSReceiveReceiptController;
    .locals 2

    const-class v0, Lcom/onesignal/OSReceiveReceiptController;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/onesignal/OSReceiveReceiptController;->sInstance:Lcom/onesignal/OSReceiveReceiptController;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/onesignal/OSReceiveReceiptController;

    invoke-direct {v1}, Lcom/onesignal/OSReceiveReceiptController;-><init>()V

    sput-object v1, Lcom/onesignal/OSReceiveReceiptController;->sInstance:Lcom/onesignal/OSReceiveReceiptController;

    .line 43
    :cond_0
    sget-object v1, Lcom/onesignal/OSReceiveReceiptController;->sInstance:Lcom/onesignal/OSReceiveReceiptController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isReceiveReceiptEnabled()Z
    .locals 3

    .line 70
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "PREFS_OS_RECEIVE_RECEIPTS_ENABLED"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method sendReceiveReceipt(Ljava/lang/String;)V
    .locals 5

    .line 47
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-direct {p0}, Lcom/onesignal/OSReceiveReceiptController;->isReceiveReceiptEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 51
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "sendReceiveReceipt disable"

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_2
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReceiveReceipt appId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " playerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " notificationId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/onesignal/OSReceiveReceiptController;->repository:Lcom/onesignal/OSReceiveReceiptRepository;

    new-instance v3, Lcom/onesignal/OSReceiveReceiptController$1;

    invoke-direct {v3, p0, p1}, Lcom/onesignal/OSReceiveReceiptController$1;-><init>(Lcom/onesignal/OSReceiveReceiptController;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/onesignal/OSReceiveReceiptRepository;->sendReceiveReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    return-void
.end method
