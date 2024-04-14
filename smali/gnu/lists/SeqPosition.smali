.class public Lgnu/lists/SeqPosition;
.super Ljava/lang/Object;
.source "SeqPosition.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/util/Enumeration;


# instance fields
.field public ipos:I

.field public sequence:Lgnu/lists/AbstractSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;I)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 61
    iput p2, p0, Lgnu/lists/SeqPosition;->ipos:I

    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;IZ)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 55
    invoke-virtual {p1, p2, p3}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result p1

    iput p1, p0, Lgnu/lists/SeqPosition;->ipos:I

    return-void
.end method

.method public static make(Lgnu/lists/AbstractSequence;I)Lgnu/lists/SeqPosition;
    .locals 1

    .line 69
    new-instance v0, Lgnu/lists/SeqPosition;

    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;I)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lgnu/lists/SeqPosition;->setPos(I)V

    return-void
.end method

.method public copy()Lgnu/lists/SeqPosition;
    .locals 3

    .line 74
    new-instance v0, Lgnu/lists/SeqPosition;

    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;I)V

    return-object v0
.end method

.method public finalize()V
    .locals 0

    .line 333
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->release()V

    return-void
.end method

.method public final fromEndIndex()I
    .locals 2

    .line 226
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->fromEndIndex(I)I

    move-result v0

    return v0
.end method

.method public getContainingSequenceSize()I
    .locals 2

    .line 231
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getContainingSequenceSize(I)I

    move-result v0

    return v0
.end method

.method public getNext()Ljava/lang/Object;
    .locals 2

    .line 205
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNextKind()I
    .locals 2

    .line 117
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    return v0
.end method

.method public getNextTypeName()Ljava/lang/String;
    .locals 2

    .line 123
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextTypeObject()Ljava/lang/Object;
    .locals 2

    .line 129
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .line 288
    iget v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    return v0
.end method

.method public getPrevious()Ljava/lang/Object;
    .locals 2

    .line 215
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public gotoChildrenStart()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 97
    :cond_0
    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    const/4 v0, 0x1

    return v0
.end method

.method public final gotoEnd(Lgnu/lists/AbstractSequence;)V
    .locals 1

    .line 84
    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lgnu/lists/SeqPosition;->setPos(Lgnu/lists/AbstractSequence;I)V

    return-void
.end method

.method public gotoNext()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, -0x1

    .line 160
    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    const/4 v0, 0x0

    return v0
.end method

.method public gotoPrevious()Z
    .locals 2

    .line 170
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->previousPos(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 173
    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    return v0
.end method

.method public final gotoStart(Lgnu/lists/AbstractSequence;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lgnu/lists/SeqPosition;->setPos(Lgnu/lists/AbstractSequence;I)V

    return-void
.end method

.method public final hasMoreElements()Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->hasPrevious(I)Z

    move-result v0

    return v0
.end method

.method public isAfter()Z
    .locals 2

    .line 248
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->isAfterPos(I)Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 141
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getNext()Ljava/lang/Object;

    move-result-object v0

    .line 142
    sget-object v1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->gotoNext()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .line 221
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 186
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPrevious()Ljava/lang/Object;

    move-result-object v0

    .line 187
    sget-object v1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->gotoPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 188
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 2

    .line 237
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public release()V
    .locals 2

    .line 324
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 3

    .line 271
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->isAfter()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lgnu/lists/AbstractSequence;->removePos(II)V

    return-void
.end method

.method public set(Lgnu/lists/AbstractSequence;IZ)V
    .locals 2

    .line 308
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_0

    .line 309
    iget v1, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 310
    :cond_0
    iput-object p1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 311
    invoke-virtual {p1, p2, p3}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result p1

    iput p1, p0, Lgnu/lists/SeqPosition;->ipos:I

    return-void
.end method

.method public set(Lgnu/lists/SeqPosition;)V
    .locals 2

    .line 316
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_0

    .line 317
    iget v1, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 318
    :cond_0
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iput-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 319
    iget v1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v0

    iput v0, p1, Lgnu/lists/SeqPosition;->ipos:I

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->isAfter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0, p1}, Lgnu/lists/SeqPosition;->setPrevious(Ljava/lang/Object;)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/SeqPosition;->setNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setNext(Ljava/lang/Object;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lgnu/lists/AbstractSequence;->setPosNext(ILjava/lang/Object;)V

    return-void
.end method

.method public setPos(I)V
    .locals 2

    .line 301
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 303
    :cond_0
    iput p1, p0, Lgnu/lists/SeqPosition;->ipos:I

    return-void
.end method

.method public setPos(Lgnu/lists/AbstractSequence;I)V
    .locals 2

    .line 293
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 295
    :cond_0
    iput p2, p0, Lgnu/lists/SeqPosition;->ipos:I

    .line 296
    iput-object p1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    return-void
.end method

.method public setPrevious(Ljava/lang/Object;)V
    .locals 2

    .line 266
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lgnu/lists/AbstractSequence;->setPosPrevious(ILjava/lang/Object;)V

    return-void
.end method

.method public toInfo()Ljava/lang/String;
    .locals 2

    .line 346
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x7b

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v1, :cond_0

    const-string v1, "null sequence"

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 354
    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, " ipos: "

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    iget v1, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 338
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->toInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 340
    :cond_0
    iget v1, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->nextIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string v0, "(null)"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
