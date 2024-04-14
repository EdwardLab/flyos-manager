.class public abstract Lgnu/lists/ByteVector;
.super Lgnu/lists/SimpleVector;
.source "ByteVector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[B


# instance fields
.field data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 11
    sput-object v0, Lgnu/lists/ByteVector;->empty:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    return-void
.end method


# virtual methods
.method public final byteAt(I)B
    .locals 1

    .line 35
    iget v0, p0, Lgnu/lists/ByteVector;->size:I

    if-gt p1, v0, :cond_0

    .line 37
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    aget-byte p1, v0, p1

    return p1

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final byteAtBuffer(I)B
    .locals 1

    .line 42
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected clearBuffer(II)V
    .locals 3

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 81
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, p1

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2

    const/4 v0, 0x1

    ushr-int/2addr p1, v0

    .line 48
    iget v1, p0, Lgnu/lists/ByteVector;->size:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/ByteVector;->intAtBuffer(I)I

    move-result p1

    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    return v0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 1

    .line 56
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x1

    .line 60
    iget v0, p0, Lgnu/lists/ByteVector;->size:I

    if-le p2, v0, :cond_1

    .line 61
    iget p2, p0, Lgnu/lists/ByteVector;->size:I

    :cond_1
    :goto_0
    if-ge p1, p2, :cond_2

    .line 63
    invoke-virtual {p0, p1}, Lgnu/lists/ByteVector;->intAtBuffer(I)I

    move-result v0

    invoke-interface {p3, v0}, Lgnu/lists/Consumer;->writeInt(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .line 16
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    array-length v0, v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 100
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 102
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iput-object v1, p0, Lgnu/lists/ByteVector;->data:[B

    .line 104
    iput v0, p0, Lgnu/lists/ByteVector;->size:I

    return-void
.end method

.method public setBufferLength(I)V
    .locals 3

    .line 21
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    array-length v1, v0

    if-eq v1, p1, :cond_1

    .line 24
    new-array v2, p1, [B

    if-ge v1, p1, :cond_0

    move p1, v1

    :cond_0
    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iput-object v2, p0, Lgnu/lists/ByteVector;->data:[B

    :cond_1
    return-void
.end method

.method public final setByteAt(IB)V
    .locals 1

    .line 68
    iget v0, p0, Lgnu/lists/ByteVector;->size:I

    if-gt p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    aput-byte p2, v0, p1

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final setByteAtBuffer(IB)V
    .locals 1

    .line 75
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget v0, p0, Lgnu/lists/ByteVector;->size:I

    .line 91
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 93
    iget-object v2, p0, Lgnu/lists/ByteVector;->data:[B

    aget-byte v2, v2, v1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
