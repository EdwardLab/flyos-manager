.class public Lorg/jose4j/base64url/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1

    .line 15
    invoke-static {}, Lorg/jose4j/base64url/Base64;->getCodec()Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    .line 10
    invoke-static {}, Lorg/jose4j/base64url/Base64;->getCodec()Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCodec()Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    .locals 1

    .line 20
    new-instance v0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;-><init>()V

    return-object v0
.end method
