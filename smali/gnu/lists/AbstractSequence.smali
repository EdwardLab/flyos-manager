.class public abstract Lgnu/lists/AbstractSequence;
.super Ljava/lang/Object;
.source "AbstractSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I
    .locals 0

    if-ne p0, p2, :cond_0

    .line 697
    invoke-virtual {p0, p1, p3}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result p0

    return p0

    .line 698
    :cond_0
    invoke-virtual {p0, p2}, Lgnu/lists/AbstractSequence;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result p0

    return p0
.end method

.method public static unsupportedException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1

    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result p1

    .line 245
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    .line 246
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 237
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result p1

    .line 261
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 253
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractSequence;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected addPos(ILjava/lang/Object;)I
    .locals 0

    const-string p1, "addPos"

    .line 231
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 379
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lgnu/lists/AbstractSequence;->removePos(II)V

    return-void
.end method

.method public compare(II)I
    .locals 0

    .line 640
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result p1

    .line 641
    invoke-virtual {p0, p2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final compare(Lgnu/lists/SeqPosition;Lgnu/lists/SeqPosition;)I
    .locals 0

    .line 647
    iget p1, p1, Lgnu/lists/SeqPosition;->ipos:I

    iget p2, p2, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result p1

    return p1
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 3

    .line 808
    instance-of v0, p0, Lgnu/lists/Sequence;

    if-eqz v0, :cond_0

    const-string v1, "#sequence"

    .line 810
    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 811
    :cond_0
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v1

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lgnu/lists/AbstractSequence;->consumePosRange(IILgnu/lists/Consumer;)V

    if-eqz v0, :cond_1

    .line 813
    invoke-interface {p1}, Lgnu/lists/Consumer;->endElement()V

    :cond_1
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 1

    .line 784
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 787
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lgnu/lists/AbstractSequence;->consumePosRange(IILgnu/lists/Consumer;)V

    const/4 p1, 0x1

    return p1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 1

    .line 793
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 795
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result p1

    .line 796
    :goto_0
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->equals(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 798
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 801
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result p1

    goto :goto_0

    .line 799
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    .line 803
    :cond_2
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 178
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 179
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 182
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public copyPos(I)I
    .locals 0

    return p1
.end method

.method public abstract createPos(IZ)I
.end method

.method public createRelativePos(IIZ)I
    .locals 0

    .line 400
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, p3}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result p1

    return p1
.end method

.method public final elements()Ljava/util/Enumeration;
    .locals 1

    .line 191
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->getIterator()Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public endPos()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public equals(II)Z
    .locals 0

    .line 634
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 718
    instance-of v0, p0, Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 721
    :cond_0
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 722
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 733
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    .line 734
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eq p1, v4, :cond_2

    return v2

    :cond_2
    if-nez p1, :cond_3

    return v1

    .line 745
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 746
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_4

    if-eqz v4, :cond_1

    return v2

    .line 757
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_5
    :goto_0
    if-ne p0, p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public fill(IILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result p1

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0, p2, v0}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result p2

    .line 107
    :goto_0
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 108
    invoke-virtual {p0, p1, p3}, Lgnu/lists/AbstractSequence;->setPosNext(ILjava/lang/Object;)V

    .line 107
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result p1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 110
    invoke-virtual {p0, p2}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    return-void
.end method

.method public fill(Ljava/lang/Object;)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractSequence;->setPosPrevious(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 1

    .line 97
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result p1

    .line 98
    :goto_0
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 99
    invoke-virtual {p0, p1, p3}, Lgnu/lists/AbstractSequence;->setPosNext(ILjava/lang/Object;)V

    .line 98
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result p1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    return-void
.end method

.method public firstAttributePos(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public firstChildPos(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public firstChildPos(ILgnu/lists/ItemPredicate;)I
    .locals 2

    .line 539
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 542
    :cond_0
    invoke-interface {p2, p0, p1}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return p1

    .line 545
    :cond_1
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result p1

    return p1
.end method

.method protected fromEndIndex(I)I
    .locals 1

    .line 445
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public get([I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 50
    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttribute(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getContainingSequenceSize(I)I
    .locals 0

    .line 455
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result p1

    return p1
.end method

.method public getEffectiveIndex([I)I
    .locals 1

    const/4 v0, 0x0

    .line 45
    aget p1, p1, v0

    return p1
.end method

.method protected getIndexDifference(II)I
    .locals 0

    .line 432
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result p1

    invoke-virtual {p0, p2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public final getIterator()Lgnu/lists/SeqPosition;
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public getIterator(I)Lgnu/lists/SeqPosition;
    .locals 2

    .line 201
    new-instance v0, Lgnu/lists/SeqPosition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;IZ)V

    return-object v0
.end method

.method public getIteratorAtPos(I)Lgnu/lists/SeqPosition;
    .locals 1

    .line 206
    new-instance v0, Lgnu/lists/SeqPosition;

    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;I)V

    return-object v0
.end method

.method public getLowBound(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getNextKind(I)I
    .locals 0

    .line 465
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getNextTypeName(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNextTypeObject(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 1

    .line 594
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    sget-object p1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object p1

    .line 596
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 0

    .line 604
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result p1

    if-gtz p1, :cond_0

    .line 606
    sget-object p1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 607
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSize(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method protected gotoAttributesStart(Lgnu/lists/TreePosition;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final gotoChildrenStart(Lgnu/lists/TreePosition;)Z
    .locals 1

    .line 519
    invoke-virtual {p1}, Lgnu/lists/TreePosition;->getPos()I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 522
    :cond_0
    invoke-virtual {p1, p0, v0}, Lgnu/lists/TreePosition;->push(Lgnu/lists/AbstractSequence;I)V

    const/4 p1, 0x1

    return p1
.end method

.method protected gotoParent(Lgnu/lists/TreePosition;)Z
    .locals 1

    .line 567
    iget v0, p1, Lgnu/lists/TreePosition;->depth:I

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 569
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/TreePosition;->pop()V

    const/4 p1, 0x1

    return p1
.end method

.method public hasNext(I)Z
    .locals 1

    .line 460
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result p1

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected hasPrevious(I)Z
    .locals 0

    .line 481
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 705
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x1f

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 708
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .line 120
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    if-nez p1, :cond_0

    if-nez v2, :cond_1

    goto :goto_1

    .line 123
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    :goto_1
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

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

.method public isEmpty()Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->getIterator()Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 136
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_2

    .line 138
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_2
    return v1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object p1

    return-object p1
.end method

.method protected nextIndex(I)I
    .locals 1

    .line 440
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->getIndexDifference(II)I

    move-result p1

    return p1
.end method

.method public final nextIndex(Lgnu/lists/SeqPosition;)I
    .locals 0

    .line 628
    iget p1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result p1

    return p1
.end method

.method public nextMatching(ILgnu/lists/ItemPredicate;IZ)I
    .locals 0

    if-nez p4, :cond_2

    .line 160
    :cond_0
    invoke-virtual {p0, p1, p3}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result p4

    if-ltz p4, :cond_1

    const/4 p1, 0x0

    return p1

    .line 162
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result p1

    .line 163
    invoke-interface {p2, p0, p1}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result p4

    if-eqz p4, :cond_0

    return p1

    :cond_2
    const-string p1, "nextMatching with descend"

    .line 156
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public nextPos(I)I
    .locals 1

    .line 491
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 493
    invoke-virtual {p0, p1, v0, v0}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v0

    .line 494
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    return v0
.end method

.method public parentPos(I)I
    .locals 0

    .line 562
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result p1

    return p1
.end method

.method public previousPos(I)I
    .locals 2

    .line 505
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasPrevious(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    .line 507
    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v0

    .line 508
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    return v0
.end method

.method public rank()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected releasePos(I)V
    .locals 0

    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_0

    .line 325
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result p1

    .line 328
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 329
    invoke-virtual {p0, p1, v1}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 330
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    return-object v0

    .line 326
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 336
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 339
    :cond_0
    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result p1

    const/4 v0, 0x1

    .line 340
    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 341
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3

    .line 349
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    .line 352
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    .line 354
    invoke-virtual {p0, v0, v1}, Lgnu/lists/AbstractSequence;->removePos(II)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public removePos(II)V
    .locals 1

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, p1, p2, v0}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v0

    if-ltz p2, :cond_0

    .line 305
    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->removePosRange(II)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractSequence;->removePosRange(II)V

    .line 308
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    return-void
.end method

.method protected removePosRange(II)V
    .locals 0

    const-string p1, "removePosRange"

    .line 320
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3

    .line 364
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    .line 367
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    .line 369
    invoke-virtual {p0, v0, v1}, Lgnu/lists/AbstractSequence;->removePos(II)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p1, "set"

    .line 86
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public set([ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 55
    aget p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected setPosNext(ILjava/lang/Object;)V
    .locals 1

    .line 612
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result p1

    .line 613
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 615
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 614
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected setPosPrevious(ILjava/lang/Object;)V
    .locals 0

    .line 620
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 623
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 622
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public abstract size()I
.end method

.method public stableCompare(Lgnu/lists/AbstractSequence;)I
    .locals 1

    .line 685
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 686
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public startPos()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 775
    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->subSequencePos(II)Lgnu/lists/Sequence;

    move-result-object p1

    return-object p1
.end method

.method public subSequence(Lgnu/lists/SeqPosition;Lgnu/lists/SeqPosition;)Lgnu/lists/Sequence;
    .locals 0

    .line 764
    iget p1, p1, Lgnu/lists/SeqPosition;->ipos:I

    iget p2, p2, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->subSequencePos(II)Lgnu/lists/Sequence;

    move-result-object p1

    return-object p1
.end method

.method protected subSequencePos(II)Lgnu/lists/Sequence;
    .locals 1

    .line 769
    new-instance v0, Lgnu/lists/SubSequence;

    invoke-direct {v0, p0, p1, p2}, Lgnu/lists/SubSequence;-><init>(Lgnu/lists/AbstractSequence;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 652
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    .line 653
    new-array v0, v0, [Ljava/lang/Object;

    .line 654
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v1

    const/4 v2, 0x0

    .line 656
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 657
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .line 663
    array-length v0, p1

    .line 664
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 667
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 668
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    move v0, v1

    .line 672
    :cond_0
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v2

    const/4 v3, 0x0

    .line 673
    :goto_0
    invoke-virtual {p0, v2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 675
    invoke-virtual {p0, v2}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ge v1, v0, :cond_2

    const/4 v0, 0x0

    .line 678
    aput-object v0, p1, v1

    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 831
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 832
    instance-of v1, p0, Lgnu/lists/Sequence;

    if-eqz v1, :cond_0

    const/16 v2, 0x5b

    .line 833
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const-string v2, ", "

    .line 834
    invoke-virtual {p0, v2, v0}, Lgnu/lists/AbstractSequence;->toString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    if-eqz v1, :cond_1

    const/16 v1, 0x5d

    .line 836
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 837
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 3

    .line 819
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 825
    :goto_1
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not implement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgnu/lists/AbstractSequence;->unsupportedException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method
