.class public abstract Lgnu/expr/ModuleWithContext;
.super Lgnu/expr/ModuleBody;
.source "ModuleWithContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 165
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Lgnu/expr/ModuleMethod;->check0(Lgnu/mapping/CallContext;)V

    .line 167
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 173
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 174
    invoke-virtual {p1, p2, v0}, Lgnu/expr/ModuleMethod;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 175
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 181
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 182
    invoke-virtual {p1, p2, p3, v0}, Lgnu/expr/ModuleMethod;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 183
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 190
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 191
    invoke-virtual {p1, p2, p3, p4, v0}, Lgnu/expr/ModuleMethod;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 192
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 199
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, v6

    .line 200
    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleMethod;->check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 201
    invoke-virtual {v6}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 207
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 208
    invoke-virtual {p1, p2, v0}, Lgnu/expr/ModuleMethod;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 209
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    .line 8
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    and-int/lit16 v1, v0, 0xfff

    if-lez v1, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 12
    iput v1, p2, Lgnu/mapping/CallContext;->count:I

    .line 13
    iput v1, p2, Lgnu/mapping/CallContext;->where:I

    if-gez v0, :cond_1

    .line 15
    sget-object v0, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, p2}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 16
    :cond_1
    iput v1, p2, Lgnu/mapping/CallContext;->next:I

    .line 17
    iput-object p0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget p1, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 23
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    and-int/lit16 v1, v0, 0xfff

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    shr-int/lit8 v0, v0, 0xc

    if-ge v0, v2, :cond_1

    const/high16 p1, -0xe0000

    or-int/2addr p1, v0

    return p1

    .line 32
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 33
    iput v2, p3, Lgnu/mapping/CallContext;->count:I

    .line 34
    iput v2, p3, Lgnu/mapping/CallContext;->where:I

    .line 35
    iput v1, p3, Lgnu/mapping/CallContext;->next:I

    .line 36
    iput-object p0, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget p1, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 39
    :cond_2
    iput v1, p3, Lgnu/mapping/CallContext;->where:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 41
    invoke-virtual {p0, p1, v0, p3}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 47
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    and-int/lit16 v1, v0, 0xfff

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    shr-int/lit8 v0, v0, 0xc

    if-ge v0, v2, :cond_1

    const/high16 p1, -0xe0000

    or-int/2addr p1, v0

    return p1

    .line 56
    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 57
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 58
    iput v2, p4, Lgnu/mapping/CallContext;->count:I

    const/16 p2, 0x21

    .line 59
    iput p2, p4, Lgnu/mapping/CallContext;->where:I

    .line 61
    iput v1, p4, Lgnu/mapping/CallContext;->next:I

    .line 62
    iput-object p0, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget p1, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 65
    :cond_2
    iput v1, p4, Lgnu/mapping/CallContext;->where:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 67
    invoke-virtual {p0, p1, v0, p4}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 73
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    and-int/lit16 v1, v0, 0xfff

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    shr-int/lit8 v0, v0, 0xc

    if-ge v0, v2, :cond_1

    const/high16 p1, -0xe0000

    or-int/2addr p1, v0

    return p1

    .line 82
    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 83
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 84
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 85
    iput v2, p5, Lgnu/mapping/CallContext;->count:I

    const/16 p2, 0x321

    .line 86
    iput p2, p5, Lgnu/mapping/CallContext;->where:I

    .line 89
    iput v1, p5, Lgnu/mapping/CallContext;->next:I

    .line 90
    iput-object p0, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget p1, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput p1, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 93
    :cond_2
    iput v1, p5, Lgnu/mapping/CallContext;->where:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    .line 95
    invoke-virtual {p0, p1, v0, p5}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 101
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    and-int/lit16 v1, v0, 0xfff

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    shr-int/lit8 v0, v0, 0xc

    if-ge v0, v2, :cond_1

    const/high16 p1, -0xe0000

    or-int/2addr p1, v0

    return p1

    .line 110
    :cond_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 111
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 112
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 113
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 114
    iput v2, p6, Lgnu/mapping/CallContext;->count:I

    const/16 p2, 0x4321

    .line 115
    iput p2, p6, Lgnu/mapping/CallContext;->where:I

    .line 119
    iput v1, p6, Lgnu/mapping/CallContext;->next:I

    .line 120
    iput-object p0, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget p1, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput p1, p6, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 123
    :cond_2
    iput v1, p6, Lgnu/mapping/CallContext;->where:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    .line 125
    invoke-virtual {p0, p1, v0, p6}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 7

    .line 130
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    and-int/lit16 v1, v0, 0xfff

    .line 132
    array-length v2, p2

    if-ge v2, v1, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_6

    .line 136
    array-length v2, p2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_1

    shr-int/lit8 v0, v0, 0xc

    .line 150
    array-length v2, p2

    if-le v2, v0, :cond_6

    const/high16 p1, -0xe0000

    or-int/2addr p1, v0

    return p1

    .line 147
    :cond_1
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lgnu/expr/ModuleWithContext;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 145
    :cond_2
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleWithContext;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 143
    :cond_3
    aget-object v0, p2, v1

    aget-object p2, p2, v3

    invoke-virtual {p0, p1, v0, p2, p3}, Lgnu/expr/ModuleWithContext;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 141
    :cond_4
    aget-object p2, p2, v1

    invoke-virtual {p0, p1, p2, p3}, Lgnu/expr/ModuleWithContext;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 139
    :cond_5
    invoke-virtual {p0, p1, p3}, Lgnu/expr/ModuleWithContext;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 154
    :cond_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 155
    array-length p2, p2

    iput p2, p3, Lgnu/mapping/CallContext;->count:I

    .line 156
    iput v1, p3, Lgnu/mapping/CallContext;->where:I

    .line 157
    iput v1, p3, Lgnu/mapping/CallContext;->next:I

    .line 158
    iput-object p0, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget p1, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    return v1
.end method
