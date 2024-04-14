.class public Lgnu/xquery/util/Reduce;
.super Ljava/lang/Object;
.source "Reduce.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/Reduce;->sum(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_2

    .line 23
    move-object v0, p0

    check-cast v0, Lgnu/lists/TreeList;

    const/4 p0, 0x0

    .line 25
    invoke-virtual {v0, p0}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    .line 26
    sget-object v2, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    return-object p1

    .line 28
    :cond_0
    invoke-static {v1}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    :goto_0
    invoke-virtual {v0, p0}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result p0

    .line 32
    invoke-virtual {v0, p0}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    .line 33
    sget-object v2, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    return-object p1

    .line 35
    :cond_1
    invoke-static {v1}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 36
    invoke-static {v2, p1, v1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p0}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method
