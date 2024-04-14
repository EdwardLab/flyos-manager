.class public final Lcom/google/appinventor/components/runtime/util/ContinuationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callWithContinuation(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;-><init>(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static callWithContinuationSync(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 77
    new-instance v1, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;-><init>(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    new-instance p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$4;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$4;-><init>(Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    invoke-static {v1, p0}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil;->callWithContinuation(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 95
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 97
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 98
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception in call"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 103
    :cond_1
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lgnu/mapping/Procedure;Ljava/lang/Class;)Lcom/google/appinventor/components/runtime/util/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/mapping/Procedure;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;

    invoke-direct {v0, p1, p0}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;-><init>(Ljava/lang/Class;Lgnu/mapping/Procedure;)V

    return-object v0
.end method
