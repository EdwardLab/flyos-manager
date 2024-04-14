.class public Lgnu/kawa/functions/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# static fields
.field static final shapeStrides:[I

.field static final zeros2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 13
    fill-array-data v1, :array_0

    sput-object v1, Lgnu/kawa/functions/Arrays;->shapeStrides:[I

    new-array v0, v0, [I

    .line 14
    sput-object v0, Lgnu/kawa/functions/Arrays;->zeros2:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static effectiveIndex(Lgnu/lists/Array;Lgnu/mapping/Procedure;[Ljava/lang/Object;[I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 74
    instance-of p2, p1, Lgnu/mapping/Values;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 76
    check-cast p1, Lgnu/mapping/Values;

    const/4 p2, 0x0

    .line 77
    :goto_0
    invoke-virtual {p1, v0}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p1, v0}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aput v1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aput p1, p3, v0

    .line 84
    :cond_1
    invoke-interface {p0, p3}, Lgnu/lists/Array;->getEffectiveIndex([I)I

    move-result p0

    return p0
.end method

.method public static make(Lgnu/lists/Array;Ljava/lang/Object;)Lgnu/lists/Array;
    .locals 8

    const/4 v0, 0x0

    .line 28
    invoke-interface {p0, v0}, Lgnu/lists/Array;->getSize(I)I

    move-result v0

    .line 29
    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v0

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    mul-int/lit8 v6, v4, 0x2

    .line 34
    invoke-interface {p0, v6}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/2addr v6, v2

    .line 35
    invoke-interface {p0, v6}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    sub-int/2addr v6, v7

    .line 37
    aput v6, v1, v4

    if-eqz v7, :cond_1

    if-nez v3, :cond_0

    .line 41
    new-array v3, v0, [I

    .line 42
    :cond_0
    aput v7, v3, v4

    :cond_1
    mul-int v5, v5, v6

    goto :goto_0

    .line 46
    :cond_2
    new-instance p0, Lgnu/lists/FVector;

    invoke-direct {p0, v5, p1}, Lgnu/lists/FVector;-><init>(ILjava/lang/Object;)V

    invoke-static {v3, v1, p0}, Lgnu/lists/GeneralArray;->makeSimple([I[ILgnu/lists/SimpleVector;)Lgnu/lists/Array;

    move-result-object p0

    return-object p0
.end method

.method public static makeSimple(Lgnu/lists/Array;Lgnu/lists/SimpleVector;)Lgnu/lists/Array;
    .locals 6

    const/4 v0, 0x0

    .line 51
    invoke-interface {p0, v0}, Lgnu/lists/Array;->getSize(I)I

    move-result v0

    .line 52
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v0

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    mul-int/lit8 v4, v3, 0x2

    .line 56
    invoke-interface {p0, v4}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    .line 57
    invoke-interface {p0, v4}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sub-int/2addr v4, v5

    .line 58
    aput v4, v1, v3

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 62
    new-array v2, v0, [I

    .line 63
    :cond_1
    aput v5, v2, v3

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {v2, v1, p1}, Lgnu/lists/GeneralArray;->makeSimple([I[ILgnu/lists/SimpleVector;)Lgnu/lists/Array;

    move-result-object p0

    return-object p0
.end method

.method public static shape([Ljava/lang/Object;)Lgnu/lists/Array;
    .locals 5

    .line 18
    array-length v0, p0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v2, v3, v1

    .line 23
    new-instance v0, Lgnu/lists/FVector;

    invoke-direct {v0, p0}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    sget-object p0, Lgnu/kawa/functions/Arrays;->zeros2:[I

    sget-object v1, Lgnu/kawa/functions/Arrays;->shapeStrides:[I

    invoke-virtual {v0, p0, v3, v4, v1}, Lgnu/lists/FVector;->transpose([I[II[I)Lgnu/lists/Array;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "shape: not an even number of arguments"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shareArray(Lgnu/lists/Array;Lgnu/lists/Array;Lgnu/mapping/Procedure;)Lgnu/lists/Array;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    invoke-interface {p1, v0}, Lgnu/lists/Array;->getSize(I)I

    move-result v1

    .line 92
    new-array v2, v1, [Ljava/lang/Object;

    .line 93
    new-array v3, v1, [I

    .line 94
    new-array v4, v1, [I

    move v5, v1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    add-int/lit8 v5, v5, -0x1

    const/4 v7, 0x1

    if-ltz v5, :cond_1

    mul-int/lit8 v8, v5, 0x2

    .line 98
    invoke-interface {p1, v8}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v9

    .line 99
    aput-object v9, v2, v5

    .line 100
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 101
    aput v9, v4, v5

    add-int/2addr v8, v7

    .line 102
    invoke-interface {p1, v8}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    sub-int/2addr v8, v9

    .line 104
    aput v8, v3, v5

    if-gtz v8, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {p0}, Lgnu/lists/Array;->rank()I

    move-result p1

    .line 109
    new-array v5, v1, [I

    if-eqz v6, :cond_2

    goto :goto_2

    .line 115
    :cond_2
    new-array p1, p1, [I

    .line 116
    invoke-static {p0, p2, v2, p1}, Lgnu/kawa/functions/Arrays;->effectiveIndex(Lgnu/lists/Array;Lgnu/mapping/Procedure;[Ljava/lang/Object;[I)I

    move-result v6

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 119
    aget v8, v3, v1

    .line 120
    aget v9, v4, v1

    if-gt v8, v7, :cond_3

    .line 122
    aput v0, v5, v1

    goto :goto_1

    .line 125
    :cond_3
    aget-object v8, v2, v1

    add-int/2addr v9, v7

    .line 126
    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    aput-object v9, v2, v1

    .line 127
    invoke-static {p0, p2, v2, p1}, Lgnu/kawa/functions/Arrays;->effectiveIndex(Lgnu/lists/Array;Lgnu/mapping/Procedure;[Ljava/lang/Object;[I)I

    move-result v9

    sub-int/2addr v9, v6

    aput v9, v5, v1

    .line 129
    aput-object v8, v2, v1

    goto :goto_1

    :cond_4
    move v0, v6

    .line 133
    :goto_2
    invoke-interface {p0, v4, v3, v0, v5}, Lgnu/lists/Array;->transpose([I[II[I)Lgnu/lists/Array;

    move-result-object p0

    return-object p0
.end method
