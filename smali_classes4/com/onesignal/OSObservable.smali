.class Lcom/onesignal/OSObservable;
.super Ljava/lang/Object;
.source "OSObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObserverType:",
        "Ljava/lang/Object;",
        "StateType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private fireOnMainThread:Z

.field private methodName:Ljava/lang/String;

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/onesignal/OSObservable;->methodName:Ljava/lang/String;

    .line 43
    iput-boolean p2, p0, Lcom/onesignal/OSObservable;->fireOnMainThread:Z

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addObserver(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TObserverType;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addObserverStrong(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TObserverType;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method notifyChange(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TStateType;)Z"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 70
    instance-of v4, v3, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    .line 71
    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    :cond_1
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 78
    :try_start_0
    iget-object v6, p0, Lcom/onesignal/OSObservable;->methodName:Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 79
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 80
    iget-boolean v6, p0, Lcom/onesignal/OSObservable;->fireOnMainThread:Z

    if-eqz v6, :cond_2

    .line 81
    new-instance v6, Lcom/onesignal/OSObservable$1;

    invoke-direct {v6, p0, v5, v3, p1}, Lcom/onesignal/OSObservable$1;-><init>(Lcom/onesignal/OSObservable;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :cond_2
    :try_start_1
    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v1

    .line 98
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v3

    .line 102
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_2
    move-exception v3

    .line 108
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :cond_3
    return v2
.end method

.method removeObserver(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TObserverType;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/onesignal/OSObservable;->observers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
