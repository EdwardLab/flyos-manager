.class public Lgnu/xquery/util/ValuesEvery;
.super Lgnu/mapping/MethodProc;
.source "ValuesEvery.java"


# static fields
.field public static final every:Lgnu/xquery/util/ValuesEvery;

.field public static final some:Lgnu/xquery/util/ValuesEvery;


# instance fields
.field matchAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lgnu/xquery/util/ValuesEvery;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/xquery/util/ValuesEvery;-><init>(Z)V

    sput-object v0, Lgnu/xquery/util/ValuesEvery;->every:Lgnu/xquery/util/ValuesEvery;

    .line 16
    new-instance v0, Lgnu/xquery/util/ValuesEvery;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/xquery/util/ValuesEvery;-><init>(Z)V

    sput-object v0, Lgnu/xquery/util/ValuesEvery;->some:Lgnu/xquery/util/ValuesEvery;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    iput-boolean p1, p0, Lgnu/xquery/util/ValuesEvery;->matchAll:Z

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    .line 28
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget-boolean v2, p0, Lgnu/xquery/util/ValuesEvery;->matchAll:Z

    const/4 v3, 0x1

    .line 30
    invoke-static {v0, v3}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 31
    instance-of v3, v1, Lgnu/mapping/Values;

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 34
    check-cast v1, Lgnu/mapping/Values;

    .line 35
    :cond_0
    invoke-virtual {v1, v3}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 37
    invoke-virtual {v1, v3}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 38
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v2

    .line 39
    iget-boolean v4, p0, Lgnu/xquery/util/ValuesEvery;->matchAll:Z

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 46
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v2

    .line 48
    :cond_2
    :goto_0
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-interface {p1, v2}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    return-void
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x2002

    return v0
.end method
