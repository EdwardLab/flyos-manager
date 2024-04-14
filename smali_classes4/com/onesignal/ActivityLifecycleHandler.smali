.class Lcom/onesignal/ActivityLifecycleHandler;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Lcom/onesignal/OSSystemConditionController$OSSystemConditionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;,
        Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;,
        Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;,
        Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;
    }
.end annotation


# static fields
.field private static final FOCUS_LOST_WORKER_TAG:Ljava/lang/String; = "FOCUS_LOST_WORKER_TAG"

.field private static final SYNC_LOCK:Ljava/lang/Object;

.field static focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

.field private static final sActivityAvailableListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKeyboardListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSystemConditionObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private curActivity:Landroid/app/Activity;

.field private nextResumeIsFirstActivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->SYNC_LOCK:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    .line 65
    new-instance v0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-direct {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler;->nextResumeIsFirstActivity:Z

    return-void
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .line 46
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    return-object v0
.end method

.method private handleFocus()V
    .locals 1

    .line 235
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->hasBackgrounded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler;->nextResumeIsFirstActivity:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->stopScheduledRunnable()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0}, Lcom/onesignal/ActivityLifecycleHandler;->setNextResumeIsFirstActivity(Z)V

    .line 237
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->resetBackgroundState()V

    .line 238
    invoke-static {}, Lcom/onesignal/OneSignal;->onAppFocus()V

    :goto_1
    return-void
.end method

.method private handleLostFocus()V
    .locals 3

    .line 231
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    new-instance v1, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;-><init>(Lcom/onesignal/ActivityLifecycleHandler$1;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->runRunnable(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)V

    return-void
.end method

.method private logCurActivity()V
    .locals 4

    .line 129
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curActivity is NOW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method private logOrientationChange(ILandroid/app/Activity;)V
    .locals 4

    const-string v0, ") on activity: "

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 135
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration Orientation Change: LANDSCAPE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 137
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration Orientation Change: PORTRAIT ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onOrientationChanged(Landroid/app/Activity;)V
    .locals 6

    .line 148
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    .line 149
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-virtual {v1, p1}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->stopped(Landroid/app/Activity;)V

    goto :goto_0

    .line 154
    :cond_0
    sget-object p1, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    iget-object v1, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->available(Landroid/app/Activity;)V

    goto :goto_1

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 159
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 160
    new-instance v2, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionHandler;Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$1;)V

    .line 161
    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 162
    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 164
    :cond_2
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler;->handleFocus()V

    return-void
.end method


# virtual methods
.method addActivityAvailableListener(Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V
    .locals 1

    .line 192
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object p1, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p2, p1}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->available(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method addSystemConditionObserver(Ljava/lang/String;Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 170
    new-instance v1, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionHandler;Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$1;)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 172
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_0
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCurActivity()Landroid/app/Activity;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    return-object v0
.end method

.method onActivityCreated(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 117
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 122
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    return-void
.end method

.method onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 92
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 95
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    return-void
.end method

.method onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 85
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/onesignal/ActivityLifecycleHandler;->setCurActivity(Landroid/app/Activity;)V

    .line 87
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    .line 88
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler;->handleFocus()V

    return-void
.end method

.method onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 102
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 106
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    .line 109
    :cond_0
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-virtual {v1, p1}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->stopped(Landroid/app/Activity;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    return-void
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;Landroid/app/Activity;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/onesignal/OSUtils;->hasConfigChangeFlag(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1, p2}, Lcom/onesignal/ActivityLifecycleHandler;->logOrientationChange(ILandroid/app/Activity;)V

    .line 74
    invoke-direct {p0, p2}, Lcom/onesignal/ActivityLifecycleHandler;->onOrientationChanged(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method removeActivityAvailableListener(Ljava/lang/String;)V
    .locals 1

    .line 198
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeSystemConditionObserver(Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 180
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 181
    invoke-virtual {v0, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 187
    :cond_1
    :goto_0
    sget-object p2, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object p2, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCurActivity(Landroid/app/Activity;)V
    .locals 6

    .line 206
    iput-object p1, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 207
    sget-object p1, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    iget-object v1, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->available(Landroid/app/Activity;)V

    goto :goto_0

    .line 212
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 213
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 214
    new-instance v2, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionHandler;Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$1;)V

    .line 215
    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 216
    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method setNextResumeIsFirstActivity(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/onesignal/ActivityLifecycleHandler;->nextResumeIsFirstActivity:Z

    return-void
.end method
