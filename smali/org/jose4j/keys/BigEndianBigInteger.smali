.class public Lorg/jose4j/keys/BigEndianBigInteger;
.super Ljava/lang/Object;
.source "BigEndianBigInteger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBase64Url(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    .line 35
    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    .line 36
    invoke-virtual {v0, p0}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p0

    .line 37
    invoke-static {p0}, Lorg/jose4j/keys/BigEndianBigInteger;->fromBytes([B)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static fromBytes([B)Ljava/math/BigInteger;
    .locals 2

    .line 30
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static toBase64Url(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1

    .line 74
    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    .line 75
    invoke-static {p0}, Lorg/jose4j/keys/BigEndianBigInteger;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object p0

    .line 76
    invoke-virtual {v0, p0}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toBase64Url(Ljava/math/BigInteger;I)Ljava/lang/String;
    .locals 1

    .line 81
    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    .line 82
    invoke-static {p0, p1}, Lorg/jose4j/keys/BigEndianBigInteger;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object p0

    .line 83
    invoke-virtual {v0, p0}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/math/BigInteger;)[B
    .locals 2

    .line 51
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    rem-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    aget-byte p0, v0, p0

    if-nez p0, :cond_0

    array-length p0, v0

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    .line 62
    array-length p0, v0

    sub-int/2addr p0, v1

    invoke-static {v0, v1, p0}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object v0

    :cond_0
    return-object v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot convert negative values to an unsigned magnitude byte array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toByteArray(Ljava/math/BigInteger;I)[B
    .locals 3

    .line 41
    invoke-static {p0}, Lorg/jose4j/keys/BigEndianBigInteger;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object p0

    .line 42
    array-length v0, p0

    if-le p1, v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 44
    array-length v2, p0

    sub-int/2addr p1, v2

    new-array p1, p1, [B

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object p0

    :cond_0
    return-object p0
.end method
