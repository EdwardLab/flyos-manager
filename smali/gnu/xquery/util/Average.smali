.class public Lgnu/xquery/util/Average;
.super Lgnu/mapping/Procedure1;
.source "Average.java"


# static fields
.field public static final avg:Lgnu/xquery/util/Average;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lgnu/xquery/util/Average;

    const-string v1, "avg"

    invoke-direct {v0, v1}, Lgnu/xquery/util/Average;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xquery/util/Average;->avg:Lgnu/xquery/util/Average;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 23
    instance-of v1, p1, Lgnu/mapping/Values;

    if-eqz v1, :cond_2

    .line 25
    move-object v1, p1

    check-cast v1, Lgnu/lists/TreeList;

    const/4 p1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {v1, p1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v3

    .line 30
    sget-object v4, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    move-object p1, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v2, v4, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    sget-object v4, Lgnu/xquery/util/ArithOp;->add:Lgnu/xquery/util/ArithOp;

    invoke-virtual {v4, v2, v3}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    :goto_1
    invoke-virtual {v1, p1}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 42
    :goto_2
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v1, :cond_3

    return-object p1

    .line 44
    :cond_3
    sget-object v1, Lgnu/xquery/util/ArithOp;->div:Lgnu/xquery/util/ArithOp;

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
