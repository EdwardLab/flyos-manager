.class public Lcom/google/appinventor/components/runtime/util/AsynchUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AsynchUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/Synchronizer<",
            "TT;>;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "TT;>;)V"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Waiting for synchronizer result"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->waitfor()V

    .line 77
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    .line 81
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_1

    .line 82
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 84
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public static isUiThread()Z
    .locals 2

    .line 59
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static runAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    .line 42
    new-instance v0, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 54
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static runAsynchronously(Ljava/lang/Runnable;)V
    .locals 1

    .line 29
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
