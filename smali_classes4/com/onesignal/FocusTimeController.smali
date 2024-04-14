.class Lcom/onesignal/FocusTimeController;
.super Ljava/lang/Object;
.source "FocusTimeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;,
        Lcom/onesignal/FocusTimeController$FocusTimeProcessorAttributed;,
        Lcom/onesignal/FocusTimeController$FocusTimeProcessorUnattributed;,
        Lcom/onesignal/FocusTimeController$FocusEventType;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/onesignal/FocusTimeController;


# instance fields
.field private focusTimeProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;",
            ">;"
        }
    .end annotation
.end field

.field private timeFocusedAtMs:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;

    .line 33
    new-instance v1, Lcom/onesignal/FocusTimeController$FocusTimeProcessorUnattributed;

    invoke-direct {v1}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorUnattributed;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/onesignal/FocusTimeController$FocusTimeProcessorAttributed;

    invoke-direct {v1}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorAttributed;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 34
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/FocusTimeController;->focusTimeProcessors:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/onesignal/FocusTimeController;
    .locals 2

    const-class v0, Lcom/onesignal/FocusTimeController;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/onesignal/FocusTimeController;->sInstance:Lcom/onesignal/FocusTimeController;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/onesignal/FocusTimeController;

    invoke-direct {v1}, Lcom/onesignal/FocusTimeController;-><init>()V

    sput-object v1, Lcom/onesignal/FocusTimeController;->sInstance:Lcom/onesignal/FocusTimeController;

    .line 45
    :cond_0
    sget-object v1, Lcom/onesignal/FocusTimeController;->sInstance:Lcom/onesignal/FocusTimeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getTimeFocusedElapsed()Ljava/lang/Long;
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/onesignal/FocusTimeController;->timeFocusedAtMs:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 93
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/onesignal/FocusTimeController;->timeFocusedAtMs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-long v2, v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    const-wide/32 v4, 0x15180

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private giveProcessorsValidFocusTime(Ljava/util/List;Lcom/onesignal/FocusTimeController$FocusEventType;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;",
            "Lcom/onesignal/FocusTimeController$FocusEventType;",
            ")Z"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/onesignal/FocusTimeController;->getTimeFocusedElapsed()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/onesignal/FocusTimeController;->focusTimeProcessors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4, p1, p2}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->access$200(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;JLjava/util/List;Lcom/onesignal/FocusTimeController$FocusEventType;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method appBackgrounded()V
    .locals 2

    .line 53
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSSessionManager;->getSessionInfluences()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onesignal/FocusTimeController$FocusEventType;->BACKGROUND:Lcom/onesignal/FocusTimeController$FocusEventType;

    invoke-direct {p0, v0, v1}, Lcom/onesignal/FocusTimeController;->giveProcessorsValidFocusTime(Ljava/util/List;Lcom/onesignal/FocusTimeController$FocusEventType;)Z

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/onesignal/FocusTimeController;->timeFocusedAtMs:Ljava/lang/Long;

    return-void
.end method

.method appForegrounded()V
    .locals 2

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/FocusTimeController;->timeFocusedAtMs:Ljava/lang/Long;

    return-void
.end method

.method doBlockingBackgroundSyncOfUnsentTime()V
    .locals 2

    .line 69
    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/onesignal/FocusTimeController;->focusTimeProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;

    .line 73
    invoke-static {v1}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->access$100(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method onSessionEnded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)V"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/onesignal/FocusTimeController$FocusEventType;->END_SESSION:Lcom/onesignal/FocusTimeController$FocusEventType;

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/onesignal/FocusTimeController;->giveProcessorsValidFocusTime(Ljava/util/List;Lcom/onesignal/FocusTimeController$FocusEventType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/onesignal/FocusTimeController;->focusTimeProcessors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;

    .line 64
    invoke-static {v1, v0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->access$000(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;Lcom/onesignal/FocusTimeController$FocusEventType;)V

    goto :goto_0

    :cond_0
    return-void
.end method
