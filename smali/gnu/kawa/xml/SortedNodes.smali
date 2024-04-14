.class public Lgnu/kawa/xml/SortedNodes;
.super Lgnu/kawa/xml/Nodes;
.source "SortedNodes.java"


# instance fields
.field nesting:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lgnu/kawa/xml/SortedNodes;->nesting:I

    return-void
.end method


# virtual methods
.method compareIndex(ILgnu/lists/AbstractSequence;I)I
    .locals 2

    .line 20
    iget-object v0, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    aget-char v0, v0, p1

    const v1, 0xf10f

    if-ne v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lgnu/kawa/xml/SortedNodes;->objects:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lgnu/kawa/xml/SortedNodes;->getIntN(I)I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Lgnu/lists/AbstractSequence;

    add-int/lit8 p1, p1, 0x3

    .line 24
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/SortedNodes;->getIntN(I)I

    move-result p1

    invoke-static {v0, p1, p2, p3}, Lgnu/lists/AbstractSequence;->compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I

    move-result p1

    return p1

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "invalid kind of value to compare"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method find(IILgnu/lists/AbstractSequence;I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x5

    add-int/2addr v2, p1

    .line 45
    invoke-virtual {p0, v2, p3, p4}, Lgnu/kawa/xml/SortedNodes;->compareIndex(ILgnu/lists/AbstractSequence;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez v2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x5

    add-int/2addr p1, v0

    return p1
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 6

    .line 58
    iget v0, p0, Lgnu/kawa/xml/SortedNodes;->count:I

    if-lez v0, :cond_4

    .line 60
    iget v0, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    add-int/lit8 v0, v0, -0x5

    .line 61
    invoke-virtual {p0, v0, p1, p2}, Lgnu/kawa/xml/SortedNodes;->compareIndex(ILgnu/lists/AbstractSequence;I)I

    move-result v1

    if-gez v1, :cond_1

    .line 65
    iget v0, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    .line 66
    iget-object v1, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    array-length v1, v1

    sub-int/2addr v1, v0

    .line 69
    div-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v0, v1, p1, p2}, Lgnu/kawa/xml/SortedNodes;->find(IILgnu/lists/AbstractSequence;I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget v1, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    sub-int v1, v0, v1

    if-lez v1, :cond_4

    .line 75
    iget-object v2, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    iget v3, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    iget-object v4, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    iget v5, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iput v0, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    .line 77
    iget v0, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 84
    div-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v1, v0, p1, p2}, Lgnu/kawa/xml/SortedNodes;->find(IILgnu/lists/AbstractSequence;I)I

    move-result v0

    if-gez v0, :cond_3

    return-void

    .line 87
    :cond_3
    iget v1, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_4

    .line 90
    iget-object v2, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    iget-object v3, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    iget v4, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    sub-int/2addr v4, v1

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iput v0, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    .line 92
    iget v0, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    .line 96
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    return-void
.end method
