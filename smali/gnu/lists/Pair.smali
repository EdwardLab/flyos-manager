.class public Lgnu/lists/Pair;
.super Lgnu/lists/LList;
.source "Pair.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field protected car:Ljava/lang/Object;

.field protected cdr:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lgnu/lists/LList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lgnu/lists/LList;-><init>()V

    .line 24
    iput-object p1, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-void
.end method

.method public static compareTo(Lgnu/lists/Pair;Lgnu/lists/Pair;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p1, :cond_2

    return v2

    .line 206
    :cond_2
    :goto_0
    iget-object v3, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 207
    iget-object v4, p1, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 208
    check-cast v3, Ljava/lang/Comparable;

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_3

    return v3

    .line 211
    :cond_3
    iget-object p0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 212
    iget-object p1, p1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-nez p0, :cond_5

    return v1

    :cond_5
    if-nez p1, :cond_6

    return v2

    .line 219
    :cond_6
    instance-of v3, p0, Lgnu/lists/Pair;

    if-eqz v3, :cond_8

    instance-of v3, p1, Lgnu/lists/Pair;

    if-nez v3, :cond_7

    goto :goto_1

    .line 221
    :cond_7
    check-cast p0, Lgnu/lists/Pair;

    .line 222
    check-cast p1, Lgnu/lists/Pair;

    goto :goto_0

    .line 220
    :cond_8
    :goto_1
    check-cast p0, Ljava/lang/Comparable;

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static equals(Lgnu/lists/Pair;Lgnu/lists/Pair;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_1

    goto :goto_2

    .line 177
    :cond_1
    :goto_0
    iget-object v2, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 178
    iget-object v3, p1, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    return v1

    .line 181
    :cond_3
    iget-object p0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 182
    iget-object p1, p1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_5

    goto :goto_2

    .line 187
    :cond_5
    instance-of v2, p0, Lgnu/lists/Pair;

    if-eqz v2, :cond_7

    instance-of v2, p1, Lgnu/lists/Pair;

    if-nez v2, :cond_6

    goto :goto_1

    .line 189
    :cond_6
    check-cast p0, Lgnu/lists/Pair;

    .line 190
    check-cast p1, Lgnu/lists/Pair;

    goto :goto_0

    .line 188
    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_8
    :goto_2
    return v1
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 1

    .line 265
    new-instance v0, Lgnu/lists/Pair;

    invoke-direct {v0, p0, p1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 228
    sget-object v0, Lgnu/lists/Pair;->Empty:Lgnu/lists/LList;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 231
    :cond_0
    check-cast p1, Lgnu/lists/Pair;

    invoke-static {p0, p1}, Lgnu/lists/Pair;->compareTo(Lgnu/lists/Pair;Lgnu/lists/Pair;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 257
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 258
    check-cast p1, Lgnu/lists/Pair;

    invoke-static {p0, p1}, Lgnu/lists/Pair;->equals(Lgnu/lists/Pair;Lgnu/lists/Pair;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    move-object v0, p0

    :goto_0
    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 242
    iget-object v1, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_0

    .line 243
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    goto :goto_0

    .line 244
    :cond_0
    instance-of v2, v1, Lgnu/lists/Sequence;

    if-eqz v2, :cond_1

    .line 245
    check-cast v1, Lgnu/lists/Sequence;

    invoke-interface {v1, p1}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    .line 250
    iget-object p1, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    return-object p1

    .line 252
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getCar()Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    return-object v0
.end method

.method public getCdr()Ljava/lang/Object;
    .locals 1

    .line 33
    iget-object v0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 0

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    .line 119
    iget-object p1, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Lgnu/lists/Pair;->eofValue:Ljava/lang/Object;

    :goto_0
    return-object p1

    .line 120
    :cond_1
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/lists/SeqPosition;->getNext()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 0

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    .line 126
    sget-object p1, Lgnu/lists/Pair;->eofValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgnu/lists/Pair;->lastPair()Lgnu/lists/Pair;

    move-result-object p1

    iget-object p1, p1, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    :goto_0
    return-object p1

    .line 127
    :cond_1
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/lists/SeqPosition;->getPrevious()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasNext(I)Z
    .locals 0

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 100
    :cond_1
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/lists/SeqPosition;->hasNext()Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    move-object v1, p0

    .line 157
    :goto_0
    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_1

    .line 159
    check-cast v1, Lgnu/lists/Pair;

    .line 160
    iget-object v2, v1, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 161
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 162
    iget-object v1, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_1
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final lastPair()Lgnu/lists/Pair;
    .locals 3

    move-object v0, p0

    .line 135
    :goto_0
    iget-object v1, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 136
    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_0

    .line 137
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public length()I
    .locals 7

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v1

    .line 66
    :goto_0
    sget-object v3, Lgnu/lists/Pair;->Empty:Lgnu/lists/LList;

    if-ne v1, v3, :cond_0

    return v0

    .line 68
    :cond_0
    instance-of v3, v1, Lgnu/lists/Pair;

    const/4 v4, -0x2

    if-nez v3, :cond_3

    .line 70
    instance-of v2, v1, Lgnu/lists/Sequence;

    if-eqz v2, :cond_2

    .line 72
    check-cast v1, Lgnu/lists/Sequence;

    invoke-interface {v1}, Lgnu/lists/Sequence;->size()I

    move-result v1

    if-ltz v1, :cond_1

    add-int/2addr v1, v0

    :cond_1
    return v1

    :cond_2
    return v4

    .line 77
    :cond_3
    move-object v3, v1

    check-cast v3, Lgnu/lists/Pair;

    .line 78
    iget-object v5, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v6, Lgnu/lists/Pair;->Empty:Lgnu/lists/LList;

    if-ne v5, v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_4
    if-ne v1, v2, :cond_5

    if-lez v0, :cond_5

    const/4 v0, -0x1

    return v0

    .line 82
    :cond_5
    iget-object v1, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    instance-of v3, v1, Lgnu/lists/Pair;

    if-nez v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_6
    instance-of v3, v2, Lgnu/lists/Pair;

    if-nez v3, :cond_7

    return v4

    .line 90
    :cond_7
    check-cast v2, Lgnu/lists/Pair;

    iget-object v2, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 91
    check-cast v1, Lgnu/lists/Pair;

    iget-object v1, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public nextPos(I)I
    .locals 2

    const/4 v0, 0x0

    if-gtz p1, :cond_1

    if-gez p1, :cond_0

    return v0

    .line 109
    :cond_0
    sget-object p1, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    new-instance v0, Lgnu/lists/LListPosition;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LList;IZ)V

    invoke-virtual {p1, v0}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result p1

    return p1

    .line 112
    :cond_1
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v1

    check-cast v1, Lgnu/lists/LListPosition;

    .line 113
    invoke-virtual {v1}, Lgnu/lists/LListPosition;->gotoNext()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 328
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 329
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    return-object p0
.end method

.method public setCar(Ljava/lang/Object;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    return-void
.end method

.method public setCdr(Ljava/lang/Object;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-void
.end method

.method public setCdrBackdoor(Ljava/lang/Object;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 2

    const/4 v0, 0x1

    .line 42
    invoke-static {p0, v0}, Lgnu/lists/Pair;->listLength(Ljava/lang/Object;Z)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const v0, 0x7fffffff

    return v0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not a true list"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .line 270
    invoke-virtual {p0}, Lgnu/lists/Pair;->size()I

    move-result v0

    .line 271
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v3, p0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 274
    instance-of v4, v3, Lgnu/lists/Pair;

    if-eqz v4, :cond_0

    .line 276
    check-cast v3, Lgnu/lists/Pair;

    .line 277
    iget-object v4, v3, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    aput-object v4, v1, v2

    .line 278
    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast v3, Lgnu/lists/Sequence;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    sub-int v5, v4, v2

    .line 283
    invoke-interface {v3, v5}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    .line 290
    array-length v0, p1

    .line 291
    invoke-virtual {p0}, Lgnu/lists/Pair;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 295
    new-array p1, v1, [Ljava/lang/Object;

    move v0, v1

    :cond_0
    const/4 v2, 0x0

    move-object v3, p0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 300
    instance-of v4, v3, Lgnu/lists/Pair;

    if-eqz v4, :cond_1

    .line 302
    check-cast v3, Lgnu/lists/Pair;

    .line 303
    iget-object v4, v3, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    aput-object v4, p1, v2

    .line 304
    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast v3, Lgnu/lists/Sequence;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_2

    sub-int v5, v4, v2

    .line 309
    invoke-interface {v3, v5}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ge v1, v0, :cond_3

    const/4 v0, 0x0

    .line 312
    aput-object v0, p1, v1

    :cond_3
    return-object p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
