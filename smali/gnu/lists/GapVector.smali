.class public Lgnu/lists/GapVector;
.super Lgnu/lists/AbstractSequence;
.source "GapVector.java"

# interfaces
.implements Lgnu/lists/Sequence;


# instance fields
.field public base:Lgnu/lists/SimpleVector;

.field public gapEnd:I

.field public gapStart:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/lists/SimpleVector;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 20
    iput-object p1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 22
    iget p1, p1, Lgnu/lists/SimpleVector;->size:I

    iput p1, p0, Lgnu/lists/GapVector;->gapEnd:I

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 184
    invoke-virtual {p0, p1, v0}, Lgnu/lists/GapVector;->gapReserve(II)V

    .line 185
    iget-object v1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v1, p1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget p1, p0, Lgnu/lists/GapVector;->gapStart:I

    add-int/2addr p1, v0

    iput p1, p0, Lgnu/lists/GapVector;->gapStart:I

    return-void
.end method

.method protected addPos(ILjava/lang/Object;)I
    .locals 2

    ushr-int/lit8 p1, p1, 0x1

    .line 176
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 177
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    sub-int/2addr v1, v0

    add-int/2addr p1, v1

    .line 178
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/lists/GapVector;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x1

    or-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 3

    .line 241
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x1

    .line 245
    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    if-ge v0, v2, :cond_2

    if-le v1, v2, :cond_1

    move v2, v1

    :cond_1
    shl-int/lit8 v2, v2, 0x1

    .line 248
    invoke-virtual {p0, p1, v2, p3}, Lgnu/lists/GapVector;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 250
    :cond_2
    iget p1, p0, Lgnu/lists/GapVector;->gapEnd:I

    if-le v1, p1, :cond_4

    if-ge v0, p1, :cond_3

    move v0, p1

    :cond_3
    shl-int/lit8 p1, v0, 0x1

    .line 253
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/GapVector;->consumePosRange(IILgnu/lists/Consumer;)V

    :cond_4
    return-void
.end method

.method public createPos(IZ)I
    .locals 2

    .line 220
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-le p1, v0, :cond_0

    .line 221
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    sub-int/2addr v1, v0

    add-int/2addr p1, v1

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    or-int/2addr p1, p2

    return p1
.end method

.method public fill(Ljava/lang/Object;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, v0, Lgnu/lists/SimpleVector;->size:I

    invoke-virtual {v0, v1, v2, p1}, Lgnu/lists/SimpleVector;->fill(IILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lgnu/lists/SimpleVector;->fill(IILjava/lang/Object;)V

    return-void
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 71
    iget-object p1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget p1, p1, Lgnu/lists/SimpleVector;->size:I

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    :goto_0
    if-ne p2, v0, :cond_1

    .line 72
    iget-object p2, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget p2, p2, Lgnu/lists/SimpleVector;->size:I

    goto :goto_1

    :cond_1
    ushr-int/lit8 p2, p2, 0x1

    .line 73
    :goto_1
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-ge v0, p2, :cond_2

    goto :goto_2

    :cond_2
    move v0, p2

    :goto_2
    if-ge p1, v0, :cond_3

    .line 75
    iget-object v1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v1, p1, p3}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 76
    :cond_3
    iget p1, p0, Lgnu/lists/GapVector;->gapEnd:I

    :goto_3
    if-ge p1, p2, :cond_4

    .line 77
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0, p1, p3}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method protected final gapReserve(I)V
    .locals 1

    .line 94
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    invoke-virtual {p0, v0, p1}, Lgnu/lists/GapVector;->gapReserve(II)V

    return-void
.end method

.method protected gapReserve(II)V
    .locals 5

    .line 108
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_2

    .line 111
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v0, v0, Lgnu/lists/SimpleVector;->size:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 113
    :goto_0
    iget v2, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int v4, v2, v3

    sub-int/2addr v0, v4

    add-int/2addr p2, v0

    if-ge v1, p2, :cond_1

    move v1, p2

    :cond_1
    sub-int/2addr v1, v0

    add-int/2addr v1, p1

    .line 118
    iget-object p2, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {p2, v3, v2, p1, v1}, Lgnu/lists/SimpleVector;->resizeShift(IIII)V

    .line 119
    iput p1, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 120
    iput v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    goto :goto_1

    :cond_2
    if-eq p1, v1, :cond_3

    .line 123
    invoke-virtual {p0, p1}, Lgnu/lists/GapVector;->shiftGap(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 50
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 51
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    sub-int/2addr v1, v0

    add-int/2addr p1, v1

    .line 52
    :cond_0
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNextKind(I)I
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lgnu/lists/GapVector;->hasNext(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {p1}, Lgnu/lists/SimpleVector;->getElementKind()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getSegment(II)I
    .locals 2

    .line 147
    invoke-virtual {p0}, Lgnu/lists/GapVector;->size()I

    move-result v0

    if-ltz p1, :cond_6

    if-le p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    add-int v1, p1, p2

    if-le v1, v0, :cond_2

    sub-int p2, v0, p1

    :cond_2
    :goto_0
    add-int v0, p1, p2

    .line 156
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    if-gt v0, v1, :cond_3

    return p1

    :cond_3
    if-lt p1, v1, :cond_4

    .line 159
    iget p2, p0, Lgnu/lists/GapVector;->gapEnd:I

    sub-int/2addr p2, v1

    :goto_1
    add-int/2addr p1, p2

    return p1

    :cond_4
    sub-int/2addr v1, p1

    shr-int/lit8 p2, p2, 0x1

    if-le v1, p2, :cond_5

    .line 163
    invoke-virtual {p0, v0}, Lgnu/lists/GapVector;->shiftGap(I)V

    return p1

    .line 168
    :cond_5
    invoke-virtual {p0, p1}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 169
    iget p2, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr p2, v0

    goto :goto_1

    :cond_6
    :goto_2
    const/4 p1, -0x1

    return p1
.end method

.method public hasNext(I)Z
    .locals 3

    const/4 v0, 0x1

    ushr-int/2addr p1, v0

    .line 37
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt p1, v1, :cond_0

    .line 38
    iget v2, p0, Lgnu/lists/GapVector;->gapEnd:I

    sub-int/2addr v2, v1

    add-int/2addr p1, v2

    .line 39
    :cond_0
    iget-object v1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, v1, Lgnu/lists/SimpleVector;->size:I

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
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

.method protected nextIndex(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 233
    iget-object p1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget p1, p1, Lgnu/lists/SimpleVector;->size:I

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    .line 234
    :goto_0
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-le p1, v0, :cond_1

    .line 235
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    :cond_1
    return p1
.end method

.method protected removePosRange(II)V
    .locals 2

    ushr-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x1

    .line 193
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    if-le p1, v0, :cond_0

    sub-int v0, p1, v0

    .line 194
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lgnu/lists/GapVector;->shiftGap(I)V

    goto :goto_0

    .line 195
    :cond_0
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-ge p2, v0, :cond_1

    .line 196
    invoke-virtual {p0, p2}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 197
    :cond_1
    :goto_0
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-ge p1, v0, :cond_2

    .line 199
    iget-object v1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    sub-int/2addr v0, p1

    invoke-virtual {v1, p1, v0}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 200
    iput p1, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 202
    :cond_2
    iget p1, p0, Lgnu/lists/GapVector;->gapEnd:I

    if-le p2, p1, :cond_3

    .line 204
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    sub-int v1, p2, p1

    invoke-virtual {v0, p1, v1}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 205
    iput p2, p0, Lgnu/lists/GapVector;->gapEnd:I

    :cond_3
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 58
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 59
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    sub-int/2addr v1, v0

    add-int/2addr p1, v1

    .line 60
    :cond_0
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0, p1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected shiftGap(I)V
    .locals 4

    .line 82
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int v1, p1, v0

    if-lez v1, :cond_0

    .line 84
    iget-object v2, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v3, p0, Lgnu/lists/GapVector;->gapEnd:I

    invoke-virtual {v2, v3, v0, v1}, Lgnu/lists/SimpleVector;->shift(III)V

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    .line 86
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v2, p0, Lgnu/lists/GapVector;->gapEnd:I

    add-int/2addr v2, v1

    neg-int v3, v1

    invoke-virtual {v0, p1, v2, v3}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 87
    :cond_1
    :goto_0
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    .line 88
    iput p1, p0, Lgnu/lists/GapVector;->gapStart:I

    return-void
.end method

.method public size()I
    .locals 3

    .line 31
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v0, v0, Lgnu/lists/SimpleVector;->size:I

    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method
