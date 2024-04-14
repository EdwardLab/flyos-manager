.class public Lgnu/kawa/functions/Map;
.super Lgnu/mapping/ProcedureN;
.source "Map.java"


# instance fields
.field final applyFieldDecl:Lgnu/expr/Declaration;

.field final applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

.field collect:Z

.field final isEq:Lgnu/kawa/functions/IsEq;


# direct methods
.method public constructor <init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "map"

    goto :goto_0

    :cond_0
    const-string v0, "for-each"

    .line 24
    :goto_0
    invoke-direct {p0, v0}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 25
    iput-boolean p1, p0, Lgnu/kawa/functions/Map;->collect:Z

    .line 26
    iput-object p2, p0, Lgnu/kawa/functions/Map;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 27
    iput-object p3, p0, Lgnu/kawa/functions/Map;->applyFieldDecl:Lgnu/expr/Declaration;

    .line 28
    iput-object p4, p0, Lgnu/kawa/functions/Map;->isEq:Lgnu/kawa/functions/IsEq;

    .line 29
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string p2, "gnu.kawa.functions.CompileMisc:validateApplyMap"

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/Map;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    :goto_0
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v0, :cond_0

    .line 57
    check-cast p1, Lgnu/lists/Pair;

    .line 58
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v1, 0x0

    .line 38
    :goto_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v2, :cond_1

    .line 40
    check-cast p1, Lgnu/lists/Pair;

    .line 41
    new-instance v2, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v2, v3, v4}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v1, v2}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 47
    :goto_1
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_1

    .line 67
    check-cast p1, Lgnu/mapping/Procedure;

    .line 68
    iget-boolean v0, p0, Lgnu/kawa/functions/Map;->collect:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p1, p2}, Lgnu/kawa/functions/Map;->map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    invoke-static {p1, p2}, Lgnu/kawa/functions/Map;->forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V

    .line 71
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 73
    invoke-virtual {p0, v0}, Lgnu/kawa/functions/Map;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 79
    aget-object v3, p1, v2

    instance-of v4, v3, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_1

    .line 81
    check-cast v3, Lgnu/mapping/Procedure;

    move-object v0, v3

    check-cast v0, Lgnu/mapping/Procedure;

    .line 82
    iget-boolean v0, p0, Lgnu/kawa/functions/Map;->collect:Z

    if-eqz v0, :cond_0

    .line 83
    aget-object p1, p1, v1

    invoke-static {v3, p1}, Lgnu/kawa/functions/Map;->map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 84
    :cond_0
    aget-object p1, p1, v1

    invoke-static {v3, p1}, Lgnu/kawa/functions/Map;->forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V

    .line 85
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :cond_1
    const/4 v3, 0x0

    .line 89
    iget-boolean v4, p0, Lgnu/kawa/functions/Map;->collect:Z

    if-eqz v4, :cond_2

    .line 90
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    .line 92
    :cond_2
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 93
    :goto_0
    new-array v5, v0, [Ljava/lang/Object;

    .line 94
    invoke-static {p1, v1, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    aget-object p1, p1, v2

    instance-of v6, p1, Lgnu/mapping/Procedure;

    if-eqz v6, :cond_3

    .line 101
    new-array v1, v0, [Ljava/lang/Object;

    .line 102
    check-cast p1, Lgnu/mapping/Procedure;

    move-object v6, v1

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v0, 0x1

    .line 107
    new-array v6, v6, [Ljava/lang/Object;

    .line 108
    aput-object p1, v6, v2

    .line 109
    iget-object p1, p0, Lgnu/kawa/functions/Map;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    :cond_4
    :goto_1
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v0, :cond_6

    .line 115
    aget-object v8, v5, v7

    .line 116
    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v8, v9, :cond_5

    return-object v4

    .line 118
    :cond_5
    check-cast v8, Lgnu/lists/Pair;

    add-int v9, v1, v7

    .line 119
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v6, v9

    .line 120
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 122
    :cond_6
    invoke-virtual {p1, v6}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 123
    iget-boolean v8, p0, Lgnu/kawa/functions/Map;->collect:Z

    if-eqz v8, :cond_4

    .line 125
    new-instance v8, Lgnu/lists/Pair;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v8, v7, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v3, :cond_7

    move-object v4, v8

    goto :goto_3

    .line 129
    :cond_7
    invoke-virtual {v3, v8}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    :goto_3
    move-object v3, v8

    goto :goto_1
.end method
