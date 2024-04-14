.class public Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "EcdhKeyAgreementWithAesKeyWrapAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes256KeyWrapAlgorithm;,
        Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes192KeyWrapAlgorithm;,
        Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes128KeyWrapAlgorithm;
    }
.end annotation


# instance fields
.field private ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

.field private keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

.field private keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    const-string p1, "N/A"

    .line 46
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    const-string p1, "EC"

    .line 47
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 48
    sget-object p1, Lorg/jose4j/keys/KeyPersuasion;->ASYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 49
    iput-object p2, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    .line 50
    new-instance p1, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    const-string v0, "alg"

    invoke-direct {p1, v0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    .line 51
    new-instance p1, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    invoke-virtual {p2}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getKeyByteLength()I

    move-result p2

    const-string v0, "AES"

    invoke-direct {p1, p2, v0}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    invoke-virtual {v0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    invoke-virtual {v0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->isAvailable()Z

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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    sget-object v2, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    iget-object v3, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;

    move-result-object v5

    .line 67
    iget-object v4, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;

    move-result-object p1

    return-object p1
.end method

.method public manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    iget-object v2, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    const/4 v4, 0x0

    move-object v1, v4

    check-cast v1, [B

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrapKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getContentEncryptionKey()[B

    move-result-object p1

    invoke-direct {v2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 60
    iget-object v1, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->keyWrap:Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object p1

    return-object p1
.end method

.method public validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    invoke-virtual {v0, p1, p2}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    return-void
.end method

.method public validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;->ecdh:Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    invoke-virtual {v0, p1, p2}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    return-void
.end method
