.class Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ActivityLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppFocusRunnable"
.end annotation


# instance fields
.field private backgrounded:Z

.field private completed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/ActivityLifecycleHandler$1;)V
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z
    .locals 0

    .line 280
    iget-boolean p0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    return p0
.end method

.method static synthetic access$202(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;Z)Z
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z
    .locals 0

    .line 280
    iget-boolean p0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->completed:Z

    return p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 284
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    .line 288
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->access$400()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-virtual {v2}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->lostFocus()V

    goto :goto_0

    .line 291
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->onAppLostFocus()V

    .line 292
    iput-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->completed:Z

    return-void
.end method
