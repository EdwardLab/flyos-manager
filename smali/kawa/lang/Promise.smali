.class public Lkawa/lang/Promise;
.super Ljava/lang/Object;
.source "Promise.java"

# interfaces
.implements Lgnu/text/Printable;


# instance fields
.field result:Ljava/lang/Object;

.field thunk:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lkawa/lang/Promise;->thunk:Lgnu/mapping/Procedure;

    return-void
.end method

.method public static force(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    instance-of v0, p0, Lkawa/lang/Promise;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Lkawa/lang/Promise;

    invoke-virtual {p0}, Lkawa/lang/Promise;->force()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 38
    :cond_0
    instance-of v0, p0, Lgnu/mapping/Future;

    if-eqz v0, :cond_1

    .line 39
    check-cast p0, Lgnu/mapping/Future;

    invoke-virtual {p0}, Lgnu/mapping/Future;->waitForResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 41
    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 42
    check-cast p0, Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public force()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lkawa/lang/Promise;->thunk:Lgnu/mapping/Procedure;

    invoke-virtual {v0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 29
    iput-object v0, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    .line 31
    :cond_0
    iget-object v0, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "#<promise - not forced yet>"

    .line 50
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "#<promise - forced to a "

    .line 53
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3e

    .line 55
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    :goto_0
    return-void
.end method
