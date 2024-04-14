.class public Lgnu/lists/TreePosition;
.super Lgnu/lists/SeqPosition;
.source "TreePosition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field depth:I

.field istack:[I

.field sstack:[Lgnu/lists/AbstractSequence;

.field start:I

.field private xpos:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lgnu/lists/SeqPosition;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lgnu/lists/TreePosition;->depth:I

    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;I)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;IZ)V

    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreePosition;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lgnu/lists/SeqPosition;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lgnu/lists/TreePosition;->set(Lgnu/lists/TreePosition;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lgnu/lists/SeqPosition;-><init>()V

    .line 46
    iput-object p1, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lgnu/lists/TreePosition;->depth:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 62
    new-instance v0, Lgnu/lists/TreePosition;

    invoke-direct {v0, p0}, Lgnu/lists/TreePosition;-><init>(Lgnu/lists/TreePosition;)V

    return-object v0
.end method

.method public dump()V
    .locals 5

    .line 253
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TreePosition dump depth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgnu/lists/TreePosition;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgnu/lists/TreePosition;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 254
    :goto_0
    iget v1, p0, Lgnu/lists/TreePosition;->depth:I

    if-gt v0, v1, :cond_2

    if-nez v0, :cond_0

    .line 256
    iget-object v1, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    sub-int/2addr v1, v0

    aget-object v1, v2, v1

    .line 257
    :goto_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 258
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ipos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    iget v3, p0, Lgnu/lists/TreePosition;->ipos:I

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lgnu/lists/TreePosition;->istack:[I

    iget v4, p0, Lgnu/lists/TreePosition;->depth:I

    sub-int/2addr v4, v0

    aget v3, v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAncestor(I)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    .line 218
    iget-object p1, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v0, p0, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {p1, v0}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 219
    :cond_0
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    sub-int/2addr v0, p1

    if-gtz v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lgnu/lists/TreePosition;->getRoot()Lgnu/lists/AbstractSequence;

    move-result-object p1

    return-object p1

    .line 222
    :cond_1
    iget p1, p0, Lgnu/lists/TreePosition;->start:I

    add-int/2addr v0, p1

    .line 223
    iget-object p1, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    aget-object p1, p1, v0

    iget-object v1, p0, Lgnu/lists/TreePosition;->istack:[I

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDepth()I
    .locals 1

    .line 96
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPosNext()Ljava/lang/Object;
    .locals 2

    .line 107
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRoot()Lgnu/lists/AbstractSequence;
    .locals 2

    .line 102
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->start:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public gotoAttributesStart()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/AbstractSequence;

    const/4 v0, 0x0

    return v0

    .line 200
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p0}, Lgnu/lists/AbstractSequence;->gotoAttributesStart(Lgnu/lists/TreePosition;)Z

    move-result v0

    return v0
.end method

.method public gotoChildrenStart()Z
    .locals 3

    .line 171
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    instance-of v2, v0, Lgnu/lists/AbstractSequence;

    if-nez v2, :cond_0

    return v1

    .line 175
    :cond_0
    iput v1, p0, Lgnu/lists/TreePosition;->depth:I

    .line 176
    check-cast v0, Lgnu/lists/AbstractSequence;

    iput-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 177
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreePosition;->setPos(I)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p0}, Lgnu/lists/AbstractSequence;->gotoChildrenStart(Lgnu/lists/TreePosition;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final gotoParent()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p0}, Lgnu/lists/AbstractSequence;->gotoParent(Lgnu/lists/TreePosition;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public pop()V
    .locals 2

    .line 141
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 142
    invoke-virtual {p0}, Lgnu/lists/TreePosition;->popNoRelease()V

    return-void
.end method

.method public popNoRelease()V
    .locals 3

    .line 147
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/lists/TreePosition;->depth:I

    if-gez v0, :cond_0

    .line 149
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iput-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    goto :goto_0

    .line 154
    :cond_0
    iget-object v1, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/TreePosition;->start:I

    add-int/2addr v2, v0

    aget-object v0, v1, v2

    iput-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 155
    iget-object v0, p0, Lgnu/lists/TreePosition;->istack:[I

    iget v1, p0, Lgnu/lists/TreePosition;->start:I

    iget v2, p0, Lgnu/lists/TreePosition;->depth:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    iput v0, p0, Lgnu/lists/TreePosition;->ipos:I

    :goto_0
    return-void
.end method

.method public push(Lgnu/lists/AbstractSequence;I)V
    .locals 6

    .line 112
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    iget v1, p0, Lgnu/lists/TreePosition;->start:I

    add-int/2addr v1, v0

    if-ltz v1, :cond_2

    if-nez v1, :cond_0

    const/16 v0, 0x8

    new-array v2, v0, [I

    .line 117
    iput-object v2, p0, Lgnu/lists/TreePosition;->istack:[I

    new-array v0, v0, [Lgnu/lists/AbstractSequence;

    .line 118
    iput-object v0, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    goto :goto_0

    .line 120
    :cond_0
    iget-object v2, p0, Lgnu/lists/TreePosition;->istack:[I

    array-length v3, v2

    if-lt v1, v3, :cond_1

    mul-int/lit8 v3, v1, 0x2

    .line 123
    new-array v4, v3, [I

    .line 124
    new-array v5, v3, [Ljava/lang/Object;

    .line 125
    new-array v3, v3, [Lgnu/lists/AbstractSequence;

    const/4 v5, 0x0

    .line 126
    invoke-static {v2, v5, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object v0, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/TreePosition;->depth:I

    invoke-static {v0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iput-object v4, p0, Lgnu/lists/TreePosition;->istack:[I

    .line 129
    iput-object v3, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    .line 131
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget-object v2, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    aput-object v2, v0, v1

    .line 132
    iget-object v0, p0, Lgnu/lists/TreePosition;->istack:[I

    iget v2, p0, Lgnu/lists/TreePosition;->ipos:I

    aput v2, v0, v1

    .line 134
    :cond_2
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/lists/TreePosition;->depth:I

    .line 135
    iput-object p1, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 136
    iput p2, p0, Lgnu/lists/TreePosition;->ipos:I

    return-void
.end method

.method public release()V
    .locals 2

    .line 228
    :goto_0
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 231
    invoke-virtual {p0}, Lgnu/lists/TreePosition;->pop()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    return-void
.end method

.method public set(Lgnu/lists/TreePosition;)V
    .locals 6

    .line 67
    invoke-virtual {p0}, Lgnu/lists/TreePosition;->release()V

    .line 68
    iget v0, p1, Lgnu/lists/TreePosition;->depth:I

    .line 69
    iput v0, p0, Lgnu/lists/TreePosition;->depth:I

    if-gez v0, :cond_0

    .line 72
    iget-object p1, p1, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    iput-object p1, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-gt v1, v0, :cond_2

    :cond_1
    add-int/lit8 v1, v0, 0xa

    .line 76
    new-array v1, v1, [Lgnu/lists/AbstractSequence;

    iput-object v1, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    .line 77
    :cond_2
    iget-object v1, p0, Lgnu/lists/TreePosition;->istack:[I

    if-eqz v1, :cond_3

    array-length v1, v1

    if-gt v1, v0, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0xa

    .line 78
    new-array v0, v0, [I

    iput-object v0, p0, Lgnu/lists/TreePosition;->istack:[I

    :cond_4
    const/4 v0, 0x0

    .line 81
    :goto_0
    iget v1, p0, Lgnu/lists/TreePosition;->depth:I

    if-ge v0, v1, :cond_5

    .line 83
    iget v2, p1, Lgnu/lists/TreePosition;->start:I

    add-int/2addr v2, v0

    .line 84
    iget-object v3, p1, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    aget-object v3, v3, v2

    .line 85
    iget-object v4, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    add-int/lit8 v5, v1, -0x1

    aput-object v3, v4, v5

    .line 86
    iget-object v4, p0, Lgnu/lists/TreePosition;->istack:[I

    sub-int/2addr v1, v0

    iget-object v5, p1, Lgnu/lists/TreePosition;->istack:[I

    aget v2, v5, v2

    invoke-virtual {v3, v2}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v2

    aput v2, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_5
    iget-object v0, p1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 89
    iput-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 90
    iget p1, p1, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result p1

    iput p1, p0, Lgnu/lists/TreePosition;->ipos:I

    return-void
.end method
