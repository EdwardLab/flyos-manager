.class public Lgnu/lists/S16Vector;
.super Lgnu/lists/SimpleVector;
.source "S16Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[S


# instance fields
.field data:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [S

    .line 16
    sput-object v0, Lgnu/lists/S16Vector;->empty:[S

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 20
    sget-object v0, Lgnu/lists/S16Vector;->empty:[S

    iput-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 34
    new-array v0, p1, [S

    iput-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    .line 35
    iput p1, p0, Lgnu/lists/S16Vector;->size:I

    return-void
.end method

.method public constructor <init>(IS)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 25
    new-array v0, p1, [S

    .line 26
    iput-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    .line 27
    iput p1, p0, Lgnu/lists/S16Vector;->size:I

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 29
    aput-short p2, v0, p1

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

    new-array v0, v0, [S

    iput-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    .line 47
    invoke-virtual {p0, p1}, Lgnu/lists/S16Vector;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>([S)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 40
    iput-object p1, p0, Lgnu/lists/S16Vector;->data:[S

    .line 41
    array-length p1, p1

    iput p1, p0, Lgnu/lists/S16Vector;->size:I

    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 3

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 121
    iget-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    aput-short v2, v0, p1

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 154
    check-cast p1, Lgnu/lists/S16Vector;

    invoke-static {p0, p1}, Lgnu/lists/S16Vector;->compareToInt(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I

    move-result p1

    return p1
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2

    const/4 v0, 0x1

    ushr-int/2addr p1, v0

    .line 134
    iget v1, p0, Lgnu/lists/S16Vector;->size:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 136
    :cond_0
    iget-object v1, p0, Lgnu/lists/S16Vector;->data:[S

    aget-short p1, v1, p1

    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    return v0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 1

    .line 142
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x1

    .line 146
    iget v0, p0, Lgnu/lists/S16Vector;->size:I

    if-le p2, v0, :cond_1

    .line 147
    iget p2, p0, Lgnu/lists/S16Vector;->size:I

    :cond_1
    :goto_0
    if-ge p1, p2, :cond_2

    .line 149
    iget-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    aget-short v0, v0, p1

    invoke-interface {p3, v0}, Lgnu/lists/Consumer;->writeInt(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 89
    iget v0, p0, Lgnu/lists/S16Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    aget-short p1, v0, p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(S)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 1

    .line 96
    iget-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    aget-short p1, v0, p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(S)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBufferLength()I
    .locals 1

    .line 53
    iget-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "s16"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 1

    .line 84
    iget-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    aget-short p1, v0, p1

    return p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 172
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 173
    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 175
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_0
    iput-object v1, p0, Lgnu/lists/S16Vector;->data:[S

    .line 177
    iput v0, p0, Lgnu/lists/S16Vector;->size:I

    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 101
    iget-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    aget-short v1, v0, p1

    .line 102
    invoke-static {p2}, Lgnu/lists/Convert;->toShort(Ljava/lang/Object;)S

    move-result p2

    aput-short p2, v0, p1

    .line 103
    invoke-static {v1}, Lgnu/lists/Convert;->toObject(S)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setBufferLength(I)V
    .locals 3

    .line 58
    iget-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    array-length v1, v0

    if-eq v1, p1, :cond_1

    .line 61
    new-array v2, p1, [S

    if-ge v1, p1, :cond_0

    move p1, v1

    :cond_0
    const/4 v1, 0x0

    .line 62
    invoke-static {v0, v1, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v2, p0, Lgnu/lists/S16Vector;->data:[S

    :cond_1
    return-void
.end method

.method public final setShortAt(IS)V
    .locals 1

    .line 108
    iget v0, p0, Lgnu/lists/S16Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    aput-short p2, v0, p1

    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final setShortAtBuffer(IS)V
    .locals 1

    .line 115
    iget-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    aput-short p2, v0, p1

    return-void
.end method

.method public final shortAt(I)S
    .locals 1

    .line 72
    iget v0, p0, Lgnu/lists/S16Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    aget-short p1, v0, p1

    return p1

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final shortAtBuffer(I)S
    .locals 1

    .line 79
    iget-object v0, p0, Lgnu/lists/S16Vector;->data:[S

    aget-short p1, v0, p1

    return p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget v0, p0, Lgnu/lists/S16Vector;->size:I

    .line 164
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 166
    iget-object v2, p0, Lgnu/lists/S16Vector;->data:[S

    aget-short v2, v2, v1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
