.class Lgnu/expr/Closure;
.super Lgnu/mapping/MethodProc;
.source "LambdaExp.java"


# instance fields
.field evalFrames:[[Ljava/lang/Object;

.field lambda:Lgnu/expr/LambdaExp;


# direct methods
.method public constructor <init>(Lgnu/expr/LambdaExp;Lgnu/mapping/CallContext;)V
    .locals 2

    .line 1973
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 1974
    iput-object p1, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    .line 1976
    iget-object p1, p2, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 1979
    array-length p2, p1

    :goto_0
    if-lez p2, :cond_0

    add-int/lit8 v0, p2, -0x1

    .line 1980
    aget-object v0, p1, v0

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 1983
    :cond_0
    new-array v0, p2, [[Ljava/lang/Object;

    iput-object v0, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1984
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1986
    :cond_1
    iget-object p1, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/expr/Closure;->setSymbol(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2120
    iget-object v0, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-static {v0}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v0

    .line 2121
    iget-object v1, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 2122
    iget-object v2, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 2124
    iget-object v3, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    array-length v5, v3

    :goto_0
    if-lt v0, v5, :cond_1

    move v5, v0

    :cond_1
    add-int/lit8 v5, v5, 0xa

    .line 2128
    new-array v5, v5, [[Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 2130
    array-length v6, v3

    invoke-static {v3, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2131
    :cond_2
    aput-object v1, v5, v0

    .line 2132
    iput-object v5, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 2136
    :try_start_0
    iget-object v0, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-nez v0, :cond_5

    .line 2140
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "procedure "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2141
    iget-object v1, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "<anonymous>"

    .line 2144
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2145
    iget-object v1, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v1

    if-lez v1, :cond_4

    const-string v3, " at line "

    .line 2148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    const-string v1, " was called before it was expanded"

    .line 2151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2152
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2154
    :cond_5
    iget-object v0, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2158
    iput-object v2, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    iput-object v2, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    throw v0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2164
    invoke-super {p0, p1, p2}, Lgnu/mapping/MethodProc;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2166
    iget-object v0, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v0, p1, p2}, Lgnu/expr/LambdaExp;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1991
    invoke-virtual {p0, v0, p1}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1996
    invoke-virtual {p0, v0, p2}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 2001
    invoke-virtual {p0, v0, p3}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 2006
    invoke-virtual {p0, v0, p4}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 2012
    invoke-virtual {p0, v0, p5}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2017
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Closure;->numArgs()I

    move-result v3

    .line 2018
    array-length v4, v1

    and-int/lit16 v5, v3, 0xfff

    if-ge v4, v5, :cond_0

    const/high16 v1, -0xf0000

    or-int/2addr v1, v5

    return v1

    :cond_0
    shr-int/lit8 v3, v3, 0xc

    if-le v4, v3, :cond_1

    if-ltz v3, :cond_1

    const/high16 v1, -0xe0000

    or-int/2addr v1, v3

    return v1

    .line 2026
    :cond_1
    iget-object v3, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v3, v3, Lgnu/expr/LambdaExp;->frameSize:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 2027
    iget-object v5, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v5, v5, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v5, v5, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    array-length v5, v5

    .line 2028
    :goto_0
    iget-object v7, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v7, v7, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v7, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    iget-object v7, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v7, v7, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    array-length v7, v7

    sub-int/2addr v7, v5

    .line 2033
    :goto_1
    iget-object v5, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v5, v5, Lgnu/expr/LambdaExp;->min_args:I

    .line 2034
    iget-object v8, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-eqz v8, :cond_e

    if-ge v9, v5, :cond_4

    add-int/lit8 v13, v9, 0x1

    .line 2039
    aget-object v9, v1, v9

    goto/16 :goto_7

    :cond_4
    add-int v13, v5, v7

    if-ge v9, v13, :cond_6

    if-ge v9, v4, :cond_5

    add-int/lit8 v13, v9, 0x1

    .line 2043
    aget-object v9, v1, v9

    move/from16 v17, v13

    move-object v13, v9

    move/from16 v9, v17

    goto :goto_3

    .line 2045
    :cond_5
    iget-object v13, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v13, v10, v2}, Lgnu/expr/LambdaExp;->evalDefaultArg(ILgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v13

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v17, v13

    move v13, v9

    move-object/from16 v9, v17

    goto/16 :goto_7

    .line 2048
    :cond_6
    iget-object v14, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v14, v14, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v14, :cond_a

    if-ne v9, v13, :cond_a

    .line 2050
    iget-object v13, v8, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    instance-of v13, v13, Lgnu/bytecode/ArrayType;

    if-eqz v13, :cond_9

    sub-int v13, v4, v9

    .line 2053
    iget-object v14, v8, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    check-cast v14, Lgnu/bytecode/ArrayType;

    invoke-virtual {v14}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v14

    .line 2054
    sget-object v15, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne v14, v15, :cond_7

    .line 2056
    new-array v14, v13, [Ljava/lang/Object;

    .line 2057
    invoke-static {v1, v9, v14, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 2062
    :cond_7
    invoke-virtual {v14}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v15

    .line 2063
    invoke-static {v15, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v15

    :goto_4
    if-ge v6, v13, :cond_8

    add-int v16, v9, v6

    .line 2070
    :try_start_0
    aget-object v12, v1, v16

    invoke-virtual {v14, v12}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2076
    invoke-static {v15, v6, v12}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :catch_0
    const/high16 v1, -0xc0000

    or-int v1, v16, v1

    return v1

    :cond_8
    move-object v14, v15

    :goto_5
    move v13, v9

    move-object v9, v14

    goto :goto_7

    .line 2081
    :cond_9
    invoke-static {v1, v9}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v6

    move v13, v9

    goto :goto_6

    .line 2085
    :cond_a
    iget-object v6, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v6, v6, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    add-int/lit8 v12, v11, 0x1

    aget-object v6, v6, v11

    .line 2087
    invoke-static {v1, v13, v6}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2088
    sget-object v11, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne v6, v11, :cond_b

    .line 2089
    iget-object v6, v0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v6, v10, v2}, Lgnu/expr/LambdaExp;->evalDefaultArg(ILgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v6

    :cond_b
    add-int/lit8 v10, v10, 0x1

    move v13, v9

    move v11, v12

    :goto_6
    move-object v9, v6

    .line 2092
    :goto_7
    iget-object v6, v8, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-eqz v6, :cond_c

    .line 2096
    :try_start_1
    iget-object v6, v8, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    invoke-virtual {v6, v9}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    const/high16 v1, -0xc0000

    or-int/2addr v1, v13

    return v1

    .line 2103
    :cond_c
    :goto_8
    invoke-virtual {v8}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2105
    invoke-virtual {v8}, Lgnu/expr/Declaration;->makeIndirectLocationFor()Lgnu/mapping/Location;

    move-result-object v6

    .line 2106
    invoke-virtual {v6, v9}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    move-object v9, v6

    .line 2109
    :cond_d
    iget v6, v8, Lgnu/expr/Declaration;->evalIndex:I

    aput-object v9, v3, v6

    .line 2035
    invoke-virtual {v8}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v8

    move v9, v13

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 2111
    :cond_e
    iput-object v3, v2, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2112
    iput v1, v2, Lgnu/mapping/CallContext;->where:I

    .line 2113
    iput v1, v2, Lgnu/mapping/CallContext;->next:I

    .line 2114
    iput-object v0, v2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v1
.end method

.method public numArgs()I
    .locals 2

    .line 1970
    iget-object v0, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    iget-object v1, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v1, v1, Lgnu/expr/LambdaExp;->max_args:I

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    return v0
.end method
