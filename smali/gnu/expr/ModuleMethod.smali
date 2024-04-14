.class public Lgnu/expr/ModuleMethod;
.super Lgnu/mapping/MethodProc;
.source "ModuleMethod.java"


# instance fields
.field public module:Lgnu/expr/ModuleBody;

.field protected numArgs:I

.field public selector:I


# direct methods
.method public constructor <init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleMethod;->init(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)Lgnu/expr/ModuleMethod;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleMethod;->init(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)Lgnu/expr/ModuleMethod;

    .line 30
    iput-object p5, p0, Lgnu/expr/ModuleMethod;->argTypes:Ljava/lang/Object;

    return-void
.end method

.method public static apply0Default(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    sget-object v1, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static apply1Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 230
    iget-object p1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {p1, p0, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static apply2Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 239
    iget-object p1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {p1, p0, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static apply3Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 250
    iget-object p1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {p1, p0, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static apply4Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

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

    .line 262
    iget-object p1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {p1, p0, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static applyError()V
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error - bad selector"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static applyNDefault(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 268
    array-length v0, p1

    .line 269
    invoke-virtual {p0}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v1

    .line 270
    iget-object v2, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    and-int/lit16 v3, v1, 0xfff

    if-lt v0, v3, :cond_5

    if-ltz v1, :cond_0

    shr-int/lit8 v1, v1, 0xc

    if-gt v0, v1, :cond_5

    :cond_0
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    .line 285
    aget-object v0, p1, v1

    aget-object v1, p1, v3

    aget-object v6, p1, v4

    aget-object v7, p1, v5

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 283
    :cond_1
    aget-object v0, p1, v1

    aget-object v1, p1, v3

    aget-object p1, p1, v4

    invoke-virtual {v2, p0, v0, v1, p1}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 281
    :cond_2
    aget-object v0, p1, v1

    aget-object p1, p1, v3

    invoke-virtual {v2, p0, v0, p1}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 279
    :cond_3
    aget-object p1, p1, v1

    invoke-virtual {v2, p0, p1}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 277
    :cond_4
    invoke-virtual {v2, p0}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 288
    :cond_5
    new-instance p1, Lgnu/mapping/WrongArguments;

    invoke-direct {p1, p0, v0}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw p1
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 157
    iget v0, p1, Lgnu/mapping/CallContext;->pc:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleMethod;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internal error - apply "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_1
    iget-object v0, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iget-object v1, p1, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iget-object v2, p1, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iget-object v3, p1, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/expr/ModuleMethod;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iget-object v1, p1, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iget-object v2, p1, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lgnu/expr/ModuleMethod;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_3
    iget-object v0, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iget-object v1, p1, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/ModuleMethod;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleMethod;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/ModuleMethod;->apply0()Ljava/lang/Object;

    move-result-object v0

    .line 180
    :goto_0
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public apply0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public init(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)Lgnu/expr/ModuleMethod;
    .locals 0

    .line 36
    iput-object p1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    .line 37
    iput p2, p0, Lgnu/expr/ModuleMethod;->selector:I

    .line 38
    iput p4, p0, Lgnu/expr/ModuleMethod;->numArgs:I

    if-eqz p3, :cond_0

    .line 40
    invoke-virtual {p0, p3}, Lgnu/expr/ModuleMethod;->setSymbol(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput v0, p1, Lgnu/mapping/CallContext;->count:I

    .line 99
    iput v0, p1, Lgnu/mapping/CallContext;->where:I

    .line 100
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1

    const/4 v0, 0x1

    .line 105
    iput v0, p2, Lgnu/mapping/CallContext;->count:I

    .line 106
    iput v0, p2, Lgnu/mapping/CallContext;->where:I

    .line 107
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1

    const/4 v0, 0x2

    .line 112
    iput v0, p3, Lgnu/mapping/CallContext;->count:I

    const/16 v0, 0x21

    .line 113
    iput v0, p3, Lgnu/mapping/CallContext;->where:I

    .line 115
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 7

    const/4 v0, 0x3

    .line 120
    iput v0, p4, Lgnu/mapping/CallContext;->count:I

    const/16 v0, 0x321

    .line 121
    iput v0, p4, Lgnu/mapping/CallContext;->where:I

    .line 124
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    const/4 v0, 0x4

    .line 130
    iput v0, p5, Lgnu/mapping/CallContext;->count:I

    const/16 v0, 0x4321

    .line 131
    iput v0, p5, Lgnu/mapping/CallContext;->where:I

    .line 135
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1

    .line 140
    array-length v0, p1

    iput v0, p2, Lgnu/mapping/CallContext;->count:I

    const/4 v0, 0x0

    .line 141
    iput v0, p2, Lgnu/mapping/CallContext;->where:I

    .line 142
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public numArgs()I
    .locals 1

    .line 94
    iget v0, p0, Lgnu/expr/ModuleMethod;->numArgs:I

    return v0
.end method

.method protected resolveParameterTypes()V
    .locals 6

    .line 50
    invoke-virtual {p0}, Lgnu/expr/ModuleMethod;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 55
    :try_start_0
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 57
    invoke-static {v0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    array-length v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 60
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    aget-object v4, v1, v2

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_4

    .line 72
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 76
    array-length v2, v1

    .line 77
    new-array v3, v2, [Lgnu/bytecode/Type;

    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    .line 80
    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    .line 82
    :cond_3
    iput-object v3, p0, Lgnu/expr/ModuleMethod;->argTypes:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    nop

    .line 90
    :cond_4
    :goto_3
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->argTypes:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 91
    invoke-super {p0}, Lgnu/mapping/MethodProc;->resolveParameterTypes()V

    :cond_5
    return-void
.end method
