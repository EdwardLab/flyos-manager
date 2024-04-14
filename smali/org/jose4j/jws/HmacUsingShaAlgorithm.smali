.class public Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "HmacUsingShaAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jws/JsonWebSignatureAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha512;,
        Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha384;,
        Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha256;
    }
.end annotation


# instance fields
.field private minimumKeyLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p2}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 43
    sget-object p1, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {p0, p1}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    const-string p1, "oct"

    .line 44
    invoke-virtual {p0, p1}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 45
    iput p3, p0, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->minimumKeyLength:I

    return-void
.end method

.method private getMacInstance(Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)Ljavax/crypto/Mac;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 69
    invoke-virtual {p2}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jose4j/jca/ProviderContext$Context;->getMacProvider()Ljava/lang/String;

    move-result-object p2

    .line 70
    invoke-virtual {p0}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/jose4j/mac/MacUtil;->getInitializedMac(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .line 105
    invoke-virtual {p0}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mac"

    invoke-static {v1, v0}, Lorg/jose4j/jwa/AlgorithmAvailability;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sign(Ljava/security/Key;[BLorg/jose4j/jca/ProviderContext;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p3}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getMacInstance(Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)Ljavax/crypto/Mac;

    move-result-object p1

    .line 64
    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method validateKey(Ljava/security/Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 80
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/jose4j/lang/ByteUtil;->bitLength([B)I

    move-result p1

    .line 83
    iget v0, p0, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->minimumKeyLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Lorg/jose4j/lang/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A key of the same size as the hash output (i.e. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->minimumKeyLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bits for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") or larger MUST be used with the HMAC SHA algorithms but this key is only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    new-instance p1, Lorg/jose4j/lang/InvalidKeyException;

    const-string v0, "key is null"

    invoke-direct {p1, v0}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateSigningKey(Ljava/security/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method public validateVerificationKey(Ljava/security/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method public verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 50
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, p2, p4}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getMacInstance(Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)Ljavax/crypto/Mac;

    move-result-object p2

    .line 56
    invoke-virtual {p2, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p2

    .line 58
    invoke-static {p1, p2}, Lorg/jose4j/lang/ByteUtil;->secureEquals([B[B)Z

    move-result p1

    return p1

    .line 52
    :cond_0
    new-instance p1, Lorg/jose4j/lang/InvalidKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be used for HMAC verification."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
