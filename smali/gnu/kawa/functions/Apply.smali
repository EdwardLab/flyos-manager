.class public Lgnu/kawa/functions/Apply;
.super Lgnu/mapping/ProcedureN;
.source "Apply.java"


# instance fields
.field applyToArgs:Lgnu/kawa/functions/ApplyToArgs;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/kawa/functions/ApplyToArgs;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lgnu/kawa/functions/Apply;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    return-void
.end method

.method public static getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;
    .locals 7

    .line 21
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x2

    if-lt v0, v1, :cond_8

    add-int/lit8 v1, v0, -0x1

    .line 24
    aget-object v1, p0, v1

    .line 26
    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 28
    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    return-object v4

    .line 31
    :cond_0
    array-length v2, v4

    goto :goto_0

    .line 33
    :cond_1
    instance-of v2, v1, Lgnu/lists/Sequence;

    if-eqz v2, :cond_2

    .line 34
    move-object v2, v1

    check-cast v2, Lgnu/lists/Sequence;

    invoke-interface {v2}, Lgnu/lists/Sequence;->size()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    if-ltz v2, :cond_7

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    add-int p2, v2, v0

    .line 40
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_3

    add-int v6, v5, p1

    .line 43
    aget-object v6, p0, v6

    aput-object v6, p2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 46
    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1, v4, p2, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 51
    :cond_4
    :goto_2
    instance-of p0, v1, Lgnu/lists/Pair;

    if-eqz p0, :cond_5

    .line 53
    check-cast v1, Lgnu/lists/Pair;

    add-int/lit8 p0, v5, 0x1

    .line 54
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p2, v5

    .line 55
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    move v5, p0

    goto :goto_2

    :cond_5
    if-lez v2, :cond_6

    .line 60
    check-cast v1, Lgnu/lists/Sequence;

    :goto_3
    if-ge v4, v2, :cond_6

    add-int/lit8 p0, v5, 0x1

    .line 62
    invoke-interface {v1, v4}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, p0

    goto :goto_3

    :cond_6
    :goto_4
    return-object p2

    .line 38
    :cond_7
    new-instance p0, Lgnu/mapping/WrongType;

    const-string p1, "sequence or array"

    invoke-direct {p0, p2, v0, v1, p1}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_8
    new-instance p0, Lgnu/mapping/WrongArguments;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(apply proc [args] args) [count:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " skip:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "apply"

    invoke-direct {p0, p2, v2, p1}, Lgnu/mapping/WrongArguments;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lgnu/kawa/functions/Apply;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Lgnu/kawa/functions/Apply;->getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lgnu/kawa/functions/ApplyToArgs;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lgnu/kawa/functions/Apply;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    const/4 v1, 0x0

    invoke-static {p1, v1, p0}, Lgnu/kawa/functions/Apply;->getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/kawa/functions/ApplyToArgs;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
