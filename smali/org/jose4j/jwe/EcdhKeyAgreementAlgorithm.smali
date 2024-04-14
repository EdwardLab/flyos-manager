.class public Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "EcdhKeyAgreementAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# instance fields
.field algorithmIdHeaderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    const-string v0, "enc"

    .line 58
    iput-object v0, p0, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->algorithmIdHeaderName:Ljava/lang/String;

    const-string v0, "ECDH-ES"

    .line 62
    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    const-string v0, "ECDH"

    .line 63
    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    const-string v0, "EC"

    .line 64
    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lorg/jose4j/keys/KeyPersuasion;->ASYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->algorithmIdHeaderName:Ljava/lang/String;

    return-void
.end method

.method private checkPointIsOnCurve(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 115
    invoke-interface {p2}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    .line 116
    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p2

    .line 117
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v1

    .line 121
    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v2

    .line 122
    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v3

    check-cast v3, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v3}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x2

    .line 123
    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v4, 0x3

    .line 124
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance p1, Lorg/jose4j/lang/JoseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "epk is invalid for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/jose4j/keys/EllipticCurves;->getName(Ljava/security/spec/EllipticCurve;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private generateEcdhSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/jose4j/jca/ProviderContext;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 169
    invoke-virtual {p3}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jose4j/jca/ProviderContext$Context;->getKeyAgreementProvider()Ljava/lang/String;

    move-result-object p3

    .line 170
    invoke-direct {p0, p3}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p3

    .line 174
    :try_start_0
    invoke-virtual {p3, p1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 p1, 0x1

    .line 175
    invoke-virtual {p3, p2, p1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    invoke-virtual {p3}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 179
    new-instance p2, Lorg/jose4j/lang/InvalidKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Key for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " key agreement - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 155
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v1

    .line 163
    new-instance v2, Lorg/jose4j/lang/JoseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " KeyAgreement with provider "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p1

    .line 159
    new-instance v1, Lorg/jose4j/lang/UncheckedJoseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " KeyAgreement available."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private kdf(Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)[B
    .locals 6

    .line 134
    invoke-virtual {p4}, Lorg/jose4j/jca/ProviderContext;->getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p4

    invoke-virtual {p4}, Lorg/jose4j/jca/ProviderContext$Context;->getMessageDigestProvider()Ljava/lang/String;

    move-result-object p4

    .line 135
    new-instance v0, Lorg/jose4j/jwe/kdf/KdfUtil;

    invoke-direct {v0, p4}, Lorg/jose4j/jwe/kdf/KdfUtil;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result p1

    invoke-static {p1}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v2

    .line 143
    iget-object p1, p0, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->algorithmIdHeaderName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "apu"

    .line 144
    invoke-virtual {p2, p1}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "apv"

    .line 145
    invoke-virtual {p2, p1}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p3

    .line 146
    invoke-virtual/range {v0 .. v5}, Lorg/jose4j/jwe/kdf/KdfUtil;->kdf([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .line 200
    new-instance v0, Lorg/jose4j/keys/EcKeyUtil;

    invoke-direct {v0}, Lorg/jose4j/keys/EcKeyUtil;-><init>()V

    .line 201
    invoke-virtual {v0}, Lorg/jose4j/keys/EcKeyUtil;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyAgreement"

    invoke-static {v1, v0}, Lorg/jose4j/jwa/AlgorithmAvailability;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 94
    invoke-virtual {p5}, Lorg/jose4j/jca/ProviderContext;->getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jose4j/jca/ProviderContext$Context;->getKeyFactoryProvider()Ljava/lang/String;

    move-result-object p2

    const-string v0, "epk"

    .line 95
    invoke-virtual {p4, v0, p2}, Lorg/jose4j/jwx/Headers;->getPublicJwkHeaderValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object p2

    .line 96
    invoke-virtual {p2}, Lorg/jose4j/jwk/JsonWebKey;->getKey()Ljava/security/Key;

    move-result-object p2

    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    .line 97
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .line 98
    invoke-direct {p0, p2, p1}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->checkPointIsOnCurve(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V

    .line 99
    invoke-direct {p0, p1, p2, p5}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->generateEcdhSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/jose4j/jca/ProviderContext;)[B

    move-result-object p1

    .line 100
    invoke-direct {p0, p3, p4, p1, p5}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->kdf(Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)[B

    move-result-object p1

    .line 101
    invoke-virtual {p3}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyAlgorithm()Ljava/lang/String;

    move-result-object p2

    .line 102
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p3
.end method

.method manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jwk/PublicJsonWebKey;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const-string v0, "epk"

    .line 86
    invoke-virtual {p3, v0, p4}, Lorg/jose4j/jwx/Headers;->setJwkHeaderValue(Ljava/lang/String;Lorg/jose4j/jwk/JsonWebKey;)V

    .line 87
    invoke-virtual {p4}, Lorg/jose4j/jwk/PublicJsonWebKey;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p4

    check-cast p1, Ljava/security/PublicKey;

    invoke-direct {p0, p4, p1, p5}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->generateEcdhSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/jose4j/jca/ProviderContext;)[B

    move-result-object p1

    .line 88
    invoke-direct {p0, p2, p3, p1, p5}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->kdf(Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)[B

    move-result-object p1

    .line 89
    new-instance p2, Lorg/jose4j/jwe/ContentEncryptionKeys;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lorg/jose4j/jwe/ContentEncryptionKeys;-><init>([B[B)V

    return-object p2
.end method

.method public manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lorg/jose4j/jwx/KeyValidationSupport;->cekNotAllowed([BLjava/lang/String;)V

    .line 77
    move-object p4, p1

    check-cast p4, Ljava/security/interfaces/ECPublicKey;

    .line 78
    invoke-virtual {p5}, Lorg/jose4j/jca/ProviderContext;->getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jose4j/jca/ProviderContext$Context;->getKeyPairGeneratorProvider()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p5}, Lorg/jose4j/jca/ProviderContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    .line 80
    invoke-interface {p4}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p4

    invoke-static {p4, v0, v1}, Lorg/jose4j/jwk/EcJwkGenerator;->generateJwk(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    .line 81
    invoke-virtual/range {v2 .. v7}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jwk/PublicJsonWebKey;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object p1

    return-object p1
.end method

.method public validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 194
    const-class p2, Ljava/security/interfaces/ECPrivateKey;

    invoke-static {p1, p2}, Lorg/jose4j/jwx/KeyValidationSupport;->castKey(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/Key;

    return-void
.end method

.method public validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 188
    const-class p2, Ljava/security/interfaces/ECPublicKey;

    invoke-static {p1, p2}, Lorg/jose4j/jwx/KeyValidationSupport;->castKey(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/Key;

    return-void
.end method
