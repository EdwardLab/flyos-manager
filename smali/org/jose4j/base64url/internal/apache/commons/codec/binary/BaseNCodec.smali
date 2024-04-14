.class public abstract Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field static final EOF:I = -0x1

.field protected static final MASK_8BITS:I = 0xff

.field public static final MIME_CHUNK_SIZE:I = 0x4c

.field protected static final PAD_DEFAULT:B = 0x3dt

.field public static final PEM_CHUNK_SIZE:I = 0x40


# instance fields
.field protected final PAD:B

.field private final chunkSeparatorLength:I

.field private final encodedBlockSize:I

.field protected final lineLength:I

.field private final unencodedBlockSize:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3d

    .line 165
    iput-byte v0, p0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->PAD:B

    .line 195
    iput p1, p0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    .line 196
    iput p2, p0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    const/4 p1, 0x0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 198
    div-int/2addr p3, p2

    mul-int p1, p3, p2

    :cond_1
    iput p1, p0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    .line 199
    iput p4, p0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    return-void
.end method

.method protected static isWhiteSpace(B)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private resizeBuffer(Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 4

    .line 236
    iget-object v0, p1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 238
    iput v1, p1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 239
    iput v1, p1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 242
    iget-object v2, p1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget-object v3, p1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iput-object v0, p1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 245
    :goto_0
    iget-object p1, p1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    return-object p1
.end method


# virtual methods
.method available(Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 1

    .line 219
    iget-object v0, p1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget p1, p1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected containsAlphabetOrPad([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 444
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p1, v2

    const/16 v4, 0x3d

    if-eq v4, v3, :cond_2

    .line 445
    invoke-virtual {p0, v3}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method abstract decode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 0

    .line 341
    invoke-static {p1}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object p1

    return-object p1
.end method

.method public decode([B)[B
    .locals 3

    if-eqz p1, :cond_1

    .line 352
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    new-instance v0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 356
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V

    const/4 v1, -0x1

    .line 357
    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 358
    iget p1, v0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    new-array v1, p1, [B

    .line 359
    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)I

    return-object v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method abstract encode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public encode([B)[B
    .locals 3

    if-eqz p1, :cond_1

    .line 371
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    new-instance v0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 375
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V

    const/4 v1, -0x1

    .line 376
    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 377
    iget p1, v0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v1, v0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr p1, v1

    new-array v1, p1, [B

    .line 378
    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)I

    return-object v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 0

    .line 329
    invoke-virtual {p0, p1}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/jose4j/lang/StringUtil;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 0

    .line 318
    invoke-virtual {p0, p1}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/jose4j/lang/StringUtil;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected ensureBufferSize(ILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 2

    .line 255
    iget-object v0, p2, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_1

    iget-object v0, p2, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v0, v0

    iget v1, p2, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object p1, p2, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    return-object p1

    .line 256
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->resizeBuffer(Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object p1

    return-object p1
.end method

.method protected getDefaultBufferSize()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method public getEncodedLength([B)J
    .locals 6

    .line 463
    array-length p1, p1

    iget v0, p0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    int-to-long v0, p1

    iget p1, p0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 464
    iget p1, p0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez p1, :cond_0

    int-to-long v2, p1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    int-to-long v4, p1

    .line 466
    div-long/2addr v2, v4

    iget p1, p0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v4, p1

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method hasData(Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)Z
    .locals 0

    .line 209
    iget-object p1, p1, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method public isInAlphabet(Ljava/lang/String;)Z
    .locals 1

    .line 428
    invoke-static {p1}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->isInAlphabet([BZ)Z

    move-result p1

    return p1
.end method

.method public isInAlphabet([BZ)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 409
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 410
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    aget-byte v2, p1, v1

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    invoke-static {v2}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method readResults([BIILorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 2

    .line 278
    iget-object v0, p4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0, p4}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec;->available(Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 280
    iget-object v0, p4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget v1, p4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    iget p1, p4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    add-int/2addr p1, p3

    iput p1, p4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 282
    iget p1, p4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    iget p2, p4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    .line 283
    iput-object p1, p4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    :cond_0
    return p3

    .line 287
    :cond_1
    iget-boolean p1, p4, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
