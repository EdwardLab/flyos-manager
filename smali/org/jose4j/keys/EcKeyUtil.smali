.class public Lorg/jose4j/keys/EcKeyUtil;
.super Lorg/jose4j/keys/KeyPairUtil;
.source "EcKeyUtil.java"


# static fields
.field public static final EC:Ljava/lang/String; = "EC"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0, v0}, Lorg/jose4j/keys/EcKeyUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .locals 0

    .line 40
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

    .line 29
    invoke-super {p0, p1}, Lorg/jose4j/keys/KeyPairUtil;->fromPemEncoded(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method public generateKeyPair(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lorg/jose4j/keys/EcKeyUtil;->getKeyPairGenerator()Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/jose4j/keys/EcKeyUtil;->secureRandom:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, p0, Lorg/jose4j/keys/EcKeyUtil;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 94
    :goto_0
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Lorg/jose4j/lang/JoseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create EC key pair with spec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "EC"

    return-object v0
.end method

.method public bridge synthetic isAvailable()Z
    .locals 1

    .line 29
    invoke-super {p0}, Lorg/jose4j/keys/KeyPairUtil;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public privateKey(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/interfaces/ECPrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v0, p1, p2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lorg/jose4j/keys/EcKeyUtil;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    .line 72
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 76
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

.method public publicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/interfaces/ECPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-direct {v0, p1, p2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 52
    new-instance p1, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {p1, v0, p3}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lorg/jose4j/keys/EcKeyUtil;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    .line 57
    check-cast p1, Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 61
    new-instance p2, Lorg/jose4j/lang/JoseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid key spec: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
