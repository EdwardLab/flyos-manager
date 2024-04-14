.class public abstract Lgnu/lists/SimpleVector;
.super Lgnu/lists/AbstractSequence;
.source "SimpleVector.java"

# interfaces
.implements Lgnu/lists/Sequence;
.implements Lgnu/lists/Array;


# instance fields
.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    return-void
.end method

.method protected static compareToInt(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I
    .locals 7

    .line 388
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    .line 389
    iget v1, p1, Lgnu/lists/SimpleVector;->size:I

    if-le v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 393
    invoke-virtual {p0, v3}, Lgnu/lists/SimpleVector;->intAtBuffer(I)I

    move-result v4

    .line 394
    invoke-virtual {p1, v3}, Lgnu/lists/SimpleVector;->intAtBuffer(I)I

    move-result v5

    const/16 v6, 0xb

    if-eq v6, v5, :cond_2

    if-le v4, v5, :cond_1

    const/4 p0, 0x1

    goto :goto_2

    :cond_1
    const/4 p0, -0x1

    :goto_2
    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sub-int/2addr v0, v1

    return v0
.end method

.method protected static compareToLong(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I
    .locals 9

    .line 403
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    .line 404
    iget v1, p1, Lgnu/lists/SimpleVector;->size:I

    if-le v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 408
    invoke-virtual {p0, v3}, Lgnu/lists/SimpleVector;->longAtBuffer(I)J

    move-result-wide v4

    .line 409
    invoke-virtual {p1, v3}, Lgnu/lists/SimpleVector;->longAtBuffer(I)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    if-lez v8, :cond_1

    const/4 p0, 0x1

    goto :goto_2

    :cond_1
    const/4 p0, -0x1

    :goto_2
    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3

    .line 227
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 228
    iput v0, p0, Lgnu/lists/SimpleVector;->size:I

    .line 229
    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v1

    if-le v0, v1, :cond_1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v1, 0x2

    .line 231
    :goto_0
    invoke-virtual {p0, v2}, Lgnu/lists/SimpleVector;->setBufferLength(I)V

    .line 232
    :cond_1
    iput v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-eq v0, p1, :cond_2

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, p1

    .line 234
    invoke-virtual {p0, p1, v1, v0}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 235
    :cond_2
    invoke-virtual {p0, p1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 213
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    invoke-virtual {p0, v0, p1}, Lgnu/lists/SimpleVector;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3

    .line 242
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 243
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lgnu/lists/SimpleVector;->setSize(I)V

    add-int v1, p1, v0

    .line 244
    iget v2, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v2, v0

    sub-int/2addr v2, p1

    invoke-virtual {p0, p1, v1, v2}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 245
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 247
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    move p1, v0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected addPos(ILjava/lang/Object;)I
    .locals 0

    ushr-int/lit8 p1, p1, 0x1

    .line 220
    invoke-virtual {p0, p1, p2}, Lgnu/lists/SimpleVector;->add(ILjava/lang/Object;)V

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, v0}, Lgnu/lists/SimpleVector;->setSize(I)V

    return-void
.end method

.method protected abstract clearBuffer(II)V
.end method

.method public consume(IILgnu/lists/Consumer;)V
    .locals 1

    shl-int/lit8 v0, p1, 0x1

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x1

    .line 418
    invoke-virtual {p0, v0, p1, p3}, Lgnu/lists/SimpleVector;->consumePosRange(IILgnu/lists/Consumer;)V

    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2

    const/4 v0, 0x1

    ushr-int/2addr p1, v0

    .line 424
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 426
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    return v0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 1

    .line 432
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x1

    .line 436
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-le p2, v0, :cond_1

    move p2, v0

    :cond_1
    :goto_0
    if-ge p1, p2, :cond_2

    .line 439
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public createPos(IZ)I
    .locals 0

    shl-int/lit8 p1, p1, 0x1

    or-int/2addr p1, p2

    return p1
.end method

.method public fill(IILjava/lang/Object;)V
    .locals 1

    if-ltz p1, :cond_1

    .line 199
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-gt p2, v0, :cond_1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 202
    invoke-virtual {p0, p1, p3}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 200
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public fill(Ljava/lang/Object;)V
    .locals 1

    .line 185
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 186
    invoke-virtual {p0, v0, p1}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 191
    iget p1, p0, Lgnu/lists/SimpleVector;->size:I

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    :goto_0
    if-ne p2, v0, :cond_1

    .line 192
    iget p2, p0, Lgnu/lists/SimpleVector;->size:I

    goto :goto_1

    :cond_1
    ushr-int/lit8 p2, p2, 0x1

    :goto_1
    if-ge p1, p2, :cond_2

    .line 194
    invoke-virtual {p0, p1, p3}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 130
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge p1, v0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected abstract getBuffer()Ljava/lang/Object;
.end method

.method protected abstract getBuffer(I)Ljava/lang/Object;
.end method

.method public abstract getBufferLength()I
.end method

.method public getElementKind()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getNextKind(I)I
    .locals 0

    .line 444
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->hasNext(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getElementKind()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 1

    ushr-int/lit8 p1, p1, 0x1

    .line 138
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-lt p1, v0, :cond_0

    sget-object p1, Lgnu/lists/SimpleVector;->eofValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getRowMajor(I)Ljava/lang/Object;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public intAt(I)I
    .locals 1

    .line 148
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge p1, v0, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->intAtBuffer(I)I

    move-result p1

    return p1

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public intAtBuffer(I)I
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lgnu/lists/Convert;->toInt(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected isAfterPos(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public longAt(I)J
    .locals 2

    .line 155
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge p1, v0, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->longAtBuffer(I)J

    move-result-wide v0

    return-wide v0

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public longAtBuffer(I)J
    .locals 2

    .line 162
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lgnu/lists/Convert;->toLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected nextIndex(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 97
    iget p1, p0, Lgnu/lists/SimpleVector;->size:I

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method public nextPos(I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    .line 110
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    .line 311
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge p1, v0, :cond_0

    .line 313
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    .line 314
    invoke-virtual {p0, v1, p1, v2}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 315
    iget p1, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr p1, v2

    iput p1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 316
    invoke-virtual {p0, p1, v2}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    return-object v0

    .line 312
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 322
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    .line 325
    invoke-virtual {p0, v0, p1, v1}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 326
    iget p1, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 327
    invoke-virtual {p0, p1, v1}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 336
    :goto_0
    iget v3, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge v0, v3, :cond_2

    .line 338
    invoke-virtual {p0, v0}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 339
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 346
    invoke-virtual {p0, v1, v3}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p0, v1}, Lgnu/lists/SimpleVector;->setSize(I)V

    return v2
.end method

.method public removePos(II)V
    .locals 3

    ushr-int/lit8 p1, p1, 0x1

    .line 288
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-ltz p2, :cond_1

    add-int v1, p1, p2

    goto :goto_0

    :cond_1
    add-int v1, p1, p2

    neg-int p2, p2

    move v2, v1

    move v1, p1

    move p1, v2

    :goto_0
    if-ltz p1, :cond_2

    if-ge v1, v0, :cond_2

    sub-int/2addr v0, v1

    .line 304
    invoke-virtual {p0, v1, p1, v0}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 305
    iget p1, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr p1, p2

    iput p1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 306
    invoke-virtual {p0, p1, p2}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    return-void

    .line 303
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected removePosRange(II)V
    .locals 1

    ushr-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x1

    if-lt p1, p2, :cond_0

    return-void

    .line 277
    :cond_0
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-le p2, v0, :cond_1

    move p2, v0

    :cond_1
    sub-int/2addr v0, p2

    .line 279
    invoke-virtual {p0, p2, p1, v0}, Lgnu/lists/SimpleVector;->shift(III)V

    sub-int/2addr p2, p1

    .line 281
    iget p1, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr p1, p2

    iput p1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 282
    invoke-virtual {p0, p1, p2}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    return-void
.end method

.method protected resizeShift(IIII)V
    .locals 4

    sub-int v0, p2, p1

    sub-int v1, p4, p3

    .line 60
    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v2

    sub-int v0, v2, v0

    add-int/2addr v0, v1

    if-le v0, v2, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Lgnu/lists/SimpleVector;->setBufferLength(I)V

    .line 65
    iput v0, p0, Lgnu/lists/SimpleVector;->size:I

    :cond_0
    sub-int v3, p1, p3

    if-ltz v3, :cond_1

    sub-int/2addr v2, p2

    sub-int/2addr v0, v2

    .line 71
    invoke-virtual {p0, p2, v0, v2}, Lgnu/lists/SimpleVector;->shift(III)V

    if-lez v3, :cond_2

    .line 73
    invoke-virtual {p0, p3, p4, v3}, Lgnu/lists/SimpleVector;->shift(III)V

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p4

    sub-int/2addr v2, v0

    .line 78
    invoke-virtual {p0, v2, p4, v0}, Lgnu/lists/SimpleVector;->shift(III)V

    sub-int p4, p3, p1

    .line 79
    invoke-virtual {p0, p2, p1, p4}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 81
    :cond_2
    :goto_0
    invoke-virtual {p0, p3, v1}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 358
    :goto_0
    iget v3, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge v0, v3, :cond_2

    .line 360
    invoke-virtual {p0, v0}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 361
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 368
    invoke-virtual {p0, v1, v3}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p0, v1}, Lgnu/lists/SimpleVector;->setSize(I)V

    return v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 174
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge p1, v0, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v0

    .line 177
    invoke-virtual {p0, p1, p2}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected abstract setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setBufferLength(I)V
.end method

.method public setSize(I)V
    .locals 2

    .line 39
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    .line 40
    iput p1, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge p1, v0, :cond_0

    sub-int/2addr v0, p1

    .line 42
    invoke-virtual {p0, p1, v0}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    goto :goto_2

    .line 45
    :cond_0
    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v0

    if-le p1, v0, :cond_3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    if-le p1, v1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    .line 49
    :goto_1
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->setBufferLength(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public shift(III)V
    .locals 1

    .line 207
    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getBuffer()Ljava/lang/Object;

    move-result-object v0

    .line 208
    invoke-static {v0, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final size()I
    .locals 1

    .line 25
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    return v0
.end method

.method public transpose([I[II[I)Lgnu/lists/Array;
    .locals 1

    .line 455
    new-instance v0, Lgnu/lists/GeneralArray;

    invoke-direct {v0}, Lgnu/lists/GeneralArray;-><init>()V

    .line 456
    iput-object p4, v0, Lgnu/lists/GeneralArray;->strides:[I

    .line 457
    iput-object p2, v0, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 458
    iput-object p1, v0, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 459
    iput p3, v0, Lgnu/lists/GeneralArray;->offset:I

    .line 460
    iput-object p0, v0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    const/4 p1, 0x0

    .line 461
    iput-boolean p1, v0, Lgnu/lists/GeneralArray;->simple:Z

    return-object v0
.end method
