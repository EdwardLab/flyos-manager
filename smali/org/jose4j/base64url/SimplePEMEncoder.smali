.class public Lorg/jose4j/base64url/SimplePEMEncoder;
.super Ljava/lang/Object;
.source "SimplePEMEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1

    .line 34
    invoke-static {}, Lorg/jose4j/base64url/SimplePEMEncoder;->getCodec()Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {}, Lorg/jose4j/base64url/SimplePEMEncoder;->getCodec()Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getCodec()Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;
    .locals 2

    .line 39
    new-instance v0, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/jose4j/base64url/internal/apache/commons/codec/binary/Base64;-><init>(I)V

    return-object v0
.end method
