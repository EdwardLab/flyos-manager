.class public Lgnu/lists/StableVector;
.super Lgnu/lists/GapVector;
.source "StableVector.java"


# static fields
.field static final END_POSITION:I = 0x1

.field protected static final FREE_POSITION:I = -0x2

.field static final START_POSITION:I


# instance fields
.field protected free:I

.field protected positions:[I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lgnu/lists/GapVector;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/lists/SimpleVector;)V
    .locals 4

    .line 78
    invoke-direct {p0, p1}, Lgnu/lists/GapVector;-><init>(Lgnu/lists/SimpleVector;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 79
    iput-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 81
    invoke-virtual {p1}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result p1

    const/4 v1, 0x1

    shl-int/2addr p1, v1

    or-int/2addr p1, v1

    aput p1, v0, v1

    const/4 p1, -0x1

    .line 82
    iput p1, p0, Lgnu/lists/StableVector;->free:I

    .line 83
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v0, v0

    :goto_0
    add-int/2addr v0, p1

    if-le v0, v1, :cond_0

    .line 85
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    iget v3, p0, Lgnu/lists/StableVector;->free:I

    aput v3, v2, v0

    .line 86
    iput v0, p0, Lgnu/lists/StableVector;->free:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected addPos(ILjava/lang/Object;)I
    .locals 4

    .line 286
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    ushr-int/lit8 v1, v0, 0x1

    .line 288
    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    if-lt v1, v2, :cond_0

    .line 289
    iget v2, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 294
    invoke-virtual {p0, p1, v2}, Lgnu/lists/StableVector;->createPos(IZ)I

    move-result p1

    goto :goto_0

    .line 296
    :cond_1
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    or-int/2addr v0, v2

    aput v0, v3, p1

    .line 298
    :cond_2
    :goto_0
    invoke-virtual {p0, v1, p2}, Lgnu/lists/StableVector;->add(ILjava/lang/Object;)V

    return p1
.end method

.method protected adjustPositions(III)V
    .locals 6

    .line 263
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    .line 264
    invoke-virtual {p0}, Lgnu/lists/StableVector;->unchainFreelist()V

    :cond_0
    const/high16 v0, -0x80000000

    xor-int/2addr p1, v0

    xor-int/2addr p2, v0

    .line 272
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v2, v2

    :cond_1
    :goto_0
    add-int/2addr v2, v1

    if-lez v2, :cond_2

    .line 274
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    aget v4, v3, v2

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    xor-int v5, v4, v0

    if-lt v5, p1, :cond_1

    if-gt v5, p2, :cond_1

    add-int/2addr v4, p3

    .line 279
    aput v4, v3, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected allocPositionIndex()I
    .locals 5

    .line 96
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lgnu/lists/StableVector;->chainFreelist()V

    .line 98
    :cond_0
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    if-gez v0, :cond_2

    .line 100
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    .line 101
    new-array v3, v2, [I

    const/4 v4, 0x0

    .line 102
    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-lt v2, v1, :cond_1

    .line 105
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    aput v0, v3, v2

    .line 106
    iput v2, p0, Lgnu/lists/StableVector;->free:I

    goto :goto_0

    .line 108
    :cond_1
    iput-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    .line 110
    :cond_2
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    .line 111
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v1, v0

    iput v1, p0, Lgnu/lists/StableVector;->free:I

    return v0
.end method

.method protected chainFreelist()V
    .locals 5

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lgnu/lists/StableVector;->free:I

    .line 42
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/2addr v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 44
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v3, v2, v1

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 47
    iget v3, p0, Lgnu/lists/StableVector;->free:I

    aput v3, v2, v1

    .line 48
    iput v1, p0, Lgnu/lists/StableVector;->free:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget p1, v0, p1

    aget p2, v0, p2

    invoke-super {p0, p1, p2, p3}, Lgnu/lists/GapVector;->consumePosRange(IILgnu/lists/Consumer;)V

    return-void
.end method

.method public copyPos(I)I
    .locals 2

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lgnu/lists/StableVector;->allocPositionIndex()I

    move-result v0

    .line 183
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    aget p1, v1, p1

    aput p1, v1, v0

    move p1, v0

    :cond_0
    return p1
.end method

.method public createPos(IZ)I
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 119
    invoke-virtual {p0}, Lgnu/lists/StableVector;->size()I

    move-result v1

    if-ne p1, v1, :cond_1

    return v0

    .line 121
    :cond_1
    iget v1, p0, Lgnu/lists/StableVector;->gapStart:I

    if-gt p1, v1, :cond_2

    iget v1, p0, Lgnu/lists/StableVector;->gapStart:I

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_3

    .line 122
    :cond_2
    iget v1, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 123
    :cond_3
    invoke-virtual {p0}, Lgnu/lists/StableVector;->allocPositionIndex()I

    move-result v1

    .line 124
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    shl-int/2addr p1, v0

    or-int/2addr p1, p2

    aput p1, v2, v1

    return v1
.end method

.method public endPos()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget p1, v0, p1

    aget p2, v0, p2

    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/StableVector;->fillPosRange(IILjava/lang/Object;)V

    return-void
.end method

.method protected gapReserve(II)V
    .locals 3

    .line 227
    iget v0, p0, Lgnu/lists/StableVector;->gapEnd:I

    .line 228
    iget v1, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int v2, v0, v1

    if-le p2, v2, :cond_1

    .line 231
    iget-object v2, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    iget v2, v2, Lgnu/lists/SimpleVector;->size:I

    .line 232
    invoke-super {p0, p1, p2}, Lgnu/lists/GapVector;->gapReserve(II)V

    .line 233
    iget-object p2, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    iget p2, p2, Lgnu/lists/SimpleVector;->size:I

    if-ne p1, v1, :cond_0

    shl-int/lit8 p1, v0, 0x1

    shl-int/lit8 v0, p2, 0x1

    or-int/lit8 v0, v0, 0x1

    sub-int/2addr p2, v2

    shl-int/lit8 p2, p2, 0x1

    .line 235
    invoke-virtual {p0, p1, v0, p2}, Lgnu/lists/StableVector;->adjustPositions(III)V

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v0, 0x1

    shl-int/lit8 v2, v2, 0x1

    or-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x1

    .line 241
    invoke-virtual {p0, p1, v2, v0}, Lgnu/lists/StableVector;->adjustPositions(III)V

    .line 243
    iget p1, p0, Lgnu/lists/StableVector;->gapStart:I

    shl-int/lit8 p1, p1, 0x1

    shl-int/lit8 p2, p2, 0x1

    or-int/lit8 p2, p2, 0x1

    iget v0, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v1, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lgnu/lists/StableVector;->adjustPositions(III)V

    goto :goto_0

    .line 246
    :cond_1
    iget p2, p0, Lgnu/lists/StableVector;->gapStart:I

    if-eq p1, p2, :cond_2

    .line 247
    invoke-virtual {p0, p1}, Lgnu/lists/StableVector;->shiftGap(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public hasNext(I)Z
    .locals 3

    .line 135
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget p1, v0, p1

    const/4 v0, 0x1

    ushr-int/2addr p1, v0

    .line 137
    iget v1, p0, Lgnu/lists/StableVector;->gapStart:I

    if-lt p1, v1, :cond_0

    .line 138
    iget v1, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 139
    :cond_0
    iget-object v1, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v1}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v1

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isAfterPos(I)Z
    .locals 1

    .line 130
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget p1, v0, p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextIndex(I)I
    .locals 2

    .line 161
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget p1, v0, p1

    ushr-int/lit8 p1, p1, 0x1

    .line 162
    iget v0, p0, Lgnu/lists/StableVector;->gapStart:I

    if-le p1, v0, :cond_0

    .line 163
    iget v0, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v1, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public nextPos(I)I
    .locals 4

    .line 144
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    ushr-int/lit8 v1, v0, 0x1

    .line 146
    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    if-lt v1, v2, :cond_0

    .line 147
    iget v2, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 148
    :cond_0
    iget-object v2, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v2}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 150
    invoke-virtual {p0, p1}, Lgnu/lists/StableVector;->releasePos(I)V

    return v3

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 154
    invoke-virtual {p0, v3, v1}, Lgnu/lists/StableVector;->createPos(IZ)I

    move-result p1

    .line 155
    :cond_2
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    or-int/2addr v0, v1

    aput v0, v2, p1

    return p1
.end method

.method public releasePos(I)V
    .locals 2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 171
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lgnu/lists/StableVector;->chainFreelist()V

    .line 173
    :cond_0
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    iget v1, p0, Lgnu/lists/StableVector;->free:I

    aput v1, v0, p1

    .line 174
    iput p1, p0, Lgnu/lists/StableVector;->free:I

    :cond_1
    return-void
.end method

.method protected removePosRange(II)V
    .locals 6

    .line 304
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget p1, v0, p1

    aget p2, v0, p2

    invoke-super {p0, p1, p2}, Lgnu/lists/GapVector;->removePosRange(II)V

    .line 307
    iget p1, p0, Lgnu/lists/StableVector;->gapStart:I

    .line 308
    iget p2, p0, Lgnu/lists/StableVector;->gapEnd:I

    .line 309
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    .line 310
    invoke-virtual {p0}, Lgnu/lists/StableVector;->unchainFreelist()V

    .line 311
    :cond_0
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v0, v0

    :cond_1
    :goto_0
    add-int/2addr v0, v1

    if-lez v0, :cond_4

    .line 313
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v3, v2, v0

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    shr-int/lit8 v4, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    if-lt v4, p1, :cond_1

    if-ge v4, p2, :cond_1

    .line 321
    iget v3, p0, Lgnu/lists/StableVector;->gapEnd:I

    shl-int/2addr v3, v5

    or-int/2addr v3, v5

    aput v3, v2, v0

    goto :goto_0

    :cond_3
    if-le v4, p1, :cond_1

    if-gt v4, p2, :cond_1

    .line 326
    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    shl-int/2addr v3, v5

    aput v3, v2, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected shiftGap(I)V
    .locals 4

    .line 196
    iget v0, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int v1, p1, v0

    if-lez v1, :cond_0

    .line 201
    iget v2, p0, Lgnu/lists/StableVector;->gapEnd:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x1

    shl-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    shl-int/lit8 v1, v0, 0x1

    .line 216
    iget v3, p0, Lgnu/lists/StableVector;->gapEnd:I

    sub-int/2addr v3, v0

    shl-int/lit8 v0, v3, 0x1

    .line 218
    :goto_0
    invoke-super {p0, p1}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 220
    invoke-virtual {p0, v2, v1, v0}, Lgnu/lists/StableVector;->adjustPositions(III)V

    return-void
.end method

.method public startPos()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected unchainFreelist()V
    .locals 4

    .line 56
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    :goto_0
    const/4 v1, -0x2

    if-ltz v0, :cond_0

    .line 58
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v3, v2, v0

    .line 59
    aput v1, v2, v0

    move v0, v3

    goto :goto_0

    .line 62
    :cond_0
    iput v1, p0, Lgnu/lists/StableVector;->free:I

    return-void
.end method
