.class public Lorg/jose4j/jwk/EcJwkGenerator;
.super Ljava/lang/Object;
.source "EcJwkGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateJwk(Ljava/security/spec/ECParameterSpec;)Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    invoke-static {p0, v0, v0}, Lorg/jose4j/jwk/EcJwkGenerator;->generateJwk(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    move-result-object p0

    return-object p0
.end method

.method public static generateJwk(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/jose4j/keys/EcKeyUtil;

    invoke-direct {v0, p1, p2}, Lorg/jose4j/keys/EcKeyUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    .line 39
    invoke-virtual {v0, p0}, Lorg/jose4j/keys/EcKeyUtil;->generateKeyPair(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lorg/jose4j/jwk/PublicJsonWebKey$Factory;->newPublicJwk(Ljava/security/Key;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object p1

    check-cast p1, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    .line 42
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->setPrivateKey(Ljava/security/PrivateKey;)V

    return-object p1
.end method
