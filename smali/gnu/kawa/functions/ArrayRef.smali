.class public Lgnu/kawa/functions/ArrayRef;
.super Lgnu/mapping/ProcedureN;
.source "ArrayRef.java"


# static fields
.field public static final arrayRef:Lgnu/kawa/functions/ArrayRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lgnu/kawa/functions/ArrayRef;

    invoke-direct {v0}, Lgnu/kawa/functions/ArrayRef;-><init>()V

    sput-object v0, Lgnu/kawa/functions/ArrayRef;->arrayRef:Lgnu/kawa/functions/ArrayRef;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static arrayRef(Lgnu/lists/Array;Lgnu/lists/Sequence;)Ljava/lang/Object;
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
    invoke-interface {p0, v1}, Lgnu/lists/Array;->get([I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Lgnu/lists/Array;

    check-cast p2, Lgnu/lists/Sequence;

    invoke-static {p1, p2}, Lgnu/kawa/functions/ArrayRef;->arrayRef(Lgnu/lists/Array;Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 34
    aget-object v0, p1, v0

    check-cast v0, Lgnu/lists/Array;

    .line 36
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 38
    aget-object v1, p1, v2

    .line 39
    instance-of v3, v1, Lgnu/lists/Sequence;

    if-eqz v3, :cond_0

    .line 40
    check-cast v1, Lgnu/lists/Sequence;

    invoke-static {v0, v1}, Lgnu/kawa/functions/ArrayRef;->arrayRef(Lgnu/lists/Array;Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 42
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v2

    new-array v1, v1, [I

    .line 43
    array-length v3, p1

    sub-int/2addr v3, v2

    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    add-int/lit8 v2, v3, 0x1

    .line 45
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {v0, v1}, Lgnu/lists/Array;->get([I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
