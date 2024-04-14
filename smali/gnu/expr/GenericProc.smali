.class public Lgnu/expr/GenericProc;
.super Lgnu/mapping/MethodProc;
.source "GenericProc.java"


# instance fields
.field count:I

.field maxArgs:I

.field protected methods:[Lgnu/mapping/MethodProc;

.field minArgs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static make([Ljava/lang/Object;)Lgnu/expr/GenericProc;
    .locals 1

    .line 300
    new-instance v0, Lgnu/expr/GenericProc;

    invoke-direct {v0}, Lgnu/expr/GenericProc;-><init>()V

    .line 301
    invoke-virtual {v0, p0}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs makeWithoutSorting([Ljava/lang/Object;)Lgnu/expr/GenericProc;
    .locals 5

    .line 307
    new-instance v0, Lgnu/expr/GenericProc;

    invoke-direct {v0}, Lgnu/expr/GenericProc;-><init>()V

    .line 309
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 312
    aget-object v3, p0, v2

    .line 313
    instance-of v4, v3, Lgnu/expr/Keyword;

    if-eqz v4, :cond_0

    .line 314
    check-cast v3, Lgnu/expr/Keyword;

    add-int/lit8 v2, v2, 0x1

    aget-object v4, p0, v2

    invoke-virtual {v0, v3, v4}, Lgnu/expr/GenericProc;->setProperty(Lgnu/expr/Keyword;Ljava/lang/Object;)V

    goto :goto_1

    .line 316
    :cond_0
    check-cast v3, Lgnu/mapping/MethodProc;

    invoke-virtual {v0, v3}, Lgnu/expr/GenericProc;->addAtEnd(Lgnu/mapping/MethodProc;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lgnu/mapping/MethodProc;)V
    .locals 4

    monitor-enter p0

    .line 75
    :try_start_0
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    .line 76
    invoke-virtual {p0, p1}, Lgnu/expr/GenericProc;->addAtEnd(Lgnu/mapping/MethodProc;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 80
    iget-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 83
    iget-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    add-int/lit8 v3, v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized add([Lgnu/mapping/MethodProc;)V
    .locals 3

    monitor-enter p0

    .line 43
    :try_start_0
    array-length v0, p1

    .line 44
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    if-nez v1, :cond_0

    .line 45
    new-array v1, v0, [Lgnu/mapping/MethodProc;

    iput-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 47
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAtEnd(Lgnu/mapping/MethodProc;)V
    .locals 4

    monitor-enter p0

    .line 52
    :try_start_0
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    .line 53
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    new-array v1, v1, [Lgnu/mapping/MethodProc;

    .line 54
    iput-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    goto :goto_0

    .line 55
    :cond_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 57
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lgnu/mapping/MethodProc;

    const/4 v3, 0x0

    .line 58
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    .line 62
    :cond_1
    :goto_0
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aput-object p1, v1, v0

    .line 64
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v1

    .line 65
    iget v2, p0, Lgnu/expr/GenericProc;->minArgs:I

    if-lt v1, v2, :cond_2

    iget v2, p0, Lgnu/expr/GenericProc;->count:I

    if-nez v2, :cond_3

    .line 66
    :cond_2
    iput v1, p0, Lgnu/expr/GenericProc;->minArgs:I

    .line 67
    :cond_3
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    .line 68
    iget v1, p0, Lgnu/expr/GenericProc;->maxArgs:I

    if-le p1, v1, :cond_5

    .line 69
    :cond_4
    iput p1, p0, Lgnu/expr/GenericProc;->maxArgs:I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 70
    iput v0, p0, Lgnu/expr/GenericProc;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 111
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 112
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 113
    :cond_0
    array-length v0, p1

    invoke-static {p0, v0}, Lgnu/expr/GenericProc;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 114
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 115
    :goto_0
    iget v2, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v1, v2, :cond_2

    .line 117
    iget-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v2, v1

    .line 118
    invoke-virtual {v2, p1, v0}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_2
    new-instance p1, Lgnu/mapping/WrongType;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw p1
.end method

.method public getMethod(I)Lgnu/mapping/MethodProc;
    .locals 1

    .line 33
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getMethodCount()I
    .locals 1

    .line 28
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    return v0
.end method

.method public isApplicable([Lgnu/bytecode/Type;)I
    .locals 5

    .line 128
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, -0x1

    const/4 v2, -0x1

    :cond_0
    :goto_0
    add-int/2addr v0, v1

    if-ltz v0, :cond_2

    .line 130
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v3, v0

    .line 131
    invoke-virtual {v3, p1}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    return v4

    :cond_1
    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    return v2
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 3

    .line 142
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lgnu/mapping/MethodProc;->match0(Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    iget v1, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v0, v1, :cond_2

    .line 146
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v1, v1, v0

    .line 147
    invoke-virtual {v1, p1}, Lgnu/mapping/MethodProc;->match0(Lgnu/mapping/CallContext;)I

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 151
    iput-object v0, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, -0x1

    return p1
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 157
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    iget v1, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v0, v1, :cond_2

    .line 161
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v1, v1, v0

    .line 162
    invoke-virtual {v1, p1, p2}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 166
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, -0x1

    return p1
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 172
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2, p3}, Lgnu/mapping/MethodProc;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 174
    :goto_0
    iget v1, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v0, v1, :cond_2

    .line 176
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v1, v1, v0

    .line 177
    invoke-virtual {v1, p1, p2, p3}, Lgnu/mapping/MethodProc;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 181
    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, -0x1

    return p1
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 187
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/mapping/MethodProc;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    iget v1, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v0, v1, :cond_2

    .line 191
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v1, v1, v0

    .line 192
    invoke-virtual {v1, p1, p2, p3, p4}, Lgnu/mapping/MethodProc;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 196
    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, -0x1

    return p1
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .line 203
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v0, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lgnu/mapping/MethodProc;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    iget v1, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v0, v1, :cond_2

    .line 207
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 208
    invoke-virtual/range {v3 .. v8}, Lgnu/mapping/MethodProc;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 212
    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, -0x1

    return p1
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10

    .line 218
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 219
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 220
    :cond_0
    array-length v0, p1

    .line 221
    new-array v3, v0, [Lgnu/bytecode/Type;

    .line 222
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    .line 228
    aget-object v6, p1, v5

    if-nez v6, :cond_1

    .line 231
    sget-object v6, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    goto :goto_1

    .line 234
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v4, :cond_2

    .line 236
    invoke-virtual {v4, v6}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    goto :goto_1

    .line 238
    :cond_2
    invoke-static {v6}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    .line 240
    :goto_1
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 242
    :cond_3
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    new-array v0, v0, [I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 246
    :goto_2
    iget v9, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v5, v9, :cond_7

    .line 248
    iget-object v9, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v9, v9, v5

    invoke-virtual {v9, v3}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v9

    if-nez v6, :cond_4

    if-ltz v9, :cond_4

    move v8, v5

    :cond_4
    if-lez v9, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    if-nez v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    .line 255
    :cond_6
    :goto_3
    aput v9, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    if-eq v6, v2, :cond_c

    if-nez v6, :cond_8

    if-ne v7, v2, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    .line 259
    :goto_4
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v2, v3, :cond_b

    .line 261
    aget v3, v0, v2

    if-ltz v3, :cond_a

    if-nez v3, :cond_9

    if-lez v6, :cond_9

    goto :goto_5

    .line 264
    :cond_9
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v3, v2

    .line 265
    invoke-virtual {v3, p1, p2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    if-nez v3, :cond_a

    return v1

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    .line 269
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v4

    .line 258
    :cond_c
    :goto_6
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, v8

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public numArgs()I
    .locals 2

    .line 38
    iget v0, p0, Lgnu/expr/GenericProc;->minArgs:I

    iget v1, p0, Lgnu/expr/GenericProc;->maxArgs:I

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    return v0
.end method

.method public final setProperties([Ljava/lang/Object;)V
    .locals 4

    .line 286
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 289
    aget-object v2, p1, v1

    .line 290
    instance-of v3, v2, Lgnu/expr/Keyword;

    if-eqz v3, :cond_0

    .line 291
    check-cast v2, Lgnu/expr/Keyword;

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p1, v1

    invoke-virtual {p0, v2, v3}, Lgnu/expr/GenericProc;->setProperty(Lgnu/expr/Keyword;Ljava/lang/Object;)V

    goto :goto_1

    .line 293
    :cond_0
    check-cast v2, Lgnu/mapping/MethodProc;

    invoke-virtual {p0, v2}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setProperty(Lgnu/expr/Keyword;Ljava/lang/Object;)V
    .locals 2

    .line 275
    invoke-virtual {p1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    if-ne v0, v1, :cond_0

    .line 277
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "method"

    if-ne v0, v1, :cond_1

    .line 279
    check-cast p2, Lgnu/mapping/MethodProc;

    invoke-virtual {p0, p2}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lgnu/mapping/MethodProc;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
