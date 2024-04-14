.class public Lgnu/lists/SubCharSeq;
.super Lgnu/lists/SubSequence;
.source "SubCharSeq.java"

# interfaces
.implements Lgnu/lists/CharSeq;


# direct methods
.method public constructor <init>(Lgnu/lists/AbstractSequence;II)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lgnu/lists/SubSequence;-><init>(Lgnu/lists/AbstractSequence;II)V

    return-void
.end method

.method private subCharSeq(II)Lgnu/lists/SubCharSeq;
    .locals 5

    .line 120
    invoke-virtual {p0}, Lgnu/lists/SubCharSeq;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    if-gt p2, v0, :cond_0

    .line 123
    new-instance v0, Lgnu/lists/SubCharSeq;

    iget-object v1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget-object v2, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v3, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result p1

    iget-object v2, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v3, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p2, v4}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result p2

    invoke-direct {v0, v1, p1, p2}, Lgnu/lists/SubCharSeq;-><init>(Lgnu/lists/AbstractSequence;II)V

    return-object v0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    if-ltz p1, :cond_0

    .line 20
    invoke-virtual {p0}, Lgnu/lists/SubCharSeq;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 22
    iget-object v0, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 23
    iget-object v1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/lists/CharSeq;

    add-int/2addr v0, p1

    invoke-interface {v1, v0}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result p1

    return p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public consume(IILgnu/lists/Consumer;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 103
    iget-object v1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    add-int/2addr v0, p1

    add-int p1, v0, p2

    if-gt p1, v1, :cond_0

    .line 106
    iget-object p1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast p1, Lgnu/lists/CharSeq;

    invoke-interface {p1, v0, p2, p3}, Lgnu/lists/CharSeq;->consume(IILgnu/lists/Consumer;)V

    return-void

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public fill(C)V
    .locals 3

    .line 45
    iget-object v0, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 46
    iget-object v1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    .line 47
    iget-object v2, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/lists/CharSeq;

    invoke-interface {v2, v0, v1, p1}, Lgnu/lists/CharSeq;->fill(IIC)V

    return-void
.end method

.method public fill(IIC)V
    .locals 3

    .line 52
    iget-object v0, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 53
    iget-object v1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    add-int/2addr p2, v0

    if-gt p2, v1, :cond_0

    .line 56
    iget-object v1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/lists/CharSeq;

    add-int/2addr v0, p1

    invoke-interface {v1, v0, p2, p3}, Lgnu/lists/CharSeq;->fill(IIC)V

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getChars(II[CI)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    add-int/lit8 v0, p4, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lgnu/lists/SubCharSeq;->charAt(I)C

    move-result v1

    aput-char v1, p3, p4

    add-int/lit8 p1, p1, 0x1

    move p4, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .line 15
    invoke-virtual {p0}, Lgnu/lists/SubCharSeq;->size()I

    move-result v0

    return v0
.end method

.method public setCharAt(IC)V
    .locals 2

    if-ltz p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lgnu/lists/SubCharSeq;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 38
    iget-object v0, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 39
    iget-object v1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/lists/CharSeq;

    add-int/2addr v0, p1

    invoke-interface {v1, v0, p2}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lgnu/lists/SubCharSeq;->subCharSeq(II)Lgnu/lists/SubCharSeq;

    move-result-object p1

    return-object p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Lgnu/lists/SubCharSeq;->subCharSeq(II)Lgnu/lists/SubCharSeq;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 111
    invoke-virtual {p0}, Lgnu/lists/SubCharSeq;->size()I

    move-result v0

    .line 112
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 114
    invoke-virtual {p0, v2}, Lgnu/lists/SubCharSeq;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(IILjava/lang/Appendable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 64
    iget-object v1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    add-int/2addr v0, p1

    add-int p1, v0, p2

    if-gt p1, v1, :cond_0

    .line 67
    iget-object p1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast p1, Lgnu/lists/CharSeq;

    invoke-interface {p1, v0, p2, p3}, Lgnu/lists/CharSeq;->writeTo(IILjava/lang/Appendable;)V

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public writeTo(Ljava/lang/Appendable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubCharSeq;->ipos0:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 74
    iget-object v1, p0, Lgnu/lists/SubCharSeq;->base:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/lists/CharSeq;

    invoke-virtual {p0}, Lgnu/lists/SubCharSeq;->size()I

    move-result v2

    invoke-interface {v1, v0, v2, p1}, Lgnu/lists/CharSeq;->writeTo(IILjava/lang/Appendable;)V

    return-void
.end method
