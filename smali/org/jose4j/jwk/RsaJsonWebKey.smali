.class public Lorg/jose4j/jwk/RsaJsonWebKey;
.super Lorg/jose4j/jwk/PublicJsonWebKey;
.source "RsaJsonWebKey.java"


# static fields
.field public static final EXPONENT_MEMBER_NAME:Ljava/lang/String; = "e"

.field public static final FACTOR_CRT_COEFFICIENT:Ljava/lang/String; = "t"

.field public static final FACTOR_CRT_EXPONENT_OTHER_MEMBER_NAME:Ljava/lang/String; = "d"

.field public static final FIRST_CRT_COEFFICIENT_MEMBER_NAME:Ljava/lang/String; = "qi"

.field public static final FIRST_FACTOR_CRT_EXPONENT_MEMBER_NAME:Ljava/lang/String; = "dp"

.field public static final FIRST_PRIME_FACTOR_MEMBER_NAME:Ljava/lang/String; = "p"

.field public static final KEY_TYPE:Ljava/lang/String; = "RSA"

.field public static final MODULUS_MEMBER_NAME:Ljava/lang/String; = "n"

.field public static final OTHER_PRIMES_INFO_MEMBER_NAME:Ljava/lang/String; = "oth"

.field public static final PRIME_FACTOR_OTHER_MEMBER_NAME:Ljava/lang/String; = "r"

.field public static final PRIVATE_EXPONENT_MEMBER_NAME:Ljava/lang/String; = "d"

.field public static final SECOND_FACTOR_CRT_EXPONENT_MEMBER_NAME:Ljava/lang/String; = "dq"

.field public static final SECOND_PRIME_FACTOR_MEMBER_NAME:Ljava/lang/String; = "q"


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/jose4j/jwk/PublicJsonWebKey;-><init>(Ljava/security/PublicKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/jose4j/jwk/PublicJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "n"

    const/4 v1, 0x1

    .line 66
    invoke-virtual {p0, p1, v0, v1}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v3

    const-string v0, "e"

    .line 68
    invoke-virtual {p0, p1, v0, v1}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v4

    .line 70
    new-instance v2, Lorg/jose4j/keys/RsaKeyUtil;

    const/4 v0, 0x0

    invoke-direct {v2, p2, v0}, Lorg/jose4j/keys/RsaKeyUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    .line 71
    invoke-virtual {v2, v3, v4}, Lorg/jose4j/keys/RsaKeyUtil;->publicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p2

    iput-object p2, p0, Lorg/jose4j/jwk/RsaJsonWebKey;->key:Ljava/security/Key;

    .line 72
    invoke-virtual {p0}, Lorg/jose4j/jwk/RsaJsonWebKey;->checkForBareKeyCertMismatch()V

    const-string p2, "d"

    .line 74
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, p2, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v5

    const-string p2, "p"

    .line 78
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0, p1, p2, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v6

    const-string p2, "q"

    .line 81
    invoke-virtual {p0, p1, p2, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v7

    const-string p2, "dp"

    .line 82
    invoke-virtual {p0, p1, p2, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v8

    const-string p2, "dq"

    .line 83
    invoke-virtual {p0, p1, p2, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v9

    const-string p2, "qi"

    .line 84
    invoke-virtual {p0, p1, p2, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v10

    .line 85
    invoke-virtual/range {v2 .. v10}, Lorg/jose4j/keys/RsaKeyUtil;->privateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwk/RsaJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v2, v3, v5}, Lorg/jose4j/keys/RsaKeyUtil;->privateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwk/RsaJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    :cond_1
    :goto_0
    const-string v0, "n"

    const-string v1, "e"

    const-string v2, "d"

    const-string v3, "p"

    const-string v4, "q"

    const-string v5, "dp"

    const-string v6, "dq"

    const-string v7, "qi"

    .line 93
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwk/RsaJsonWebKey;->removeFromOtherParams([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected fillPrivateTypeSpecificParams(Ljava/util/Map;)V
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

    .line 135
    invoke-virtual {p0}, Lorg/jose4j/jwk/RsaJsonWebKey;->getRsaPrivateKey()Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {p0, p1, v2, v1}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 141
    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v1, :cond_0

    .line 143
    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 144
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "p"

    invoke-virtual {p0, p1, v2, v1}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 145
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {p0, p1, v2, v1}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 146
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "dp"

    invoke-virtual {p0, p1, v2, v1}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 147
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "dq"

    invoke-virtual {p0, p1, v2, v1}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 148
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "qi"

    invoke-virtual {p0, p1, v1, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    :cond_0
    return-void
.end method

.method protected fillPublicTypeSpecificParams(Ljava/util/Map;)V
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

    .line 128
    invoke-virtual {p0}, Lorg/jose4j/jwk/RsaJsonWebKey;->getRsaPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "n"

    invoke-virtual {p0, p1, v2, v1}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 130
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "e"

    invoke-virtual {p0, p1, v1, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    return-void
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "RSA"

    return-object v0
.end method

.method public getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lorg/jose4j/jwk/RsaJsonWebKey;->getRsaPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getRsaPrivateKey()Ljava/security/interfaces/RSAPrivateKey;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/jose4j/jwk/RsaJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    return-object v0
.end method

.method public getRsaPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/jose4j/jwk/RsaJsonWebKey;->key:Ljava/security/Key;

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    return-object v0
.end method

.method protected produceThumbprintHashInput()Ljava/lang/String;
    .locals 4

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;->fillPublicTypeSpecificParams(Ljava/util/Map;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "e"

    .line 159
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "n"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "{\"e\":\"%s\",\"kty\":\"RSA\",\"n\":\"%s\"}"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
