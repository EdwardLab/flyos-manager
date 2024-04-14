.class public Lorg/jose4j/jwk/JsonWebKey$Factory;
.super Ljava/lang/Object;
.source "JsonWebKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwk/JsonWebKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newJwk(Ljava/lang/String;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 274
    invoke-static {p0}, Lorg/jose4j/json/JsonUtil;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 275
    invoke-static {p0}, Lorg/jose4j/jwk/JsonWebKey$Factory;->newJwk(Ljava/util/Map;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object p0

    return-object p0
.end method

.method public static newJwk(Ljava/security/Key;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 254
    const-class v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Lorg/jose4j/jwk/RsaJsonWebKey;

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {v0, p0}, Lorg/jose4j/jwk/RsaJsonWebKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    return-object v0

    .line 258
    :cond_0
    const-class v0, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    new-instance v0, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v0, p0}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    return-object v0

    .line 262
    :cond_1
    const-class v0, Ljava/security/PublicKey;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    new-instance v0, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;

    invoke-direct {v0, p0}, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;-><init>(Ljava/security/Key;)V

    return-object v0

    .line 264
    :cond_2
    new-instance v0, Lorg/jose4j/lang/JoseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported or unknown public key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newJwk(Ljava/util/Map;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/jose4j/jwk/JsonWebKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const-string v0, "kty"

    .line 237
    invoke-static {p0, v0}, Lorg/jose4j/jwk/JsonWebKey;->getStringRequired(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "oct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "EC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 248
    new-instance p0, Lorg/jose4j/lang/JoseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key type algorithm: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :pswitch_0
    new-instance v0, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;

    invoke-direct {v0, p0}, Lorg/jose4j/jwk/OctetSequenceJsonWebKey;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 242
    :pswitch_1
    new-instance v0, Lorg/jose4j/jwk/RsaJsonWebKey;

    invoke-direct {v0, p0}, Lorg/jose4j/jwk/RsaJsonWebKey;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 244
    :pswitch_2
    new-instance v0, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    invoke-direct {v0, p0}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;-><init>(Ljava/util/Map;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x89e -> :sswitch_2
        0x13e20 -> :sswitch_1
        0x1ad20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
