.class public Lgnu/xquery/util/MinMax;
.super Ljava/lang/Object;
.source "MinMax.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 88
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 89
    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    :cond_0
    return-object p0
.end method

.method public static max(Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 20
    invoke-static {p0, v0, p1}, Lgnu/xquery/util/MinMax;->minMax(Ljava/lang/Object;ZLgnu/xquery/util/NamedCollator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static min(Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-static {p0, v0, p1}, Lgnu/xquery/util/MinMax;->minMax(Ljava/lang/Object;ZLgnu/xquery/util/NamedCollator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static minMax(Ljava/lang/Object;ZLgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .locals 10

    .line 26
    instance-of v0, p0, Lgnu/mapping/Values;

    const/16 v1, 0x10

    if-eqz v0, :cond_c

    .line 28
    check-cast p0, Lgnu/lists/TreeList;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    .line 32
    sget-object v2, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 33
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0

    .line 34
    :cond_1
    invoke-static {v0}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 37
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v2

    .line 38
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v3

    .line 39
    sget-object v4, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v3, v4, :cond_3

    return-object v0

    .line 41
    :cond_3
    invoke-static {v3}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 43
    instance-of v4, v0, Ljava/lang/Number;

    if-nez v4, :cond_5

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_4

    goto :goto_2

    .line 72
    :cond_4
    invoke-static {v1, v0, v3, p2}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v3

    goto :goto_1

    .line 45
    :cond_5
    :goto_2
    invoke-static {v0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v4

    .line 46
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v5

    .line 47
    invoke-static {v0, v4, v3, v5, p1}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I

    move-result v6

    const/4 v7, -0x3

    if-eq v6, v7, :cond_b

    if-ge v4, v5, :cond_6

    move v7, v5

    goto :goto_3

    :cond_6
    move v7, v4

    :goto_3
    const/4 v8, -0x2

    const/4 v9, 0x1

    if-ne v6, v8, :cond_7

    .line 55
    sget-object v0, Lgnu/xquery/util/NumberValue;->NaN:Ljava/lang/Double;

    goto :goto_5

    .line 58
    :cond_7
    invoke-static {v6, v1}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v6

    if-nez v6, :cond_9

    if-eq v7, v5, :cond_8

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    move-object v0, v3

    goto :goto_5

    :cond_9
    if-eq v7, v4, :cond_a

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_2

    .line 68
    invoke-static {v0, v7}, Lgnu/kawa/functions/Arithmetic;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 50
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "values cannot be compared"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_c
    invoke-static {p0}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 81
    invoke-static {v1, p0, p0, p2}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    return-object p0
.end method
