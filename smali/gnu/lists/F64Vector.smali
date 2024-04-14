.class public Lgnu/lists/F64Vector;
.super Lgnu/lists/SimpleVector;
.source "F64Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[D


# instance fields
.field data:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [D

    .line 16
    sput-object v0, Lgnu/lists/F64Vector;->empty:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 20
    sget-object v0, Lgnu/lists/F64Vector;->empty:[D

    iput-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 34
    new-array v0, p1, [D

    iput-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    .line 35
    iput p1, p0, Lgnu/lists/F64Vector;->size:I

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 25
    new-array v0, p1, [D

    .line 26
    iput-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    .line 27
    iput p1, p0, Lgnu/lists/F64Vector;->size:I

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 29
    aput-wide p2, v0, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 46
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    .line 47
    invoke-virtual {p0, p1}, Lgnu/lists/F64Vector;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 40
    iput-object p1, p0, Lgnu/lists/F64Vector;->data:[D

    .line 41
    array-length p1, p1

    iput p1, p0, Lgnu/lists/F64Vector;->size:I

    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 4

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 128
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

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

    .line 166
    check-cast p1, Lgnu/lists/F64Vector;

    .line 167
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    .line 168
    iget-object v1, p1, Lgnu/lists/F64Vector;->data:[D

    .line 169
    iget v2, p0, Lgnu/lists/F64Vector;->size:I

    .line 170
    iget p1, p1, Lgnu/lists/F64Vector;->size:I

    if-le v2, p1, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 174
    aget-wide v5, v0, v4

    .line 175
    aget-wide v7, v1, v4

    cmpl-double v9, v5, v7

    if-eqz v9, :cond_2

    if-lez v9, :cond_1

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

    .line 141
    iget v1, p0, Lgnu/lists/F64Vector;->size:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 143
    :cond_0
    iget-object v1, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v2, v1, p1

    invoke-interface {p2, v2, v3}, Lgnu/lists/Consumer;->writeDouble(D)V

    return v0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 3

    .line 149
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x1

    :goto_0
    if-ge p1, p2, :cond_1

    .line 154
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v0, p1

    invoke-interface {p3, v1, v2}, Lgnu/lists/Consumer;->writeDouble(D)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final doubleAt(I)D
    .locals 3

    .line 72
    iget v0, p0, Lgnu/lists/F64Vector;->size:I

    if-ge p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v0, p1

    return-wide v1

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final doubleAtBuffer(I)D
    .locals 3

    .line 79
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    .line 84
    iget v0, p0, Lgnu/lists/F64Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 3

    .line 91
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBufferLength()I
    .locals 1

    .line 53
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "f64"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 3

    .line 96
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v0, p1

    double-to-int p1, v1

    return p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 197
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 198
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 200
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    iput-object v1, p0, Lgnu/lists/F64Vector;->data:[D

    .line 202
    iput v0, p0, Lgnu/lists/F64Vector;->size:I

    return-void
.end method

.method public final setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 113
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lgnu/lists/F64Vector;->data:[D

    invoke-static {p2}, Lgnu/lists/Convert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    aput-wide v2, v1, p1

    return-object v0
.end method

.method public setBufferLength(I)V
    .locals 3

    .line 58
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    array-length v1, v0

    if-eq v1, p1, :cond_1

    .line 61
    new-array v2, p1, [D

    if-ge v1, p1, :cond_0

    move p1, v1

    :cond_0
    const/4 v1, 0x0

    .line 62
    invoke-static {v0, v1, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v2, p0, Lgnu/lists/F64Vector;->data:[D

    :cond_1
    return-void
.end method

.method public final setDoubleAt(ID)V
    .locals 1

    .line 101
    iget v0, p0, Lgnu/lists/F64Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aput-wide p2, v0, p1

    return-void

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final setDoubleAtBuffer(ID)V
    .locals 1

    .line 108
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

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

    .line 188
    iget v0, p0, Lgnu/lists/F64Vector;->size:I

    .line 189
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 191
    iget-object v2, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v3, v2, v1

    invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
