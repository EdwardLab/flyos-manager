.class public Lorg/jose4j/jws/PlaintextNoneAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "PlaintextNoneAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jws/JsonWebSignatureAlgorithm;


# static fields
.field private static final CANNOT_HAVE_KEY_MESSAGE:Ljava/lang/String; = "JWS Plaintext (alg=none) must not use a key."


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    const-string v0, "none"

    .line 38
    invoke-virtual {p0, v0}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lorg/jose4j/keys/KeyPersuasion;->NONE:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {p0, v0}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    return-void
.end method

.method private validateKey(Ljava/security/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance p1, Lorg/jose4j/lang/InvalidKeyException;

    const-string v0, "JWS Plaintext (alg=none) must not use a key."

    invoke-direct {p1, v0}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public sign(Ljava/security/Key;[BLorg/jose4j/jca/ProviderContext;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 55
    sget-object p1, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    return-object p1
.end method

.method public validateSigningKey(Ljava/security/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method public validateVerificationKey(Ljava/security/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method public verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p2}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 47
    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
