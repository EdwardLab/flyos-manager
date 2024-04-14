.class public Lgnu/lists/BitVector;
.super Lgnu/lists/SimpleVector;
.source "BitVector.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field protected static empty:[Z


# instance fields
.field data:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Z

    .line 12
    sput-object v0, Lgnu/lists/BitVector;->empty:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 16
    sget-object v0, Lgnu/lists/BitVector;->empty:[Z

    iput-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 33
    new-array v0, p1, [Z

    iput-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    .line 34
    iput p1, p0, Lgnu/lists/BitVector;->size:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 21
    new-array v0, p1, [Z

    .line 22
    iput-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    .line 23
    iput p1, p0, Lgnu/lists/BitVector;->size:I

    if-eqz p2, :cond_0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    const/4 p2, 0x1

    .line 27
    aput-boolean p2, v0, p1

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

    new-array v0, v0, [Z

    iput-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    .line 46
    invoke-virtual {p0, p1}, Lgnu/lists/BitVector;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>([Z)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 39
    iput-object p1, p0, Lgnu/lists/BitVector;->data:[Z

    .line 40
    array-length p1, p1

    iput p1, p0, Lgnu/lists/BitVector;->size:I

    return-void
.end method


# virtual methods
.method public final booleanAt(I)Z
    .locals 1

    .line 71
    iget v0, p0, Lgnu/lists/BitVector;->size:I

    if-gt p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean p1, v0, p1

    return p1

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final booleanAtBuffer(I)Z
    .locals 1

    .line 78
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method protected clearBuffer(II)V
    .locals 3

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 115
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, p1

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2

    const/4 v0, 0x1

    ushr-int/2addr p1, v0

    .line 128
    iget v1, p0, Lgnu/lists/BitVector;->size:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 130
    :cond_0
    iget-object v1, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean p1, v1, p1

    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    return v0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 1

    .line 136
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x1

    :goto_0
    if-ge p1, p2, :cond_1

    .line 141
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v0, v0, p1

    invoke-interface {p3, v0}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 83
    iget v0, p0, Lgnu/lists/BitVector;->size:I

    if-gt p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean p1, v0, p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .line 67
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 1

    .line 90
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean p1, v0, p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBufferLength()I
    .locals 1

    .line 52
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .locals 1

    const/16 v0, 0x1b

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "b"

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 159
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 160
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 162
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iput-object v1, p0, Lgnu/lists/BitVector;->data:[Z

    .line 164
    iput v0, p0, Lgnu/lists/BitVector;->size:I

    return-void
.end method

.method public final setBooleanAt(IZ)V
    .locals 1

    .line 102
    iget v0, p0, Lgnu/lists/BitVector;->size:I

    if-gt p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aput-boolean p2, v0, p1

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final setBooleanAtBuffer(IZ)V
    .locals 1

    .line 109
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 95
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v1, v0, p1

    .line 96
    invoke-static {p2}, Lgnu/lists/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    aput-boolean p2, v0, p1

    .line 97
    invoke-static {v1}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setBufferLength(I)V
    .locals 3

    .line 57
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    array-length v1, v0

    if-eq v1, p1, :cond_1

    .line 60
    new-array v2, p1, [Z

    if-ge v1, p1, :cond_0

    move p1, v1

    :cond_0
    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v2, p0, Lgnu/lists/BitVector;->data:[Z

    :cond_1
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget v0, p0, Lgnu/lists/BitVector;->size:I

    .line 151
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 153
    iget-object v2, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v2, v2, v1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
