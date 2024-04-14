.class public Lgnu/mapping/CallContext;
.super Ljava/lang/Object;
.source "CallContext.java"


# static fields
.field public static final ARG_IN_IVALUE1:I = 0x5

.field public static final ARG_IN_IVALUE2:I = 0x6

.field public static final ARG_IN_VALUE1:I = 0x1

.field public static final ARG_IN_VALUE2:I = 0x2

.field public static final ARG_IN_VALUE3:I = 0x3

.field public static final ARG_IN_VALUE4:I = 0x4

.field public static final ARG_IN_VALUES_ARRAY:I

.field static currentContext:Ljava/lang/ThreadLocal;


# instance fields
.field public consumer:Lgnu/lists/Consumer;

.field public count:I

.field public evalFrames:[[Ljava/lang/Object;

.field public ivalue1:I

.field public ivalue2:I

.field public next:I

.field public pc:I

.field public proc:Lgnu/mapping/Procedure;

.field public value1:Ljava/lang/Object;

.field public value2:Ljava/lang/Object;

.field public value3:Ljava/lang/Object;

.field public value4:Ljava/lang/Object;

.field public values:[Ljava/lang/Object;

.field public vstack:Lgnu/mapping/ValueStack;

.field public where:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/mapping/CallContext;->currentContext:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lgnu/mapping/ValueStack;

    invoke-direct {v0}, Lgnu/mapping/ValueStack;-><init>()V

    iput-object v0, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 72
    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method

.method public static getInstance()Lgnu/mapping/CallContext;
    .locals 1

    .line 48
    invoke-static {}, Lgnu/mapping/CallContext;->getOnlyInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lgnu/mapping/CallContext;

    invoke-direct {v0}, Lgnu/mapping/CallContext;-><init>()V

    .line 52
    invoke-static {v0}, Lgnu/mapping/CallContext;->setInstance(Lgnu/mapping/CallContext;)V

    :cond_0
    return-object v0
.end method

.method public static getOnlyInstance()Lgnu/mapping/CallContext;
    .locals 1

    .line 36
    sget-object v0, Lgnu/mapping/CallContext;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/CallContext;

    return-object v0
.end method

.method public static setInstance(Lgnu/mapping/CallContext;)V
    .locals 1

    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    sget-object v0, Lgnu/mapping/CallContext;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final cleanupFromContext(I)V
    .locals 4

    .line 279
    iget-object v0, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 280
    iget-object v1, v0, Lgnu/mapping/ValueStack;->data:[C

    add-int/lit8 v2, p1, -0x2

    .line 281
    aget-char v2, v1, v2

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, p1, -0x1

    aget-char v1, v1, v3

    const v3, 0xffff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    .line 282
    iget-object v2, v0, Lgnu/mapping/ValueStack;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lgnu/lists/Consumer;

    iput-object v2, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 283
    iget-object v2, v0, Lgnu/mapping/ValueStack;->objects:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 284
    iput v1, v0, Lgnu/mapping/ValueStack;->oindex:I

    add-int/lit8 p1, p1, -0x3

    .line 285
    iput p1, v0, Lgnu/mapping/ValueStack;->gapStart:I

    return-void
.end method

.method getArgAsObject(I)Ljava/lang/Object;
    .locals 2

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 107
    iget v0, p0, Lgnu/mapping/CallContext;->where:I

    mul-int/lit8 v1, p1, 0x4

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    iget p1, p0, Lgnu/mapping/CallContext;->ivalue2:I

    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1

    .line 113
    :pswitch_1
    iget p1, p0, Lgnu/mapping/CallContext;->ivalue1:I

    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1

    .line 112
    :pswitch_2
    iget-object p1, p0, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    return-object p1

    .line 111
    :pswitch_3
    iget-object p1, p0, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    return-object p1

    .line 110
    :pswitch_4
    iget-object p1, p0, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    return-object p1

    .line 109
    :pswitch_5
    iget-object p1, p0, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    return-object p1

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getArgCount()I
    .locals 1

    .line 120
    iget v0, p0, Lgnu/mapping/CallContext;->count:I

    return v0
.end method

.method public getArgs()[Ljava/lang/Object;
    .locals 4

    .line 203
    iget v0, p0, Lgnu/mapping/CallContext;->where:I

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    return-object v0

    .line 207
    :cond_0
    iget v0, p0, Lgnu/mapping/CallContext;->count:I

    const/4 v1, 0x0

    .line 208
    iput v1, p0, Lgnu/mapping/CallContext;->next:I

    .line 209
    new-array v2, v0, [Ljava/lang/Object;

    :goto_0
    if-ge v1, v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public final getFromContext(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 264
    iget-object v0, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 265
    iget v1, v0, Lgnu/mapping/ValueStack;->gapStart:I

    invoke-static {v0, p1, v1}, Lgnu/mapping/Values;->make(Lgnu/lists/TreeList;II)Ljava/lang/Object;

    move-result-object v0

    .line 266
    invoke-virtual {p0, p1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    return-object v0
.end method

.method public getNextArg()Ljava/lang/Object;
    .locals 3

    .line 130
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 132
    iput v1, p0, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {p0, v0}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Lgnu/mapping/WrongArguments;

    const/4 v1, 0x0

    iget v2, p0, Lgnu/mapping/CallContext;->count:I

    invoke-direct {v0, v1, v2}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0
.end method

.method public getNextArg(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 148
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    if-lt v0, v1, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 p1, v0, 0x1

    .line 150
    iput p1, p0, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {p0, v0}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNextIntArg()I
    .locals 3

    .line 137
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 139
    iput v1, p0, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {p0, v0}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 140
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .line 138
    :cond_0
    new-instance v0, Lgnu/mapping/WrongArguments;

    const/4 v1, 0x0

    iget v2, p0, Lgnu/mapping/CallContext;->count:I

    invoke-direct {v0, v1, v2}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0
.end method

.method public getNextIntArg(I)I
    .locals 2

    .line 155
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, v0, 0x1

    .line 157
    iput p1, p0, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {p0, v0}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public final getRestArgsArray(I)[Ljava/lang/Object;
    .locals 4

    .line 163
    iget v0, p0, Lgnu/mapping/CallContext;->count:I

    sub-int/2addr v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 165
    :goto_0
    iget v2, p0, Lgnu/mapping/CallContext;->count:I

    if-ge p1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, p1, 0x1

    .line 167
    invoke-virtual {p0, p1}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    move v1, v2

    move p1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getRestArgsList(I)Lgnu/lists/LList;
    .locals 5

    .line 176
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v1, 0x0

    move-object v2, v0

    .line 179
    :goto_0
    iget v3, p0, Lgnu/mapping/CallContext;->count:I

    if-ge p1, v3, :cond_1

    .line 181
    new-instance v3, Lgnu/lists/Pair;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, p1}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v3, p1, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v1, :cond_0

    move-object v2, v3

    goto :goto_1

    .line 185
    :cond_0
    invoke-virtual {v1, v3}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    :goto_1
    move-object v1, v3

    move p1, v4

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public lastArg()V
    .locals 3

    .line 196
    iget v0, p0, Lgnu/mapping/CallContext;->next:I

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 198
    iput-object v2, p0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    return-void

    .line 197
    :cond_0
    new-instance v0, Lgnu/mapping/WrongArguments;

    iget v1, p0, Lgnu/mapping/CallContext;->count:I

    invoke-direct {v0, v2, v1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0
.end method

.method public runUntilDone()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 220
    :goto_0
    iget-object v0, p0, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 233
    iput-object v1, p0, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 234
    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply(Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public final runUntilValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 292
    iget-object v1, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 293
    iput-object v1, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 294
    iget v2, v1, Lgnu/mapping/ValueStack;->gapStart:I

    .line 295
    iget v3, v1, Lgnu/mapping/ValueStack;->oindex:I

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 299
    iget v4, v1, Lgnu/mapping/ValueStack;->gapStart:I

    invoke-static {v1, v2, v4}, Lgnu/mapping/Values;->make(Lgnu/lists/TreeList;II)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 304
    iput v2, v1, Lgnu/mapping/ValueStack;->gapStart:I

    .line 305
    iput v3, v1, Lgnu/mapping/ValueStack;->oindex:I

    return-object v4

    :catchall_0
    move-exception v4

    .line 303
    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 304
    iput v2, v1, Lgnu/mapping/ValueStack;->gapStart:I

    .line 305
    iput v3, v1, Lgnu/mapping/ValueStack;->oindex:I

    throw v4
.end method

.method public final runUntilValue(Lgnu/lists/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 313
    iput-object p1, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw p1
.end method

.method public final startFromContext()I
    .locals 6

    .line 247
    iget-object v0, p0, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 248
    iget-object v1, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-virtual {v0, v1}, Lgnu/mapping/ValueStack;->find(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x3

    .line 249
    invoke-virtual {v0, v2}, Lgnu/mapping/ValueStack;->ensureSpace(I)V

    .line 250
    iget v2, v0, Lgnu/mapping/ValueStack;->gapStart:I

    .line 251
    iget-object v3, v0, Lgnu/mapping/ValueStack;->data:[C

    add-int/lit8 v4, v2, 0x1

    const v5, 0xf102

    aput-char v5, v3, v2

    .line 252
    invoke-virtual {v0, v4, v1}, Lgnu/mapping/ValueStack;->setIntN(II)V

    add-int/lit8 v4, v4, 0x2

    .line 254
    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 255
    iput v4, v0, Lgnu/mapping/ValueStack;->gapStart:I

    return v4
.end method

.method public writeValue(Ljava/lang/Object;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-static {p1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    return-void
.end method
