.class public Lgnu/lists/U64Vector;
.super Lgnu/lists/SimpleVector;
.source "U64Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# instance fields
.field data:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 19
    sget-object v0, Lgnu/lists/S64Vector;->empty:[J

    iput-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 33
    new-array v0, p1, [J

    iput-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    .line 34
    iput p1, p0, Lgnu/lists/U64Vector;->size:I

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 24
    new-array v0, p1, [J

    .line 25
    iput-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    .line 26
    iput p1, p0, Lgnu/lists/U64Vector;->size:I

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 28
    aput-wide p2, v0, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 45
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    .line 46
    invoke-virtual {p0, p1}, Lgnu/lists/U64Vector;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 39
    iput-object p1, p0, Lgnu/lists/U64Vector;->data:[J

    .line 40
    array-length p1, p1

    iput p1, p0, Lgnu/lists/U64Vector;->size:I

    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 4

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 120
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    add-int/lit8 v1, p1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, p1

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 10

    .line 153
    check-cast p1, Lgnu/lists/U64Vector;

    .line 154
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    .line 155
    iget-object v1, p1, Lgnu/lists/U64Vector;->data:[J

    .line 156
    iget v2, p0, Lgnu/lists/U64Vector;->size:I

    .line 157
    iget p1, p1, Lgnu/lists/U64Vector;->size:I

    if-le v2, p1, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 161
    aget-wide v5, v0, v4

    .line 162
    aget-wide v7, v1, v4

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    const-wide/high16 v0, -0x8000000000000000L

    xor-long v2, v5, v0

    xor-long/2addr v0, v7

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, -0x1

    :goto_2
    return p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    sub-int/2addr v2, p1

    return v2
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 4

    const/4 v0, 0x1

    ushr-int/2addr p1, v0

    .line 133
    iget v1, p0, Lgnu/lists/U64Vector;->size:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_0
    iget-object v1, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v2, v1, p1

    invoke-interface {p2, v2, v3}, Lgnu/lists/Consumer;->writeLong(J)V

    return v0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 3

    .line 141
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x1

    .line 145
    iget v0, p0, Lgnu/lists/U64Vector;->size:I

    if-le p2, v0, :cond_1

    .line 146
    iget p2, p0, Lgnu/lists/U64Vector;->size:I

    :cond_1
    :goto_0
    if-ge p1, p2, :cond_2

    .line 148
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v1, v0, p1

    invoke-interface {p3, v1, v2}, Lgnu/lists/Consumer;->writeLong(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    .line 88
    iget v0, p0, Lgnu/lists/U64Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObjectUnsigned(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .line 67
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 3

    .line 95
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObjectUnsigned(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBufferLength()I
    .locals 1

    .line 52
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "u64"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 3

    .line 71
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v1, v0, p1

    long-to-int p1, v1

    return p1
.end method

.method public final longAt(I)J
    .locals 3

    .line 76
    iget v0, p0, Lgnu/lists/U64Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final longAtBuffer(I)J
    .locals 3

    .line 83
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 185
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 187
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iput-object v1, p0, Lgnu/lists/U64Vector;->data:[J

    .line 189
    iput v0, p0, Lgnu/lists/U64Vector;->size:I

    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 100
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v1, v0, p1

    .line 101
    invoke-static {p2}, Lgnu/lists/Convert;->toLongUnsigned(Ljava/lang/Object;)J

    move-result-wide v3

    aput-wide v3, v0, p1

    .line 102
    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObjectUnsigned(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setBufferLength(I)V
    .locals 3

    .line 57
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    array-length v1, v0

    if-eq v1, p1, :cond_1

    .line 60
    new-array v2, p1, [J

    if-ge v1, p1, :cond_0

    move p1, v1

    :cond_0
    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v2, p0, Lgnu/lists/U64Vector;->data:[J

    :cond_1
    return-void
.end method

.method public final setLongAt(IJ)V
    .locals 1

    .line 107
    iget v0, p0, Lgnu/lists/U64Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aput-wide p2, v0, p1

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final setLongAtBuffer(IJ)V
    .locals 1

    .line 114
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget v0, p0, Lgnu/lists/U64Vector;->size:I

    .line 176
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 178
    iget-object v2, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v3, v2, v1

    invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
