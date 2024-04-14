.class public Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
.super Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
.source "RsaKeyManagementAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$Rsa1_5;,
        Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;,
        Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "RSA"

    .line 45
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 46
    sget-object p1, Lorg/jose4j/keys/KeyPersuasion;->ASYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/jose4j/jwe/CipherUtil;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 59
    const-class p2, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1, p2}, Lorg/jose4j/jwx/KeyValidationSupport;->castKey(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljava/security/PrivateKey;

    .line 60
    invoke-static {p1}, Lorg/jose4j/jwx/KeyValidationSupport;->checkRsaKeySize(Ljava/security/Key;)V

    return-void
.end method

.method public validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 52
    const-class p2, Ljava/security/PublicKey;

    invoke-static {p1, p2}, Lorg/jose4j/jwx/KeyValidationSupport;->castKey(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljava/security/PublicKey;

    .line 53
    invoke-static {p1}, Lorg/jose4j/jwx/KeyValidationSupport;->checkRsaKeySize(Ljava/security/Key;)V

    return-void
.end method
