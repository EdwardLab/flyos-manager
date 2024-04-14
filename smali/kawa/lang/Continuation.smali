.class public Lkawa/lang/Continuation;
.super Lgnu/mapping/MethodProc;
.source "Continuation.java"


# static fields
.field static counter:I


# instance fields
.field id:I

.field public invoked:Z


# direct methods
.method public constructor <init>(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static handleException(Ljava/lang/Throwable;Lkawa/lang/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
    instance-of v0, p0, Lkawa/lang/CalledContinuation;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkawa/lang/CalledContinuation;

    iget-object v1, v0, Lkawa/lang/CalledContinuation;->continuation:Lkawa/lang/Continuation;

    if-ne v1, p1, :cond_0

    const/4 p0, 0x1

    .line 51
    iput-boolean p0, p1, Lkawa/lang/Continuation;->invoked:Z

    .line 52
    iget-object p0, v0, Lkawa/lang/CalledContinuation;->values:[Ljava/lang/Object;

    invoke-static {p0}, Lgnu/mapping/Values;->make([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 50
    :cond_0
    throw p0
.end method

.method public static handleException$X(Ljava/lang/Throwable;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    instance-of v0, p0, Lkawa/lang/CalledContinuation;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lkawa/lang/CalledContinuation;

    iget-object v1, v0, Lkawa/lang/CalledContinuation;->continuation:Lkawa/lang/Continuation;

    if-ne v1, p1, :cond_1

    const/4 p0, 0x1

    .line 37
    iput-boolean p0, p1, Lkawa/lang/Continuation;->invoked:Z

    .line 38
    iget-object p0, v0, Lkawa/lang/CalledContinuation;->values:[Ljava/lang/Object;

    .line 39
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 41
    iget-object v1, p2, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 36
    :cond_1
    throw p0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 2

    .line 23
    iget-boolean v0, p0, Lkawa/lang/Continuation;->invoked:Z

    if-eqz v0, :cond_0

    .line 24
    new-instance p1, Lkawa/lang/GenericError;

    const-string v0, "implementation restriction: continuation can only be used once"

    invoke-direct {p1, v0}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_0
    new-instance v0, Lkawa/lang/CalledContinuation;

    iget-object v1, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-direct {v0, v1, p0, p1}, Lkawa/lang/CalledContinuation;-><init>([Ljava/lang/Object;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#<continuation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkawa/lang/Continuation;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkawa/lang/Continuation;->invoked:Z

    if-eqz v1, :cond_0

    const-string v1, " (invoked)>"

    goto :goto_0

    :cond_0
    const-string v1, ">"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
