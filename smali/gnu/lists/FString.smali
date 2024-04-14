.class public Lgnu/lists/FString;
.super Lgnu/lists/SimpleVector;
.source "FString.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Appendable;
.implements Lgnu/lists/CharSeq;
.implements Ljava/io/Externalizable;
.implements Lgnu/lists/Consumable;


# static fields
.field protected static empty:[C


# instance fields
.field public data:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    .line 23
    sput-object v0, Lgnu/lists/FString;->empty:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 27
    sget-object v0, Lgnu/lists/FString;->empty:[C

    iput-object v0, p0, Lgnu/lists/FString;->data:[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 32
    iput p1, p0, Lgnu/lists/FString;->size:I

    .line 33
    new-array p1, p1, [C

    iput-object p1, p0, Lgnu/lists/FString;->data:[C

    return-void
.end method

.method public constructor <init>(IC)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 38
    new-array v0, p1, [C

    .line 39
    iput-object v0, p0, Lgnu/lists/FString;->data:[C

    .line 40
    iput p1, p0, Lgnu/lists/FString;->size:I

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 42
    aput-char p2, v0, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/lists/CharSeq;)V
    .locals 2

    .line 87
    invoke-interface {p1}, Lgnu/lists/CharSeq;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lgnu/lists/FString;-><init>(Lgnu/lists/CharSeq;II)V

    return-void
.end method

.method public constructor <init>(Lgnu/lists/CharSeq;II)V
    .locals 3

    .line 91
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 92
    new-array v0, p3, [C

    add-int v1, p2, p3

    const/4 v2, 0x0

    .line 93
    invoke-interface {p1, p2, v1, v0, v2}, Lgnu/lists/CharSeq;->getChars(II[CI)V

    .line 94
    iput-object v0, p0, Lgnu/lists/FString;->data:[C

    .line 95
    iput p3, p0, Lgnu/lists/FString;->size:I

    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 81
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/lists/FString;->data:[C

    .line 82
    invoke-virtual {p0, p1}, Lgnu/lists/FString;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    .line 101
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 3

    .line 105
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 106
    new-array v0, p3, [C

    move v1, p3

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    add-int v2, p2, v1

    .line 108
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    goto :goto_0

    .line 109
    :cond_0
    iput-object v0, p0, Lgnu/lists/FString;->data:[C

    .line 110
    iput p3, p0, Lgnu/lists/FString;->size:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lgnu/lists/FString;->data:[C

    .line 56
    array-length p1, p1

    iput p1, p0, Lgnu/lists/FString;->size:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 2

    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lgnu/lists/FString;-><init>(Ljava/lang/StringBuffer;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;II)V
    .locals 2

    .line 65
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 66
    iput p3, p0, Lgnu/lists/FString;->size:I

    .line 67
    new-array v0, p3, [C

    iput-object v0, p0, Lgnu/lists/FString;->data:[C

    if-lez p3, :cond_0

    add-int/2addr p3, p2

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, p2, p3, v0, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    :cond_0
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 49
    array-length v0, p1

    iput v0, p0, Lgnu/lists/FString;->size:I

    .line 50
    iput-object p1, p0, Lgnu/lists/FString;->data:[C

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .line 73
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 74
    iput p3, p0, Lgnu/lists/FString;->size:I

    .line 75
    new-array v0, p3, [C

    iput-object v0, p0, Lgnu/lists/FString;->data:[C

    const/4 v1, 0x0

    .line 76
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public addAll(Lgnu/lists/FString;)Z
    .locals 6

    .line 238
    iget v0, p0, Lgnu/lists/FString;->size:I

    iget v1, p1, Lgnu/lists/FString;->size:I

    add-int/2addr v0, v1

    .line 239
    iget-object v1, p0, Lgnu/lists/FString;->data:[C

    array-length v1, v1

    if-ge v1, v0, :cond_0

    .line 240
    invoke-virtual {p0, v0}, Lgnu/lists/FString;->setBufferLength(I)V

    .line 241
    :cond_0
    iget-object v1, p1, Lgnu/lists/FString;->data:[C

    iget-object v2, p0, Lgnu/lists/FString;->data:[C

    iget v3, p0, Lgnu/lists/FString;->size:I

    iget v4, p1, Lgnu/lists/FString;->size:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iput v0, p0, Lgnu/lists/FString;->size:I

    .line 243
    iget p1, p1, Lgnu/lists/FString;->size:I

    if-lez p1, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5
.end method

.method public addAll(Ljava/lang/CharSequence;)Z
    .locals 7

    .line 249
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 250
    iget v1, p0, Lgnu/lists/FString;->size:I

    add-int/2addr v1, v0

    .line 251
    iget-object v2, p0, Lgnu/lists/FString;->data:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 252
    invoke-virtual {p0, v1}, Lgnu/lists/FString;->setBufferLength(I)V

    .line 253
    :cond_0
    instance-of v2, p1, Lgnu/lists/FString;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 254
    check-cast p1, Lgnu/lists/FString;

    iget-object p1, p1, Lgnu/lists/FString;->data:[C

    iget-object v2, p0, Lgnu/lists/FString;->data:[C

    iget v4, p0, Lgnu/lists/FString;->size:I

    invoke-static {p1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 255
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 256
    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lgnu/lists/FString;->data:[C

    iget v4, p0, Lgnu/lists/FString;->size:I

    invoke-virtual {p1, v3, v0, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    .line 257
    :cond_2
    instance-of v2, p1, Lgnu/lists/CharSeq;

    if-eqz v2, :cond_3

    .line 258
    check-cast p1, Lgnu/lists/CharSeq;

    iget-object v2, p0, Lgnu/lists/FString;->data:[C

    iget v4, p0, Lgnu/lists/FString;->size:I

    invoke-interface {p1, v3, v0, v2, v4}, Lgnu/lists/CharSeq;->getChars(II[CI)V

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 261
    iget-object v4, p0, Lgnu/lists/FString;->data:[C

    iget v5, p0, Lgnu/lists/FString;->size:I

    add-int/2addr v5, v2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    aput-char v6, v4, v5

    goto :goto_0

    .line 262
    :cond_4
    :goto_1
    iput v1, p0, Lgnu/lists/FString;->size:I

    if-lez v0, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3
.end method

.method public addAllStrings([Ljava/lang/Object;I)V
    .locals 3

    .line 296
    iget v0, p0, Lgnu/lists/FString;->size:I

    move v1, p2

    .line 297
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 299
    aget-object v2, p1, v1

    .line 301
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_0
    iget-object v1, p0, Lgnu/lists/FString;->data:[C

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 310
    invoke-virtual {p0, v0}, Lgnu/lists/FString;->setBufferLength(I)V

    .line 312
    :cond_1
    :goto_1
    array-length v0, p1

    if-ge p2, v0, :cond_2

    .line 314
    aget-object v0, p1, p2

    .line 316
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lgnu/lists/FString;->addAll(Ljava/lang/CharSequence;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public append(C)Lgnu/lists/FString;
    .locals 2

    .line 470
    iget v0, p0, Lgnu/lists/FString;->size:I

    .line 471
    iget-object v1, p0, Lgnu/lists/FString;->data:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 472
    invoke-virtual {p0, v1}, Lgnu/lists/FString;->ensureBufferLength(I)V

    .line 473
    :cond_0
    iget-object v1, p0, Lgnu/lists/FString;->data:[C

    .line 474
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 475
    iput v0, p0, Lgnu/lists/FString;->size:I

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/FString;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    const/4 v0, 0x0

    .line 484
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/FString;->append(Ljava/lang/CharSequence;II)Lgnu/lists/FString;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/FString;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    sub-int v0, p3, p2

    .line 492
    iget v1, p0, Lgnu/lists/FString;->size:I

    add-int/2addr v0, v1

    .line 493
    iget-object v2, p0, Lgnu/lists/FString;->data:[C

    array-length v2, v2

    if-le v0, v2, :cond_1

    .line 494
    invoke-virtual {p0, v0}, Lgnu/lists/FString;->ensureBufferLength(I)V

    .line 495
    :cond_1
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    .line 496
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 497
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    .line 498
    :cond_2
    instance-of v2, p1, Lgnu/lists/CharSeq;

    if-eqz v2, :cond_3

    .line 499
    check-cast p1, Lgnu/lists/CharSeq;

    invoke-interface {p1, p2, p3, v0, v1}, Lgnu/lists/CharSeq;->getChars(II[CI)V

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_0
    if-ge p2, p3, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 504
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v0, v2

    add-int/lit8 p2, p2, 0x1

    move v2, v3

    goto :goto_0

    .line 506
    :cond_4
    :goto_1
    iput v1, p0, Lgnu/lists/FString;->size:I

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lgnu/lists/FString;->append(C)Lgnu/lists/FString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lgnu/lists/FString;->append(Ljava/lang/CharSequence;)Lgnu/lists/FString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/FString;->append(Ljava/lang/CharSequence;II)Lgnu/lists/FString;

    move-result-object p1

    return-object p1
.end method

.method public final charAt(I)C
    .locals 1

    .line 167
    iget v0, p0, Lgnu/lists/FString;->size:I

    if-ge p1, v0, :cond_0

    .line 169
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    aget-char p1, v0, p1

    return p1

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public final charAtBuffer(I)C
    .locals 1

    .line 174
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    aget-char p1, v0, p1

    return p1
.end method

.method protected clearBuffer(II)V
    .locals 3

    .line 374
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    .line 376
    aput-char v2, v0, p1

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 7

    .line 420
    check-cast p1, Lgnu/lists/FString;

    .line 421
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    .line 422
    iget-object v1, p1, Lgnu/lists/FString;->data:[C

    .line 423
    iget v2, p0, Lgnu/lists/FString;->size:I

    .line 424
    iget p1, p1, Lgnu/lists/FString;->size:I

    if-le v2, p1, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 428
    aget-char v5, v0, v4

    .line 429
    aget-char v6, v1, v4

    sub-int/2addr v5, v6

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

    .line 444
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lgnu/lists/Consumer;->write([CII)V

    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2

    const/4 v0, 0x1

    ushr-int/2addr p1, v0

    .line 450
    iget v1, p0, Lgnu/lists/FString;->size:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 452
    :cond_0
    iget-object v1, p0, Lgnu/lists/FString;->data:[C

    aget-char p1, v1, p1

    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->write(I)V

    return v0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 1

    .line 458
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x1

    .line 462
    iget v0, p0, Lgnu/lists/FString;->size:I

    if-le p2, v0, :cond_1

    .line 463
    iget p2, p0, Lgnu/lists/FString;->size:I

    :cond_1
    if-le p2, p1, :cond_2

    .line 465
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    sub-int/2addr p2, p1

    invoke-interface {p3, v0, p1, p2}, Lgnu/lists/Consumer;->write([CII)V

    :cond_2
    return-void
.end method

.method public copy(II)Lgnu/lists/FString;
    .locals 5

    sub-int v0, p2, p1

    .line 228
    new-array v0, v0, [C

    .line 229
    iget-object v1, p0, Lgnu/lists/FString;->data:[C

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_0

    sub-int v3, v2, p1

    .line 231
    aget-char v4, v1, v2

    aput-char v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_0
    new-instance p1, Lgnu/lists/FString;

    invoke-direct {p1, v0}, Lgnu/lists/FString;-><init>([C)V

    return-object p1
.end method

.method public ensureBufferLength(I)V
    .locals 3

    .line 136
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    array-length v1, v0

    if-le p1, v1, :cond_1

    const/16 v1, 0x3c

    if-ge p1, v1, :cond_0

    const/16 v1, 0x78

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, p1, 0x2

    .line 138
    :goto_0
    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 139
    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iput-object v1, p0, Lgnu/lists/FString;->data:[C

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 403
    instance-of v1, p1, Lgnu/lists/FString;

    if-nez v1, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    check-cast p1, Lgnu/lists/FString;

    iget-object p1, p1, Lgnu/lists/FString;->data:[C

    .line 406
    iget v1, p0, Lgnu/lists/FString;->size:I

    if-eqz p1, :cond_4

    .line 407
    array-length v2, p1

    if-eq v2, v1, :cond_1

    goto :goto_0

    .line 409
    :cond_1
    iget-object v2, p0, Lgnu/lists/FString;->data:[C

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 412
    aget-char v3, v2, v1

    aget-char v4, p1, v1

    if-eq v3, v4, :cond_2

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public final fill(C)V
    .locals 2

    .line 358
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    .line 359
    iget v1, p0, Lgnu/lists/FString;->size:I

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 360
    aput-char p1, v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fill(IIC)V
    .locals 1

    if-ltz p1, :cond_1

    .line 365
    iget v0, p0, Lgnu/lists/FString;->size:I

    if-gt p2, v0, :cond_1

    .line 367
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    :goto_0
    if-ge p1, p2, :cond_0

    .line 369
    aput-char p3, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 366
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 160
    iget v0, p0, Lgnu/lists/FString;->size:I

    if-ge p1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    aget-char p1, v0, p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .line 144
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 1

    .line 148
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    aget-char p1, v0, p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBufferLength()I
    .locals 1

    .line 119
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    array-length v0, v0

    return v0
.end method

.method public getChars(IILjava/lang/StringBuffer;)V
    .locals 1

    if-ltz p1, :cond_2

    if-gt p1, p2, :cond_2

    .line 193
    iget v0, p0, Lgnu/lists/FString;->size:I

    if-gt p2, v0, :cond_1

    if-ge p1, p2, :cond_0

    .line 196
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    sub-int/2addr p2, p1

    invoke-virtual {p3, v0, p1, p2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_0
    return-void

    .line 194
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p1

    .line 192
    :cond_2
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public getChars(II[CI)V
    .locals 2

    if-ltz p1, :cond_3

    if-gt p1, p2, :cond_3

    .line 181
    iget v0, p0, Lgnu/lists/FString;->size:I

    if-gt p2, v0, :cond_2

    add-int v0, p4, p2

    sub-int/2addr v0, p1

    .line 183
    array-length v1, p3

    if-gt v0, v1, :cond_1

    if-ge p1, p2, :cond_0

    .line 186
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void

    .line 184
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, p4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p1

    .line 182
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p1

    .line 180
    :cond_3
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public getChars(Ljava/lang/StringBuffer;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    iget v1, p0, Lgnu/lists/FString;->size:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getElementKind()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 393
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    .line 394
    iget v1, p0, Lgnu/lists/FString;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    .line 397
    aget-char v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public length()I
    .locals 1

    .line 114
    iget v0, p0, Lgnu/lists/FString;->size:I

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

    .line 574
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 575
    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 577
    invoke-interface {p1}, Ljava/io/ObjectInput;->readChar()C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    :cond_0
    iput-object v1, p0, Lgnu/lists/FString;->data:[C

    .line 579
    iput v0, p0, Lgnu/lists/FString;->size:I

    return-void
.end method

.method public replace(ILjava/lang/String;)V
    .locals 3

    .line 386
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lgnu/lists/FString;->data:[C

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v1, p1}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public replace(I[CII)V
    .locals 1

    .line 381
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 153
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lgnu/lists/FString;->data:[C

    invoke-static {p2}, Lgnu/lists/Convert;->toChar(Ljava/lang/Object;)C

    move-result p2

    aput-char p2, v1, p1

    return-object v0
.end method

.method public setBufferLength(I)V
    .locals 3

    .line 124
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    array-length v1, v0

    if-eq v1, p1, :cond_1

    .line 127
    new-array v2, p1, [C

    if-ge v1, p1, :cond_0

    move p1, v1

    :cond_0
    const/4 v1, 0x0

    .line 128
    invoke-static {v0, v1, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iput-object v2, p0, Lgnu/lists/FString;->data:[C

    :cond_1
    return-void
.end method

.method public setCharAt(IC)V
    .locals 1

    if-ltz p1, :cond_0

    .line 345
    iget v0, p0, Lgnu/lists/FString;->size:I

    if-ge p1, v0, :cond_0

    .line 347
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    aput-char p2, v0, p1

    return-void

    .line 346
    :cond_0
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public setCharAtBuffer(IC)V
    .locals 1

    .line 352
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    aput-char p2, v0, p1

    return-void
.end method

.method public shift(III)V
    .locals 1

    .line 223
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    invoke-static {v0, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 339
    new-instance v0, Lgnu/lists/FString;

    iget-object v1, p0, Lgnu/lists/FString;->data:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Lgnu/lists/FString;-><init>([CII)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2

    .line 333
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/lists/FString;->data:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .line 209
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    array-length v0, v0

    .line 210
    iget v1, p0, Lgnu/lists/FString;->size:I

    if-ne v1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    return-object v0

    .line 215
    :cond_0
    new-array v0, v1, [C

    .line 216
    iget-object v2, p0, Lgnu/lists/FString;->data:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 328
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/lists/FString;->data:[C

    iget v2, p0, Lgnu/lists/FString;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    iget v0, p0, Lgnu/lists/FString;->size:I

    .line 565
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 566
    iget-object v1, p0, Lgnu/lists/FString;->data:[C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 568
    aget-char v3, v1, v2

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeChar(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeTo(IILjava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    instance-of v0, p3, Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 528
    :try_start_0
    check-cast p3, Ljava/io/Writer;

    iget-object v0, p0, Lgnu/lists/FString;->data:[C

    invoke-virtual {p3, v0, p1, p2}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 532
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    add-int/2addr p2, p1

    .line 537
    invoke-interface {p3, p0, p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method

.method public writeTo(Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget v0, p0, Lgnu/lists/FString;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lgnu/lists/FString;->writeTo(IILjava/lang/Appendable;)V

    return-void
.end method
