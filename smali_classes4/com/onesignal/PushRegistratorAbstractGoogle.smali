.class abstract Lcom/onesignal/PushRegistratorAbstractGoogle;
.super Ljava/lang/Object;
.source "PushRegistratorAbstractGoogle.java"

# interfaces
.implements Lcom/onesignal/PushRegistrator;


# static fields
.field private static REGISTRATION_RETRY_BACKOFF_MS:I = 0x2710

.field private static REGISTRATION_RETRY_COUNT:I = 0x5


# instance fields
.field private firedCallback:Z

.field private registerThread:Ljava/lang/Thread;

.field private registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 37
    sget v0, Lcom/onesignal/PushRegistratorAbstractGoogle;->REGISTRATION_RETRY_COUNT:I

    return v0
.end method

.method static synthetic access$100(Lcom/onesignal/PushRegistratorAbstractGoogle;Ljava/lang/String;I)Z
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/onesignal/PushRegistratorAbstractGoogle;->attemptRegistration(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 37
    sget v0, Lcom/onesignal/PushRegistratorAbstractGoogle;->REGISTRATION_RETRY_BACKOFF_MS:I

    return v0
.end method

.method private attemptRegistration(Ljava/lang/String;I)Z
    .locals 6

    const-string v0, " Token"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 97
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/onesignal/PushRegistratorAbstractGoogle;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device registered, push token = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    invoke-interface {v3, p1, v2}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    .line 122
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown error getting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/PushRegistratorAbstractGoogle;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    iget-object p1, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/16 p2, -0xc

    invoke-interface {p1, v1, p2}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    return v2

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error Getting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/PushRegistratorAbstractGoogle;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    iget-boolean p1, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->firedCallback:Z

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/16 p2, -0xb

    invoke-interface {p1, v1, p2}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    :cond_0
    return v2

    .line 109
    :cond_1
    sget v0, Lcom/onesignal/PushRegistratorAbstractGoogle;->REGISTRATION_RETRY_COUNT:I

    sub-int/2addr v0, v2

    if-lt p2, v0, :cond_2

    .line 110
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry count of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/onesignal/PushRegistratorAbstractGoogle;->REGISTRATION_RETRY_COUNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " exceed! Could not get a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/PushRegistratorAbstractGoogle;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Token."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 112
    :cond_2
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'Google Play services\' returned SERVICE_NOT_AVAILABLE error. Current retry count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    .line 115
    iget-object p1, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/16 p2, -0x9

    invoke-interface {p1, v1, p2}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    .line 116
    iput-boolean v2, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->firedCallback:Z

    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private internalRegisterForPush(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 56
    :try_start_0
    invoke-static {}, Lcom/onesignal/OSUtils;->isGMSInstalledAndEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lcom/onesignal/PushRegistratorAbstractGoogle;->registerInBackground(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lcom/onesignal/GooglePlayServicesUpgradePrompt;->showUpdateGPSDialog()V

    .line 60
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "\'Google Play services\' app not installed or disabled on the device."

    invoke-static {p1, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/4 v1, -0x7

    invoke-interface {p1, v0, v1}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 64
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not register with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Lcom/onesignal/PushRegistratorAbstractGoogle;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to an issue with your AndroidManifest.xml or with \'Google Play services\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v1, v2, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    iget-object p1, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/4 v1, -0x8

    invoke-interface {p1, v0, v1}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private isValidProjectNumber(Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 133
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 140
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Missing Google Project number!\nPlease enter a Google Project number / Sender ID on under App Settings > Android > Configuration on the OneSignal dashboard."

    invoke-static {p1, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, -0x6

    .line 141
    invoke-interface {p2, p1, v1}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    return v0

    :cond_0
    return v1
.end method

.method private declared-synchronized registerInBackground(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 79
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/PushRegistratorAbstractGoogle$1;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/PushRegistratorAbstractGoogle$1;-><init>(Lcom/onesignal/PushRegistratorAbstractGoogle;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registerThread:Ljava/lang/Thread;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method abstract getProviderName()Ljava/lang/String;
.end method

.method abstract getToken(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .locals 0

    .line 48
    iput-object p3, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/onesignal/PushRegistratorAbstractGoogle;->isValidProjectNumber(Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    invoke-direct {p0, p2}, Lcom/onesignal/PushRegistratorAbstractGoogle;->internalRegisterForPush(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
