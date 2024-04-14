.class public Lgnu/lists/LList;
.super Lgnu/lists/ExtSequence;
.source "LList.java"

# interfaces
.implements Lgnu/lists/Sequence;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final Empty:Lgnu/lists/LList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lgnu/lists/LList;

    invoke-direct {v0}, Lgnu/lists/LList;-><init>()V

    sput-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lgnu/lists/ExtSequence;-><init>()V

    return-void
.end method

.method public static chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 2

    .line 361
    new-instance v0, Lgnu/lists/Pair;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v0, p1, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    iput-object v0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-object v0
.end method

.method public static chain4(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 3

    .line 370
    new-instance v0, Lgnu/lists/Pair;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v0, p4, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    new-instance p4, Lgnu/lists/Pair;

    new-instance v1, Lgnu/lists/Pair;

    new-instance v2, Lgnu/lists/Pair;

    invoke-direct {v2, p3, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, p2, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p4, p1, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p4, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-object v0
.end method

.method public static checkNonList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 460
    instance-of v0, p0, Lgnu/lists/LList;

    if-eqz v0, :cond_0

    const-string p0, "#<not a pair>"

    :cond_0
    return-object p0
.end method

.method public static consX([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    .line 406
    aget-object v0, p0, v0

    .line 407
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gtz v1, :cond_0

    return-object v0

    .line 410
    :cond_0
    new-instance v3, Lgnu/lists/Pair;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    :goto_0
    if-ge v2, v1, :cond_1

    .line 414
    new-instance v5, Lgnu/lists/Pair;

    aget-object v6, p0, v2

    invoke-direct {v5, v6, v4}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    iput-object v5, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object v0, v5

    goto :goto_0

    .line 418
    :cond_1
    aget-object p0, p0, v1

    iput-object p0, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-object v3
.end method

.method public static final length(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    .line 213
    :goto_0
    instance-of v1, p0, Lgnu/lists/Pair;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    check-cast p0, Lgnu/lists/Pair;

    iget-object p0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static list1(Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 2

    .line 338
    new-instance v0, Lgnu/lists/Pair;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v0, p0, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 3

    .line 343
    new-instance v0, Lgnu/lists/Pair;

    new-instance v1, Lgnu/lists/Pair;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v1, p1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 4

    .line 348
    new-instance v0, Lgnu/lists/Pair;

    new-instance v1, Lgnu/lists/Pair;

    new-instance v2, Lgnu/lists/Pair;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v2, p2, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, p1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 5

    .line 353
    new-instance v0, Lgnu/lists/Pair;

    new-instance v1, Lgnu/lists/Pair;

    new-instance v2, Lgnu/lists/Pair;

    new-instance v3, Lgnu/lists/Pair;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v3, p3, v4}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, p2, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, p1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static listLength(Ljava/lang/Object;Z)I
    .locals 6

    const/4 v0, 0x0

    move-object v0, p0

    const/4 v1, 0x0

    .line 45
    :goto_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v2, :cond_0

    return v1

    .line 47
    :cond_0
    instance-of v3, p0, Lgnu/lists/Pair;

    const/4 v4, -0x2

    if-nez v3, :cond_3

    .line 49
    instance-of v0, p0, Lgnu/lists/Sequence;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 51
    check-cast p0, Lgnu/lists/Sequence;

    invoke-interface {p0}, Lgnu/lists/Sequence;->size()I

    move-result p0

    if-ltz p0, :cond_1

    add-int/2addr p0, v1

    :cond_1
    return p0

    :cond_2
    return v4

    .line 56
    :cond_3
    move-object v3, p0

    check-cast v3, Lgnu/lists/Pair;

    .line 57
    iget-object v5, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    if-ne v5, v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_4
    if-ne p0, v0, :cond_5

    if-lez v1, :cond_5

    const/4 p0, -0x1

    return p0

    .line 61
    :cond_5
    iget-object p0, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    instance-of p0, p0, Lgnu/lists/Pair;

    if-nez p0, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 64
    iget-object p0, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_6
    instance-of p0, v0, Lgnu/lists/Pair;

    if-nez p0, :cond_7

    return v4

    .line 69
    :cond_7
    check-cast v0, Lgnu/lists/Pair;

    iget-object v0, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 70
    iget-object p0, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast p0, Lgnu/lists/Pair;

    iget-object p0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public static listTail(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 394
    instance-of v0, p0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 396
    check-cast p0, Lgnu/lists/Pair;

    .line 397
    iget-object p0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_0

    .line 395
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "List is too short."

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static makeList(Ljava/util/List;)Lgnu/lists/LList;
    .locals 5

    .line 221
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 222
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v1, 0x0

    .line 224
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    new-instance v2, Lgnu/lists/Pair;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v2, v3, v4}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_1

    .line 230
    :cond_0
    iput-object v2, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static makeList([Ljava/lang/Object;I)Lgnu/lists/LList;
    .locals 4

    .line 274
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 275
    array-length v1, p0

    sub-int/2addr v1, p1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 276
    new-instance v2, Lgnu/lists/Pair;

    add-int v3, p1, v1

    aget-object v3, p0, v3

    invoke-direct {v2, v3, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static makeList([Ljava/lang/Object;II)Lgnu/lists/LList;
    .locals 3

    .line 257
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 259
    new-instance v1, Lgnu/lists/Pair;

    add-int v2, p1, p2

    aget-object v2, p0, v2

    invoke-direct {v1, v2, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;
    .locals 2

    .line 379
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 380
    :goto_0
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p0, v1, :cond_0

    .line 382
    check-cast p0, Lgnu/lists/Pair;

    .line 383
    iget-object v1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 384
    iput-object v0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v0, p0

    move-object p0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 84
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 3

    const-string v0, "list"

    .line 300
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    move-object v0, p0

    .line 301
    :goto_0
    instance-of v1, v0, Lgnu/lists/Pair;

    const/16 v2, 0x20

    if-eqz v1, :cond_1

    if-eq v0, p0, :cond_0

    .line 304
    invoke-interface {p1, v2}, Lgnu/lists/Consumer;->write(I)V

    .line 305
    :cond_0
    check-cast v0, Lgnu/lists/Pair;

    .line 306
    iget-object v1, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 307
    iget-object v0, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_0

    .line 309
    :cond_1
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_2

    .line 311
    invoke-interface {p1, v2}, Lgnu/lists/Consumer;->write(I)V

    const-string v1, ". "

    .line 312
    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 313
    invoke-static {v0}, Lgnu/lists/LList;->checkNonList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 315
    :cond_2
    invoke-interface {p1}, Lgnu/lists/Consumer;->endElement()V

    return-void
.end method

.method public createPos(IZ)I
    .locals 1

    .line 107
    new-instance v0, Lgnu/lists/LListPosition;

    invoke-direct {v0, p0, p1, p2}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LList;IZ)V

    .line 108
    sget-object p1, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    invoke-virtual {p1, v0}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result p1

    return p1
.end method

.method public createRelativePos(IIZ)I
    .locals 3

    .line 113
    invoke-virtual {p0, p1}, Lgnu/lists/LList;->isAfterPos(I)Z

    move-result v0

    if-ltz p2, :cond_9

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_2

    if-ne p3, v0, :cond_1

    .line 119
    invoke-virtual {p0, p1}, Lgnu/lists/LList;->copyPos(I)I

    move-result p1

    return p1

    :cond_1
    if-eqz p3, :cond_2

    if-nez v0, :cond_2

    .line 121
    invoke-super {p0, p1, p2, p3}, Lgnu/lists/ExtSequence;->createRelativePos(IIZ)I

    move-result p1

    return p1

    :cond_2
    if-ltz p1, :cond_8

    .line 125
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v1

    check-cast v1, Lgnu/lists/LListPosition;

    .line 126
    iget-object v2, v1, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 127
    invoke-super {p0, p1, p2, p3}, Lgnu/lists/ExtSequence;->createRelativePos(IIZ)I

    move-result p1

    return p1

    .line 128
    :cond_3
    new-instance p1, Lgnu/lists/LListPosition;

    invoke-direct {p1, v1}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LListPosition;)V

    .line 129
    iget-object v1, p1, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 130
    iget v2, p1, Lgnu/lists/LListPosition;->ipos:I

    if-eqz p3, :cond_4

    if-nez v0, :cond_4

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x3

    :cond_4
    if-nez p3, :cond_5

    if-eqz v0, :cond_5

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v2, -0x3

    .line 143
    :cond_5
    :goto_0
    instance-of p3, v1, Lgnu/lists/Pair;

    if-eqz p3, :cond_7

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_6

    .line 151
    iput v2, p1, Lgnu/lists/LListPosition;->ipos:I

    .line 152
    iput-object v1, p1, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 153
    sget-object p2, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    invoke-virtual {p2, p1}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result p1

    return p1

    .line 147
    :cond_6
    check-cast v1, Lgnu/lists/Pair;

    add-int/lit8 v2, v2, 0x2

    .line 149
    iget-object v1, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_0

    .line 144
    :cond_7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 124
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 115
    :cond_9
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lgnu/lists/ExtSequence;->createRelativePos(IIZ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    .line 202
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getIterator(I)Lgnu/lists/SeqPosition;
    .locals 2

    .line 102
    new-instance v0, Lgnu/lists/LListPosition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LList;IZ)V

    return-object v0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 0

    .line 168
    sget-object p1, Lgnu/lists/LList;->eofValue:Ljava/lang/Object;

    return-object p1
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 0

    .line 173
    sget-object p1, Lgnu/lists/LList;->eofValue:Ljava/lang/Object;

    return-object p1
.end method

.method public hasNext(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextPos(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 333
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object v0
.end method

.method protected setPosNext(ILjava/lang/Object;)V
    .locals 1

    if-gtz p1, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 180
    instance-of p1, p0, Lgnu/lists/Pair;

    if-eqz p1, :cond_0

    .line 182
    move-object p1, p0

    check-cast p1, Lgnu/lists/Pair;

    iput-object p2, p1, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_0

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 185
    :cond_1
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object p1

    invoke-virtual {p1, p2}, Lgnu/lists/SeqPosition;->setNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected setPosPrevious(ILjava/lang/Object;)V
    .locals 0

    if-gtz p1, :cond_1

    if-eqz p1, :cond_0

    .line 192
    instance-of p1, p0, Lgnu/lists/Pair;

    if-eqz p1, :cond_0

    .line 194
    move-object p1, p0

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->lastPair()Lgnu/lists/Pair;

    move-result-object p1

    iput-object p2, p1, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 197
    :cond_1
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object p1

    invoke-virtual {p1, p2}, Lgnu/lists/SeqPosition;->setPrevious(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 426
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x28

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    move-object v2, p0

    .line 430
    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    const/16 v3, 0x20

    .line 433
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    const/16 v3, 0xa

    if-lt v1, v3, :cond_2

    const-string v1, "..."

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 439
    :cond_2
    instance-of v3, v2, Lgnu/lists/Pair;

    if-eqz v3, :cond_3

    .line 441
    check-cast v2, Lgnu/lists/Pair;

    .line 442
    iget-object v3, v2, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 443
    iget-object v2, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v1, ". "

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    invoke-static {v2}, Lgnu/lists/LList;->checkNonList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_1
    const/16 v1, 0x29

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
