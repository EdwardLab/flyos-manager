.class public Lgnu/kawa/functions/ApplyToArgs;
.super Lgnu/mapping/ProcedureN;
.source "ApplyToArgs.java"


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/expr/Language;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 125
    iput-object p2, p0, Lgnu/kawa/functions/ApplyToArgs;->language:Lgnu/expr/Language;

    .line 126
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string p2, "gnu.kawa.functions.CompilationHelpers:validateApplyToArgs"

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/ApplyToArgs;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    aget-object v1, p1, v0

    .line 135
    instance-of v2, v1, Lgnu/mapping/Procedure;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 137
    array-length v2, p1

    sub-int/2addr v2, v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 138
    invoke-static {p1, v3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    check-cast v1, Lgnu/mapping/Procedure;

    invoke-virtual {v1, v4}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 141
    :cond_0
    instance-of v2, v1, Lgnu/bytecode/Type;

    if-nez v2, :cond_6

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    instance-of v2, v1, Ljava/util/List;

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    .line 154
    array-length v0, p1

    if-ne v0, v4, :cond_2

    .line 156
    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 158
    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 155
    :cond_2
    new-instance v0, Lgnu/mapping/WrongArguments;

    array-length p1, p1

    invoke-direct {v0, p0, p1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0

    .line 163
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 166
    array-length v0, p1

    if-ne v0, v4, :cond_4

    .line 168
    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 167
    :cond_4
    new-instance v0, Lgnu/mapping/WrongArguments;

    array-length p1, p1

    invoke-direct {v0, p0, p1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0

    .line 170
    :cond_5
    new-instance p1, Lgnu/mapping/WrongType;

    const-string v2, "procedure"

    invoke-direct {p1, p0, v0, v1, v2}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_6
    :goto_0
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p1}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1

    .line 74
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lgnu/mapping/Procedure;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->check0(Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    :goto_0
    return-void
.end method

.method public check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1

    .line 82
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lgnu/mapping/Procedure;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/ProcedureN;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    :goto_0
    return-void
.end method

.method public check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1

    .line 90
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lgnu/mapping/Procedure;

    invoke-virtual {p1, p2, p3, p4}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/mapping/ProcedureN;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    :goto_0
    return-void
.end method

.method public check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1

    .line 99
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Lgnu/mapping/Procedure;

    invoke-virtual {p1, p2, p3, p4, p5}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/mapping/ProcedureN;->check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    :goto_0
    return-void
.end method

.method public checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 5

    .line 107
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/ApplyToArgs;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 111
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, p1, v0

    instance-of v2, v1, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_0

    .line 113
    check-cast v1, Lgnu/mapping/Procedure;

    .line 114
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 115
    invoke-static {p1, v3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v4

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 118
    :goto_0
    invoke-static {p2, v1, p1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1

    .line 14
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 15
    check-cast p1, Lgnu/mapping/Procedure;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1

    .line 22
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Lgnu/mapping/Procedure;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 25
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/ProcedureN;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1

    .line 30
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Lgnu/mapping/Procedure;

    invoke-virtual {p1, p2, p3, p4}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 33
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/mapping/ProcedureN;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1

    .line 39
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lgnu/mapping/Procedure;

    invoke-virtual {p1, p2, p3, p4, p5}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/mapping/ProcedureN;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10

    .line 47
    array-length v0, p1

    if-lez v0, :cond_5

    const/4 v1, 0x0

    .line 48
    aget-object v2, p1, v1

    instance-of v3, v2, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_5

    .line 50
    move-object v4, v2

    check-cast v4, Lgnu/mapping/Procedure;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v6, 0x4

    if-eq v0, v6, :cond_1

    const/4 v7, 0x5

    if-eq v0, v7, :cond_0

    sub-int/2addr v0, v2

    .line 64
    new-array v3, v0, [Ljava/lang/Object;

    .line 65
    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    invoke-virtual {v4, v3, p2}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 62
    :cond_0
    aget-object v0, p1, v2

    aget-object v1, p1, v3

    aget-object v7, p1, v5

    aget-object v8, p1, v6

    move-object v5, v0

    move-object v6, v1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 60
    :cond_1
    aget-object v0, p1, v2

    aget-object v1, p1, v3

    aget-object p1, p1, v5

    invoke-virtual {v4, v0, v1, p1, p2}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 58
    :cond_2
    aget-object v0, p1, v2

    aget-object p1, p1, v3

    invoke-virtual {v4, v0, p1, p2}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 56
    :cond_3
    aget-object p1, p1, v2

    invoke-virtual {v4, p1, p2}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 54
    :cond_4
    invoke-virtual {v4, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 69
    :cond_5
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
