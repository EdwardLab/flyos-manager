.class public Lorg/jose4j/jwk/PublicJsonWebKey$Factory;
.super Ljava/lang/Object;
.source "PublicJsonWebKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwk/PublicJsonWebKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newPublicJwk(Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 290
    invoke-static {p0, v0}, Lorg/jose4j/jwk/PublicJsonWebKey$Factory;->newPublicJwk(Ljava/lang/String;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object p0

    return-object p0
.end method

.method public static newPublicJwk(Ljava/lang/String;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 295
    invoke-static {p0}, Lorg/jose4j/json/JsonUtil;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 296
    invoke-static {p0, p1}, Lorg/jose4j/jwk/PublicJsonWebKey$Factory;->newPublicJwk(Ljava/util/Map;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object p0

    return-object p0
.end method

.method public static newPublicJwk(Ljava/security/Key;)Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 284
    invoke-static {p0}, Lorg/jose4j/jwk/JsonWebKey$Factory;->newJwk(Ljava/security/Key;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object p0

    .line 285
    check-cast p0, Lorg/jose4j/jwk/PublicJsonWebKey;

    return-object p0
.end method

.method public static newPublicJwk(Ljava/util/Map;)Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/jose4j/jwk/PublicJsonWebKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 279
    invoke-static {p0, v0}, Lorg/jose4j/jwk/PublicJsonWebKey$Factory;->newPublicJwk(Ljava/util/Map;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object p0

    return-object p0
.end method

.method public static newPublicJwk(Ljava/util/Map;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jose4j/jwk/PublicJsonWebKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const-string v0, "kty"

    .line 264
    invoke-static {p0, v0}, Lorg/jose4j/jwk/JsonWebKey;->getStringRequired(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "EC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    new-instance v0, Lorg/jose4j/jwk/RsaJsonWebKey;

    invoke-direct {v0, p0, p1}, Lorg/jose4j/jwk/RsaJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v0

    .line 273
    :cond_0
    new-instance p0, Lorg/jose4j/lang/JoseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key type (for public keys): \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_1
    new-instance v0, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    invoke-direct {v0, p0, p1}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method
