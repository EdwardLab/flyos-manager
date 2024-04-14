.class public Lorg/jose4j/jwe/kdf/KdfUtil;
.super Ljava/lang/Object;
.source "KdfUtil.java"


# instance fields
.field private base64Url:Lorg/jose4j/base64url/Base64Url;

.field private kdf:Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwe/kdf/KdfUtil;->base64Url:Lorg/jose4j/base64url/Base64Url;

    .line 32
    new-instance v0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;

    const-string v1, "SHA-256"

    invoke-direct {v0, v1}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jose4j/jwe/kdf/KdfUtil;->kdf:Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwe/kdf/KdfUtil;->base64Url:Lorg/jose4j/base64url/Base64Url;

    .line 37
    new-instance v0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;

    const-string v1, "SHA-256"

    invoke-direct {v0, v1, p1}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jose4j/jwe/kdf/KdfUtil;->kdf:Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;

    return-void
.end method


# virtual methods
.method getDatalenDataFormat(Ljava/lang/String;)[B
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/jose4j/jwe/kdf/KdfUtil;->base64Url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/kdf/KdfUtil;->prependDatalen([B)[B

    move-result-object p1

    return-object p1
.end method

.method public kdf([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 8

    .line 42
    invoke-static {p3}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/jose4j/jwe/kdf/KdfUtil;->prependDatalen([B)[B

    move-result-object v3

    .line 43
    invoke-virtual {p0, p4}, Lorg/jose4j/jwe/kdf/KdfUtil;->getDatalenDataFormat(Ljava/lang/String;)[B

    move-result-object v4

    .line 44
    invoke-virtual {p0, p5}, Lorg/jose4j/jwe/kdf/KdfUtil;->getDatalenDataFormat(Ljava/lang/String;)[B

    move-result-object v5

    .line 45
    invoke-static {p2}, Lorg/jose4j/lang/ByteUtil;->getBytes(I)[B

    move-result-object v6

    .line 46
    sget-object v7, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    .line 48
    iget-object v0, p0, Lorg/jose4j/jwe/kdf/KdfUtil;->kdf:Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->kdf([BI[B[B[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method prependDatalen([B)[B
    .locals 3

    if-nez p1, :cond_0

    .line 55
    sget-object p1, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    .line 57
    :cond_0
    array-length v0, p1

    invoke-static {v0}, Lorg/jose4j/lang/ByteUtil;->getBytes(I)[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 58
    invoke-static {v1}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
