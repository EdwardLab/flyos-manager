.class public Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
.super Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
.source "AesKeyWrapManagementAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes256;,
        Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes192;,
        Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes128;
    }
.end annotation


# instance fields
.field keyByteLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "AESWrap"

    .line 35
    invoke-direct {p0, v0, p1}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "oct"

    .line 36
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 37
    sget-object p1, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 38
    iput p2, p0, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->keyByteLength:I

    return-void
.end method


# virtual methods
.method getKeyByteLength()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->keyByteLength:I

    return v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 66
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getKeyByteLength()I

    move-result v0

    .line 67
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cipher"

    .line 68
    invoke-static {v2, v1}, Lorg/jose4j/jwa/AlgorithmAvailability;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Lorg/jose4j/jwe/CipherStrengthSupport;->isAvailable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setUseGeneralProviderContext()Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->useSuppliedKeyProviderContext:Z

    return-object p0
.end method

.method public validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method public validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method validateKey(Ljava/security/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getKeyByteLength()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/jose4j/jwx/KeyValidationSupport;->validateAesWrappingKey(Ljava/security/Key;Ljava/lang/String;I)V

    return-void
.end method
