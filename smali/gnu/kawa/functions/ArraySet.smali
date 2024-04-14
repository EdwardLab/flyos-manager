.class public Lgnu/kawa/functions/ArraySet;
.super Lgnu/mapping/ProcedureN;
.source "ArraySet.java"


# static fields
.field public static final arraySet:Lgnu/kawa/functions/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lgnu/kawa/functions/ArraySet;

    invoke-direct {v0}, Lgnu/kawa/functions/ArraySet;-><init>()V

    sput-object v0, Lgnu/kawa/functions/ArraySet;->arraySet:Lgnu/kawa/functions/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static arraySet(Lgnu/lists/Array;Lgnu/lists/Sequence;Ljava/lang/Object;)V
    .locals 4

    .line 14
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    .line 15
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 18
    invoke-interface {p1, v2}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p0, v1, p2}, Lgnu/lists/Array;->set([ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-eqz v0, :cond_0

    .line 28
    check-cast p1, Lgnu/lists/Array;

    check-cast p2, Lgnu/lists/Sequence;

    invoke-static {p1, p2, p3}, Lgnu/kawa/functions/ArraySet;->arraySet(Lgnu/lists/Array;Lgnu/lists/Sequence;Ljava/lang/Object;)V

    .line 29
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 32
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/ProcedureN;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    aget-object v0, p1, v0

    check-cast v0, Lgnu/lists/Array;

    .line 40
    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 42
    aget-object v1, p1, v3

    .line 43
    instance-of v4, v1, Lgnu/lists/Sequence;

    if-eqz v4, :cond_0

    .line 45
    check-cast v1, Lgnu/lists/Sequence;

    aget-object p1, p1, v2

    invoke-static {v0, v1, p1}, Lgnu/kawa/functions/ArraySet;->arraySet(Lgnu/lists/Array;Lgnu/lists/Sequence;Ljava/lang/Object;)V

    .line 46
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 49
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v2

    .line 50
    new-array v2, v1, [I

    move v4, v1

    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 53
    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v2, v4

    goto :goto_0

    :cond_1
    add-int/2addr v1, v3

    .line 55
    aget-object p1, p1, v1

    invoke-interface {v0, v2, p1}, Lgnu/lists/Array;->set([ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method
