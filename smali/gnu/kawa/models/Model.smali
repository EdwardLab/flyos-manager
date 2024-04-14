.class public abstract Lgnu/kawa/models/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;


# instance fields
.field transient listeners:Lgnu/kawa/models/WeakListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lgnu/kawa/models/ModelListener;)V
    .locals 2

    .line 17
    new-instance v0, Lgnu/kawa/models/WeakListener;

    iget-object v1, p0, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    invoke-direct {v0, p1, v1}, Lgnu/kawa/models/WeakListener;-><init>(Ljava/lang/Object;Lgnu/kawa/models/WeakListener;)V

    iput-object v0, p0, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    return-void
.end method

.method public addListener(Lgnu/kawa/models/WeakListener;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    iput-object v0, p1, Lgnu/kawa/models/WeakListener;->next:Lgnu/kawa/models/WeakListener;

    .line 23
    iput-object p1, p0, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    return-void
.end method

.method public notifyListeners(Ljava/lang/String;)V
    .locals 4

    .line 29
    iget-object v0, p0, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {v0}, Lgnu/kawa/models/WeakListener;->get()Ljava/lang/Object;

    move-result-object v2

    .line 33
    iget-object v3, v0, Lgnu/kawa/models/WeakListener;->next:Lgnu/kawa/models/WeakListener;

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    .line 37
    iput-object v3, v1, Lgnu/kawa/models/WeakListener;->next:Lgnu/kawa/models/WeakListener;

    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {v0, v2, p0, p1}, Lgnu/kawa/models/WeakListener;->update(Ljava/lang/Object;Lgnu/kawa/models/Model;Ljava/lang/Object;)V

    move-object v1, v0

    :cond_1
    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    return-void
.end method
