.class final Lcom/onesignal/OneSignal$14;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->getTags(Lcom/onesignal/OneSignal$GetTagsHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$GetTagsHandler;)V
    .locals 0

    .line 1862
    iput-object p1, p0, Lcom/onesignal/OneSignal$14;->val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1865
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2200()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1866
    :try_start_0
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2200()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/onesignal/OneSignal$14;->val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1870
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    monitor-exit v0

    return-void

    .line 1871
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1873
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1874
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "You must initialize OneSignal before getting tags! Moving this tag operation to a pending queue."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1876
    sget-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/onesignal/OneSignal$14$1;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$14$1;-><init>(Lcom/onesignal/OneSignal$14;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 1885
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2300()V

    return-void

    :catchall_0
    move-exception v1

    .line 1871
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
