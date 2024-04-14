.class public Lorg/jose4j/keys/RsaKeyUtil;
.super Lorg/jose4j/keys/KeyPairUtil;
.source "RsaKeyUtil.java"


# static fields
.field public static final RSA:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0, v0}, Lorg/jose4j/keys/RsaKeyUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/jose4j/keys/KeyPairUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromPemEncoded(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 36
    invoke-super {p0, p1}, Lorg/jose4j/keys/KeyPairUtil;->fromPemEncoded(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method public generateKeyPair(I)Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lorg/jose4j/keys/RsaKeyUtil;->getKeyPairGenerator()Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lorg/jose4j/keys/RsaKeyUtil;->secureRandom:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/jose4j/keys/RsaKeyUtil;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 109
    :goto_0
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    return-object p1
.end method

.method getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "RSA"

    return-object v0
.end method

.method public getRsaPrivateKey(Ljava/security/spec/RSAPrivateKeySpec;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lorg/jose4j/keys/RsaKeyUtil;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    .line 90
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 94
    new-instance v0, Lorg/jose4j/lang/JoseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic isAvailable()Z
    .locals 1

    .line 36
    invoke-super {p0}, Lorg/jose4j/keys/KeyPairUtil;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public privateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v0, p1, p2}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 73
    invoke-virtual {p0, v0}, Lorg/jose4j/keys/RsaKeyUtil;->getRsaPrivateKey(Ljava/security/spec/RSAPrivateKeySpec;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public privateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 80
    new-instance v9, Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v0, p0

    .line 82
    invoke-virtual {p0, v9}, Lorg/jose4j/keys/RsaKeyUtil;->getRsaPrivateKey(Ljava/security/spec/RSAPrivateKeySpec;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v1

    return-object v1
.end method

.method public publicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v0, p1, p2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lorg/jose4j/keys/RsaKeyUtil;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    .line 62
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 66
    new-instance p2, Lorg/jose4j/lang/JoseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
