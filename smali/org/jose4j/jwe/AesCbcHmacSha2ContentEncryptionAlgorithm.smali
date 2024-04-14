.class public Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "AesCbcHmacSha2ContentEncryptionAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/ContentEncryptionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes256CbcHmacSha512;,
        Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes192CbcHmacSha384;,
        Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes128CbcHmacSha256;
    }
.end annotation


# static fields
.field public static final IV_BYTE_LENGTH:I = 0x10


# instance fields
.field private final contentEncryptionKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

.field private final hmacJavaAlgorithm:Ljava/lang/String;

.field private final tagTruncationLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 53
    new-instance p1, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    const-string v0, "AES"

    invoke-direct {p1, p2, v0}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->contentEncryptionKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    .line 54
    iput-object p3, p0, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->hmacJavaAlgorithm:Ljava/lang/String;

    .line 55
    iput p4, p0, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->tagTruncationLength:I

    const-string p1, "AES/CBC/PKCS5Padding"

    .line 59
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 61
    sget-object p1, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 62
    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->setKeyType(Ljava/lang/String;)V

    return-void
.end method

.method private getAdditionalAuthenticatedDataLengthBytes([B)[B
    .locals 2

    .line 180
    invoke-static {p1}, Lorg/jose4j/lang/ByteUtil;->bitLength([B)I

    move-result p1

    int-to-long v0, p1

    .line 181
    invoke-static {v0, v1}, Lorg/jose4j/lang/ByteUtil;->getBytes(J)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decrypt(Lorg/jose4j/jwe/ContentEncryptionParts;[B[BLorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 131
    invoke-static {p4, p5}, Lorg/jose4j/jwe/ContentEncryptionHelp;->getCipherProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {p4, p5}, Lorg/jose4j/jwe/ContentEncryptionHelp;->getMacProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;

    move-result-object p4

    .line 134
    invoke-virtual {p1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getIv()[B

    move-result-object p5

    .line 135
    invoke-virtual {p1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getCiphertext()[B

    move-result-object v1

    .line 136
    invoke-virtual {p1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getAuthenticationTag()[B

    move-result-object p1

    .line 137
    invoke-direct {p0, p2}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getAdditionalAuthenticatedDataLengthBytes([B)[B

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p5, v3, p2

    const/4 p2, 0x2

    aput-object v1, v3, p2

    const/4 v5, 0x3

    aput-object v2, v3, v5

    .line 138
    invoke-static {v3}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object v2

    .line 139
    new-instance v3, Lorg/jose4j/keys/HmacKey;

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->leftHalf([B)[B

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/jose4j/keys/HmacKey;-><init>([B)V

    .line 140
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getHmacJavaAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, p4}, Lorg/jose4j/mac/MacUtil;->getInitializedMac(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p4

    .line 141
    invoke-virtual {p4, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p4

    .line 142
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getTagTruncationLength()I

    move-result v2

    invoke-static {p4, v4, v2}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object p4

    .line 143
    invoke-static {p1, p4}, Lorg/jose4j/lang/ByteUtil;->secureEquals([B[B)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 151
    new-instance p1, Lorg/jose4j/keys/AesKey;

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->rightHalf([B)[B

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/jose4j/keys/AesKey;-><init>([B)V

    .line 152
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Lorg/jose4j/jwe/CipherUtil;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    .line 155
    :try_start_0
    new-instance p4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p4, p5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p3, p2, p1, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 168
    :try_start_1
    invoke-virtual {p3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 172
    :goto_0
    new-instance p2, Lorg/jose4j/lang/JoseException;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 163
    new-instance p2, Lorg/jose4j/lang/JoseException;

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 159
    new-instance p2, Lorg/jose4j/lang/JoseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid key for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 146
    :cond_0
    new-instance p2, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {p2}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    .line 147
    invoke-virtual {p2, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object p1

    .line 148
    new-instance p2, Lorg/jose4j/lang/IntegrityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Authentication tag check failed. Message="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jose4j/lang/IntegrityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public encrypt([B[B[BLorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionParts;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 83
    invoke-virtual {p6}, Lorg/jose4j/jca/ProviderContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1, p5, v0}, Lorg/jose4j/jwe/InitializationVectorHelp;->iv(I[BLjava/security/SecureRandom;)[B

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p6

    .line 84
    invoke-virtual/range {v2 .. v8}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->encrypt([B[B[B[BLorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionParts;

    move-result-object p1

    return-object p1
.end method

.method encrypt([B[B[B[BLorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionParts;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/jose4j/keys/HmacKey;

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->leftHalf([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jose4j/keys/HmacKey;-><init>([B)V

    .line 90
    new-instance v1, Lorg/jose4j/keys/AesKey;

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->rightHalf([B)[B

    move-result-object p3

    invoke-direct {v1, p3}, Lorg/jose4j/keys/AesKey;-><init>([B)V

    .line 91
    invoke-static {p5, p6}, Lorg/jose4j/jwe/ContentEncryptionHelp;->getCipherProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;

    move-result-object p3

    .line 92
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lorg/jose4j/jwe/CipherUtil;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    .line 96
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    invoke-virtual {p3, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 110
    :try_start_1
    invoke-virtual {p3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    invoke-static {p5, p6}, Lorg/jose4j/jwe/ContentEncryptionHelp;->getMacProvider(Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/lang/String;

    move-result-object p3

    .line 118
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getHmacJavaAlgorithm()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, v0, p3}, Lorg/jose4j/mac/MacUtil;->getInitializedMac(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p3

    .line 120
    invoke-direct {p0, p2}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getAdditionalAuthenticatedDataLengthBytes([B)[B

    move-result-object p5

    const/4 p6, 0x4

    new-array p6, p6, [[B

    const/4 v0, 0x0

    aput-object p2, p6, v0

    aput-object p4, p6, v3

    const/4 p2, 0x2

    aput-object p1, p6, p2

    const/4 p2, 0x3

    aput-object p5, p6, p2

    .line 122
    invoke-static {p6}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object p2

    .line 123
    invoke-virtual {p3, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p2

    .line 124
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getTagTruncationLength()I

    move-result p3

    invoke-static {p2, v0, p3}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object p2

    .line 126
    new-instance p3, Lorg/jose4j/jwe/ContentEncryptionParts;

    invoke-direct {p3, p4, p1, p2}, Lorg/jose4j/jwe/ContentEncryptionParts;-><init>([B[B[B)V

    return-object p3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 114
    :goto_0
    new-instance p2, Lorg/jose4j/lang/JoseException;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 104
    new-instance p2, Lorg/jose4j/lang/JoseException;

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 100
    new-instance p2, Lorg/jose4j/lang/JoseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid key for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->contentEncryptionKeyDescriptor:Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    return-object v0
.end method

.method public getHmacJavaAlgorithm()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->hmacJavaAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getTagTruncationLength()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->tagTruncationLength:I

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 187
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result v0

    .line 188
    div-int/lit8 v0, v0, 0x2

    .line 189
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/jose4j/jwe/CipherStrengthSupport;->isAvailable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
