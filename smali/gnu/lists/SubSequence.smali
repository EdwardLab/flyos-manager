.class public Lgnu/lists/SubSequence;
.super Lgnu/lists/AbstractSequence;
.source "SubSequence.java"

# interfaces
.implements Lgnu/lists/Sequence;


# instance fields
.field base:Lgnu/lists/AbstractSequence;

.field ipos0:I

.field ipos1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 37
    iput-object p1, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;II)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 30
    iput-object p1, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    .line 31
    iput p2, p0, Lgnu/lists/SubSequence;->ipos0:I

    .line 32
    iput p3, p0, Lgnu/lists/SubSequence;->ipos1:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 123
    iget v0, p0, Lgnu/lists/SubSequence;->ipos0:I

    iget v1, p0, Lgnu/lists/SubSequence;->ipos1:I

    invoke-virtual {p0, v0, v1}, Lgnu/lists/SubSequence;->removePosRange(II)V

    return-void
.end method

.method public compare(II)I
    .locals 1

    .line 89
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1, p2}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result p1

    return p1
.end method

.method public createPos(IZ)I
    .locals 2

    .line 64
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v0, v1, p1, p2}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result p1

    return p1
.end method

.method public createRelativePos(IIZ)I
    .locals 1

    .line 69
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result p1

    return p1
.end method

.method public endPos()I
    .locals 1

    .line 107
    iget v0, p0, Lgnu/lists/SubSequence;->ipos1:I

    return v0
.end method

.method public finalize()V
    .locals 2

    .line 128
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 129
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos1:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lgnu/lists/SubSequence;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 44
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 45
    iget-object v1, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected getIndexDifference(II)I
    .locals 1

    .line 74
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1, p2}, Lgnu/lists/AbstractSequence;->getIndexDifference(II)I

    move-result p1

    return p1
.end method

.method public getNextKind(I)I
    .locals 2

    .line 101
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos1:I

    invoke-virtual {v0, p1, v1}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 103
    :cond_0
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result p1

    return p1
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 2

    .line 94
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos1:I

    invoke-virtual {v0, p1, v1}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 95
    sget-object p1, Lgnu/lists/SubSequence;->eofValue:Ljava/lang/Object;

    return-object p1

    .line 96
    :cond_0
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 2

    .line 111
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v0, p1, v1}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    if-gtz v0, :cond_0

    .line 112
    sget-object p1, Lgnu/lists/SubSequence;->eofValue:Ljava/lang/Object;

    return-object p1

    .line 113
    :cond_0
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected isAfterPos(I)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->isAfterPos(I)Z

    move-result p1

    return p1
.end method

.method protected nextIndex(I)I
    .locals 1

    .line 84
    iget v0, p0, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {p0, p1, v0}, Lgnu/lists/SubSequence;->getIndexDifference(II)I

    move-result p1

    return p1
.end method

.method public releasePos(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    return-void
.end method

.method public removePosRange(II)V
    .locals 2

    .line 55
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    const/4 v1, -0x1

    if-nez p1, :cond_0

    iget p1, p0, Lgnu/lists/SubSequence;->ipos0:I

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    iget p1, p0, Lgnu/lists/SubSequence;->ipos1:I

    :cond_1
    :goto_0
    if-ne p2, v1, :cond_2

    iget p2, p0, Lgnu/lists/SubSequence;->ipos1:I

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    iget p2, p0, Lgnu/lists/SubSequence;->ipos0:I

    :cond_3
    :goto_1
    invoke-virtual {v0, p1, p2}, Lgnu/lists/AbstractSequence;->removePosRange(II)V

    return-void
.end method

.method public size()I
    .locals 3

    .line 50
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos1:I

    iget v2, p0, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v0, v1, v2}, Lgnu/lists/AbstractSequence;->getIndexDifference(II)I

    move-result v0

    return v0
.end method

.method public startPos()I
    .locals 1

    .line 106
    iget v0, p0, Lgnu/lists/SubSequence;->ipos0:I

    return v0
.end method

.method protected subSequencePos(II)Lgnu/lists/Sequence;
    .locals 2

    .line 118
    new-instance v0, Lgnu/lists/SubSequence;

    iget-object v1, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-direct {v0, v1, p1, p2}, Lgnu/lists/SubSequence;-><init>(Lgnu/lists/AbstractSequence;II)V

    return-object v0
.end method
