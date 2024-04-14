.class public Lgnu/lists/FVector;
.super Lgnu/lists/SimpleVector;
.source "FVector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/lists/Consumable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[Ljava/lang/Object;


# instance fields
.field public data:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    sput-object v0, Lgnu/lists/FVector;->empty:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 21
    sget-object v0, Lgnu/lists/FVector;->empty:[Ljava/lang/Object;

    iput-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 26
    iput p1, p0, Lgnu/lists/FVector;->size:I

    .line 27
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 32
    new-array v0, p1, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 36
    aput-object p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iput-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 39
    iput p1, p0, Lgnu/lists/FVector;->size:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 53
    invoke-virtual {p0, p1}, Lgnu/lists/FVector;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 45
    array-length v0, p1

    iput v0, p0, Lgnu/lists/FVector;->size:I

    .line 46
    iput-object p1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    return-void
.end method

.method public static varargs make([Ljava/lang/Object;)Lgnu/lists/FVector;
    .locals 1

    .line 66
    new-instance v0, Lgnu/lists/FVector;

    invoke-direct {v0, p0}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 3

    .line 115
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    .line 117
    aput-object v2, v0, p1

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 7

    .line 141
    check-cast p1, Lgnu/lists/FVector;

    .line 142
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 143
    iget-object v1, p1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 144
    iget v2, p0, Lgnu/lists/FVector;->size:I

    .line 145
    iget p1, p1, Lgnu/lists/FVector;->size:I

    if-le v2, p1, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 149
    aget-object v5, v0, v4

    check-cast v5, Ljava/lang/Comparable;

    .line 150
    aget-object v6, v1, v4

    check-cast v6, Ljava/lang/Comparable;

    .line 151
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v2, p1

    return v2
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 3

    const-string v0, "#vector"

    .line 199
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 200
    iget v0, p0, Lgnu/lists/FVector;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 202
    iget-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-interface {p1}, Lgnu/lists/Consumer;->endElement()V

    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2

    const/4 v0, 0x1

    ushr-int/2addr p1, v0

    .line 179
    iget v1, p0, Lgnu/lists/FVector;->size:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 181
    :cond_0
    iget-object v1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    return v0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 1

    .line 187
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x1

    .line 191
    iget v0, p0, Lgnu/lists/FVector;->size:I

    if-le p2, v0, :cond_1

    .line 192
    iget p2, p0, Lgnu/lists/FVector;->size:I

    :cond_1
    :goto_0
    if-ge p1, p2, :cond_2

    .line 194
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-interface {p3, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 122
    instance-of v1, p1, Lgnu/lists/FVector;

    if-nez v1, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    check-cast p1, Lgnu/lists/FVector;

    .line 125
    iget v1, p0, Lgnu/lists/FVector;->size:I

    .line 126
    iget-object v2, p1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget v2, p1, Lgnu/lists/FVector;->size:I

    if-eq v2, v1, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    iget-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 129
    iget-object p1, p1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 132
    aget-object v4, v2, v3

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 101
    iget v0, p0, Lgnu/lists/FVector;->size:I

    if-ge p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .line 87
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 1

    .line 96
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getBufferLength()I
    .locals 1

    .line 72
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

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

    .line 223
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 224
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 226
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_0
    iput v0, p0, Lgnu/lists/FVector;->size:I

    .line 228
    iput-object v1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    return-void
.end method

.method public final setAll(Ljava/lang/Object;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 172
    iget v1, p0, Lgnu/lists/FVector;->size:I

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 173
    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 108
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 109
    aput-object p2, v0, p1

    return-object v1
.end method

.method public setBufferLength(I)V
    .locals 3

    .line 77
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    array-length v1, v0

    if-eq v1, p1, :cond_1

    .line 80
    new-array v2, p1, [Ljava/lang/Object;

    if-ge v1, p1, :cond_0

    move p1, v1

    :cond_0
    const/4 v1, 0x0

    .line 81
    invoke-static {v0, v1, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public shift(III)V
    .locals 1

    .line 91
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    invoke-static {v0, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget v0, p0, Lgnu/lists/FVector;->size:I

    .line 215
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 217
    iget-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
