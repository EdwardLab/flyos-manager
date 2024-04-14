.class Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;
.super Landroid/os/HandlerThread;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/UserStateSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkHandlerThread"
.end annotation


# static fields
.field static final MAX_RETRIES:I = 0x3

.field static final NETWORK_CALL_DELAY_TO_BUFFER_MS:I = 0x1388

.field protected static final NETWORK_HANDLER_USERSTATE:I


# instance fields
.field currentRetry:I

.field mHandler:Landroid/os/Handler;

.field mType:I

.field final synthetic this$0:Lcom/onesignal/UserStateSynchronizer;


# direct methods
.method constructor <init>(Lcom/onesignal/UserStateSynchronizer;I)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const-string p1, "OSH_NetworkHandlerThread"

    .line 85
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    .line 86
    iput p2, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mType:I

    .line 87
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->start()V

    .line 88
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getNewRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 103
    iget v0, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread$1;-><init>(Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;)V

    return-object v0
.end method


# virtual methods
.method doRetry()Z
    .locals 7

    .line 124
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 125
    :try_start_0
    iget v1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 129
    iget v1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    .line 130
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->getNewRunnable()Ljava/lang/Runnable;

    move-result-object v2

    iget v3, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    mul-int/lit16 v3, v3, 0x3a98

    int-to-long v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method runNewJobDelayed()V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v0}, Lcom/onesignal/UserStateSynchronizer;->access$000(Lcom/onesignal/UserStateSynchronizer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    monitor-enter v0

    const/4 v1, 0x0

    .line 96
    :try_start_0
    iput v1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    .line 97
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->getNewRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopScheduledRunnable()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
