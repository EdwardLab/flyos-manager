.class public Lorg/jose4j/jwk/OctetSequenceJsonWebKey;
.super Lorg/jose4j/jwk/JsonWebKey;
.source "OctetSequenceJsonWebKey.java"


# static fields
.field public static final KEY_TYPE:Ljava/lang/String; = "oct"

.field public static final KEY_VALUE_MEMBER_NAME:Ljava/lang/String; = "k"


# instance fields
.field private octetSequence:[B


# direct methods
.method public constructor <init>(Ljava/security/Key;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/jose4j/jwk/JsonWebKey;-><init>(Ljava/security/Key;)V

    .line 39
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->octetSequence:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lorg/jose4j/jwk/JsonWebKey;-><init>(Ljava/util/Map;)V

    .line 45
    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    const-string v1, "k"

    .line 46
    invoke-static {p1, v1}, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->getStringRequired(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->octetSequence:[B

    .line 53
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, p0, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->octetSequence:[B

    const-string v2, "AES"

    invoke-direct {p1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->key:Ljava/security/Key;

    .line 54
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->removeFromOtherParams([Ljava/lang/String;)V

    return-void
.end method

.method private getEncoded()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->octetSequence:[B

    invoke-static {v0}, Lorg/jose4j/base64url/Base64Url;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected fillTypeSpecificParams(Ljava/util/Map;Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;",
            ")V"
        }
    .end annotation

    .line 76
    sget-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_SYMMETRIC:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-virtual {v0, p2}, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 78
    invoke-direct {p0}, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->getEncoded()Ljava/lang/String;

    move-result-object p2

    const-string v0, "k"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "oct"

    return-object v0
.end method

.method public getOctetSequence()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->octetSequence:[B

    return-object v0
.end method

.method protected produceThumbprintHashInput()Ljava/lang/String;
    .locals 3

    .line 86
    invoke-direct {p0}, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;->getEncoded()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "{\"k\":\"%s\",\"kty\":\"oct\"}"

    .line 87
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
