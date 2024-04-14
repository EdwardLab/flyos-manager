.class public Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "AesGcmContentEncryptionAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/ContentEncryptionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes128Gcm;,
        Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes192Gcm;,
        Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes256Gcm;
    }
.end annotation


# static fields
.field private static final IV_BYTE_LENGTH:I = 0xc

.field private static final TAG_BYTE_LENGTH:I = 0x10


# instance fields
.field private contentEncryptionKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

.field private simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    const-string p1, "AES/GCM/NoPadding"

    .line 41
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 42
    sget-object p1, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    const-string p1, "AES"

    .line 43
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    invoke-static {p2}, Lorg/jose4j/lang/ByteUtil;->byteLength(I)I

    move-result p2

    invoke-direct {v0, p2, p1}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->contentEncryptionKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    .line 45
    new-instance p1, Lorg/jose4j/jwe/SimpleAeadCipher;

    invoke-virtual {p0}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x10

    invoke-direct {p1, p2, v0}, Lorg/jose4j/jwe/SimpleAeadCipher;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    return-void
.end method


# virtual methods
.method public decrypt(Lorg/jose4j/jwe/ContentEncryptionParts;[B[BLorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getIv()[B

    move-result-object v2

    .line 75
    new-instance v1, Lorg/jose4j/keys/AesKey;

    invoke-direct {v1, p3}, Lorg/jose4j/keys/AesKey;-><init>([B)V

    .line 76
    invoke-virtual {p1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getCiphertext()[B

    move-result-object v3

    .line 77
    invoke-virtual {p1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getAuthenticationTag()[B

    move-result-object v4

    .line 78
    invoke-static {p4, p5}, Lorg/jose4j/jwe/ContentEncryptionHelp;->getCipherProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;

    move-result-object v6

    .line 79
    iget-object v0, p0, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/jose4j/jwe/SimpleAeadCipher;->decrypt(Ljava/security/Key;[B[B[B[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B[B[BLorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionParts;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 56
    invoke-virtual {p6}, Lorg/jose4j/jca/ProviderContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1, p5, v0}, Lorg/jose4j/jwe/InitializationVectorHelp;->iv(I[BLjava/security/SecureRandom;)[B

    move-result-object v6

    .line 57
    invoke-static {p4, p6}, Lorg/jose4j/jwe/ContentEncryptionHelp;->getCipherProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 58
    invoke-virtual/range {v2 .. v7}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->encrypt([B[B[B[BLjava/lang/String;)Lorg/jose4j/jwe/ContentEncryptionParts;

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B[B[B[BLjava/lang/String;)Lorg/jose4j/jwe/ContentEncryptionParts;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 66
    new-instance v1, Lorg/jose4j/keys/AesKey;

    invoke-direct {v1, p3}, Lorg/jose4j/keys/AesKey;-><init>([B)V

    .line 67
    iget-object v0, p0, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jose4j/jwe/SimpleAeadCipher;->encrypt(Ljava/security/Key;[B[B[BLjava/lang/String;)Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;

    move-result-object p1

    .line 68
    new-instance p2, Lorg/jose4j/jwe/ContentEncryptionParts;

    invoke-virtual {p1}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->getCiphertext()[B

    move-result-object p3

    invoke-virtual {p1}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->getTag()[B

    move-result-object p1

    invoke-direct {p2, p4, p3, p1}, Lorg/jose4j/jwe/ContentEncryptionParts;-><init>([B[B[B)V

    return-object p2
.end method

.method public getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->contentEncryptionKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 5

    .line 85
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result v0

    .line 86
    iget-object v1, p0, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    iget-object v2, p0, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v1, v2, v0, v4, v3}, Lorg/jose4j/jwe/SimpleAeadCipher;->isAvailable(Lorg/slf4j/Logger;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method
