.class public abstract Lgnu/expr/ModuleBody;
.super Lgnu/mapping/Procedure0;
.source "ModuleBody.java"


# static fields
.field private static exitCounter:I

.field private static mainPrintValues:Z


# instance fields
.field protected runDone:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    return-void
.end method

.method public static declared-synchronized exitDecrement()V
    .locals 2

    const-class v0, Lgnu/expr/ModuleBody;

    monitor-enter v0

    .line 115
    :try_start_0
    sget v1, Lgnu/expr/ModuleBody;->exitCounter:I

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 121
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 124
    :cond_0
    sput v1, Lgnu/expr/ModuleBody;->exitCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized exitIncrement()V
    .locals 2

    const-class v0, Lgnu/expr/ModuleBody;

    monitor-enter v0

    .line 103
    :try_start_0
    sget v1, Lgnu/expr/ModuleBody;->exitCounter:I

    if-nez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 104
    sput v1, Lgnu/expr/ModuleBody;->exitCounter:I

    .line 105
    :cond_0
    sget v1, Lgnu/expr/ModuleBody;->exitCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lgnu/expr/ModuleBody;->exitCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMainPrintValues()Z
    .locals 1

    .line 90
    sget-boolean v0, Lgnu/expr/ModuleBody;->mainPrintValues:Z

    return v0
.end method

.method public static runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V
    .locals 0

    if-nez p1, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 67
    :cond_0
    :goto_0
    iput-object p2, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    if-eqz p1, :cond_3

    .line 70
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-nez p0, :cond_2

    .line 72
    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_1

    .line 73
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 74
    :cond_1
    new-instance p0, Lgnu/mapping/WrappedException;

    invoke-direct {p0, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 71
    :cond_2
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_3
    return-void
.end method

.method public static setMainPrintValues(Z)V
    .locals 0

    .line 95
    sput-boolean p0, Lgnu/expr/ModuleBody;->mainPrintValues:Z

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    iget v0, p1, Lgnu/mapping/CallContext;->pc:I

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    :cond_0
    return-void
.end method

.method public apply0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 80
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->match0(Lgnu/mapping/CallContext;)I

    .line 82
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 172
    sget-object v0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 180
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 189
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    .line 200
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    .line 212
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 218
    array-length v0, p2

    .line 219
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v1

    and-int/lit16 v2, v1, 0xfff

    if-lt v0, v2, :cond_5

    if-ltz v1, :cond_0

    shr-int/lit8 v1, v1, 0xc

    if-gt v0, v1, :cond_5

    :cond_0
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_5

    .line 234
    aget-object v8, p2, v1

    aget-object v9, p2, v2

    aget-object v10, p2, v3

    aget-object v11, p2, v4

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 232
    :cond_1
    aget-object v0, p2, v1

    aget-object v1, p2, v2

    aget-object p2, p2, v3

    invoke-virtual {p0, p1, v0, v1, p2}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 230
    :cond_2
    aget-object v0, p2, v1

    aget-object p2, p2, v2

    invoke-virtual {p0, p1, v0, p2}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 228
    :cond_3
    aget-object p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 226
    :cond_4
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 237
    :cond_5
    new-instance p2, Lgnu/mapping/WrongArguments;

    invoke-direct {p2, p1, v0}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw p2
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    .line 242
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    and-int/lit16 v1, v0, 0xfff

    if-lez v1, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    if-gez v0, :cond_1

    .line 247
    sget-object v0, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, p2}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 248
    iput v0, p2, Lgnu/mapping/CallContext;->count:I

    .line 249
    iput v0, p2, Lgnu/mapping/CallContext;->where:I

    .line 250
    iput v0, p2, Lgnu/mapping/CallContext;->next:I

    .line 251
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 257
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

    .line 266
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 267
    iput v2, p3, Lgnu/mapping/CallContext;->count:I

    .line 268
    iput v2, p3, Lgnu/mapping/CallContext;->where:I

    .line 269
    iput v1, p3, Lgnu/mapping/CallContext;->next:I

    .line 270
    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 275
    invoke-virtual {p0, p1, v0, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 281
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

    .line 290
    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 291
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 292
    iput v2, p4, Lgnu/mapping/CallContext;->count:I

    const/16 p2, 0x21

    .line 293
    iput p2, p4, Lgnu/mapping/CallContext;->where:I

    .line 295
    iput v1, p4, Lgnu/mapping/CallContext;->next:I

    .line 296
    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 300
    invoke-virtual {p0, p1, v0, p4}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 306
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

    .line 315
    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 316
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 317
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 318
    iput v2, p5, Lgnu/mapping/CallContext;->count:I

    const/16 p2, 0x321

    .line 319
    iput p2, p5, Lgnu/mapping/CallContext;->where:I

    .line 322
    iput v1, p5, Lgnu/mapping/CallContext;->next:I

    .line 323
    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    .line 328
    invoke-virtual {p0, p1, v0, p5}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 334
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

    .line 343
    :cond_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 344
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 345
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 346
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 347
    iput v2, p6, Lgnu/mapping/CallContext;->count:I

    const/16 p2, 0x4321

    .line 348
    iput p2, p6, Lgnu/mapping/CallContext;->where:I

    .line 352
    iput v1, p6, Lgnu/mapping/CallContext;->next:I

    .line 353
    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    .line 358
    invoke-virtual {p0, p1, v0, p6}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 7

    .line 363
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    and-int/lit16 v1, v0, 0xfff

    .line 365
    array-length v2, p2

    if-ge v2, v1, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_6

    .line 369
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

    .line 383
    array-length v2, p2

    if-le v2, v0, :cond_6

    const/high16 p1, -0xe0000

    or-int/2addr p1, v0

    return p1

    .line 380
    :cond_1
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    aget-object v5, p2, v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 378
    :cond_2
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 376
    :cond_3
    aget-object v0, p2, v1

    aget-object p2, p2, v3

    invoke-virtual {p0, p1, v0, p2, p3}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 374
    :cond_4
    aget-object p2, p2, v1

    invoke-virtual {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 372
    :cond_5
    invoke-virtual {p0, p1, p3}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 387
    :cond_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 388
    array-length p2, p2

    iput p2, p3, Lgnu/mapping/CallContext;->count:I

    .line 389
    iput v1, p3, Lgnu/mapping/CallContext;->where:I

    .line 390
    iput v1, p3, Lgnu/mapping/CallContext;->next:I

    .line 391
    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v1
.end method

.method public run()V
    .locals 1

    .line 26
    monitor-enter p0

    .line 28
    :try_start_0
    iget-boolean v0, p0, Lgnu/expr/ModuleBody;->runDone:Z

    if-eqz v0, :cond_0

    .line 29
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lgnu/expr/ModuleBody;->runDone:Z

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sget-object v0, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/lists/Consumer;)V

    return-void

    :catchall_0
    move-exception v0

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run(Lgnu/lists/Consumer;)V
    .locals 2

    .line 38
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 39
    iget-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 40
    iput-object p1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 44
    :try_start_0
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 51
    :goto_0
    invoke-static {v0, p1, v1}, Lgnu/expr/ModuleBody;->runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V

    return-void
.end method

.method public run(Lgnu/mapping/CallContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public final runAsMain()V
    .locals 3

    .line 131
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v0}, Lgnu/text/WriterManager;->registerShutdownHook()Z

    .line 134
    :try_start_0
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 135
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v1

    .line 138
    invoke-static {v1}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v2

    iput-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 139
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 140
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 141
    invoke-virtual {v1}, Lgnu/mapping/OutPort;->freshLine()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ModuleBody;->run()V

    .line 146
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 149
    :goto_0
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 150
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    const/4 v0, -0x1

    .line 156
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_1
    return-void
.end method
