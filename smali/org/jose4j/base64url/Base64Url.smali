.class public Lorg/jose4j/base64url/Base64Url;
.super Ljava/lang/Object;
.source "Base64Url.java"


# instance fields
.field private base64urlCodec:Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    iput-object v0, p0, Lorg/jose4j/base64url/Base64Url;->base64urlCodec:Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1

    .line 82
    invoke-static {}, Lorg/jose4j/base64url/Base64Url;->getOne()Lorg/jose4j/base64url/Base64Url;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 77
    invoke-static {}, Lorg/jose4j/base64url/Base64Url;->getOne()Lorg/jose4j/base64url/Base64Url;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeToUtf8String(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 72
    invoke-static {}, Lorg/jose4j/base64url/Base64Url;->getOne()Lorg/jose4j/base64url/Base64Url;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, p0, v1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 92
    invoke-static {}, Lorg/jose4j/base64url/Base64Url;->getOne()Lorg/jose4j/base64url/Base64Url;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    .line 97
    invoke-static {}, Lorg/jose4j/base64url/Base64Url;->getOne()Lorg/jose4j/base64url/Base64Url;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUtf8ByteRepresentation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 87
    invoke-static {}, Lorg/jose4j/base64url/Base64Url;->getOne()Lorg/jose4j/base64url/Base64Url;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncodeUtf8ByteRepresentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getOne()Lorg/jose4j/base64url/Base64Url;
    .locals 1

    .line 67
    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    return-object v0
.end method


# virtual methods
.method public base64UrlDecode(Ljava/lang/String;)[B
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/jose4j/base64url/Base64Url;->base64urlCodec:Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public base64UrlDecodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    .line 41
    invoke-static {p1, p2}, Lorg/jose4j/lang/StringUtil;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public base64UrlDecodeToUtf8String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 35
    invoke-virtual {p0, p1, v0}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public base64UrlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-static {p1, p2}, Lorg/jose4j/lang/StringUtil;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public base64UrlEncode([B)Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/jose4j/base64url/Base64Url;->base64urlCodec:Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public base64UrlEncodeUtf8ByteRepresentation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 51
    invoke-virtual {p0, p1, v0}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
