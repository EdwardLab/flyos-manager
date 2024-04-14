.class public Lorg/jose4j/jwe/JsonWebEncryption;
.super Lorg/jose4j/jwx/JsonWebStructure;
.source "JsonWebEncryption.java"


# static fields
.field public static final COMPACT_SERIALIZATION_PARTS:S = 0x5s


# instance fields
.field private base64url:Lorg/jose4j/base64url/Base64Url;

.field ciphertext:[B

.field private contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field contentEncryptionKey:[B

.field encryptedKey:[B

.field iv:[B

.field private plaintext:[B

.field private plaintextCharEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/jose4j/jwx/JsonWebStructure;-><init>()V

    .line 42
    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    const-string v0, "UTF-8"

    .line 44
    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    .line 53
    sget-object v0, Lorg/jose4j/jwa/AlgorithmConstraints;->NO_CONSTRAINTS:Lorg/jose4j/jwa/AlgorithmConstraints;

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-void
.end method

.method private decrypt()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    move-result-object v6

    .line 198
    invoke-interface {v6}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-result-object v3

    .line 200
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->isDoKeyValidation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->checkCrit()V

    .line 207
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncryptedKey()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->manageForDecrypt(Ljava/security/Key;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;

    move-result-object v0

    .line 209
    new-instance v2, Lorg/jose4j/jwe/ContentEncryptionParts;

    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->iv:[B

    iget-object v3, p0, Lorg/jose4j/jwe/JsonWebEncryption;->ciphertext:[B

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getIntegrity()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/jose4j/jwe/ContentEncryptionParts;-><init>([B[B[B)V

    .line 210
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeaderAsciiBytesForAdditionalAuthenticatedData()[B

    move-result-object v3

    .line 211
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v0

    move-object v1, v6

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->decrypt(Lorg/jose4j/jwe/ContentEncryptionParts;[B[BLorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)[B

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->decompress(Lorg/jose4j/jwx/Headers;[B)[B

    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->setPlaintext([B)V

    return-void
.end method


# virtual methods
.method compress(Lorg/jose4j/jwx/Headers;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    const-string v0, "zip"

    .line 244
    invoke-virtual {p1, v0}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getCompressionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p1}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object p1

    check-cast p1, Lorg/jose4j/zip/CompressionAlgorithm;

    .line 250
    invoke-interface {p1, p2}, Lorg/jose4j/zip/CompressionAlgorithm;->compress([B)[B

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method decompress(Lorg/jose4j/jwx/Headers;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const-string v0, "zip"

    .line 231
    invoke-virtual {p1, v0}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 234
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getCompressionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p1}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object p1

    check-cast p1, Lorg/jose4j/zip/CompressionAlgorithm;

    .line 237
    invoke-interface {p1, p2}, Lorg/jose4j/zip/CompressionAlgorithm;->decompress([B)[B

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public enableDefaultCompression()V
    .locals 1

    const-string v0, "DEF"

    .line 118
    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->setCompressionAlgorithmHeaderParameter(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getAlgorithm()Lorg/jose4j/jwa/Algorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAlgorithmNoConstraintCheck()Lorg/jose4j/jwa/Algorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithmNoConstraintCheck()Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm(Z)Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getCompactSerialization()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    move-result-object v6

    .line 260
    invoke-interface {v6}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-result-object v2

    .line 261
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v1

    .line 262
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->isDoKeyValidation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v3

    invoke-interface {v0, v3, v6}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v3

    iget-object v4, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionKey:[B

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getContentEncryptionKey()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jose4j/jwe/JsonWebEncryption;->setContentEncryptionKey([B)V

    .line 269
    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getEncryptedKey()[B

    move-result-object v1

    iput-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->encryptedKey:[B

    .line 271
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeaderAsciiBytesForAdditionalAuthenticatedData()[B

    move-result-object v3

    .line 272
    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getContentEncryptionKey()[B

    move-result-object v4

    .line 274
    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/jose4j/jwe/JsonWebEncryption;->compress(Lorg/jose4j/jwx/Headers;[B)[B

    move-result-object v2

    .line 282
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getIv()[B

    move-result-object v7

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v8

    move-object v1, v6

    move-object v6, v7

    move-object v7, v8

    invoke-interface/range {v1 .. v7}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->encrypt([B[B[BLorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionParts;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getIv()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jose4j/jwe/JsonWebEncryption;->setIv([B)V

    .line 284
    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getCiphertext()[B

    move-result-object v2

    iput-object v2, p0, Lorg/jose4j/jwe/JsonWebEncryption;->ciphertext:[B

    .line 286
    iget-object v2, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getIv()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v2

    .line 287
    iget-object v3, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getCiphertext()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v3

    .line 288
    iget-object v4, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getAuthenticationTag()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getEncryptedKey()[B

    move-result-object v0

    .line 292
    iget-object v4, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v4, v0}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 294
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeader()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object v1, v4, v0

    invoke-static {v4}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The plaintext payload for the JWE has not been set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompressionAlgorithmHeaderParameter()Ljava/lang/String;
    .locals 1

    const-string v0, "zip"

    .line 113
    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncryptionMethodHeaderParameter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {v1, v0}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getJweContentEncryptionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v0}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object v0

    check-cast v0, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Lorg/jose4j/lang/InvalidAlgorithmException;

    const-string v1, "Content encryption header (enc) not set."

    invoke-direct {v0, v1}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncryptionKey()[B
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionKey:[B

    return-object v0
.end method

.method getEncodedHeaderAsciiBytesForAdditionalAuthenticatedData()[B
    .locals 1

    .line 225
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeader()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lorg/jose4j/lang/StringUtil;->getBytesAscii(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedKey()[B
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->encryptedKey:[B

    return-object v0
.end method

.method public getEncryptionMethodHeaderParameter()Ljava/lang/String;
    .locals 1

    const-string v0, "enc"

    .line 103
    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIv()[B
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->iv:[B

    return-object v0
.end method

.method public getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm(Z)Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method getKeyManagementModeAlgorithm(Z)Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmHeaderValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmConstraints()Lorg/jose4j/jwa/AlgorithmConstraints;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    .line 157
    :cond_0
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getJweKeyManagementAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object p1

    .line 159
    invoke-virtual {p1, v0}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object p1

    check-cast p1, Lorg/jose4j/jwe/KeyManagementAlgorithm;

    return-object p1

    .line 150
    :cond_1
    new-instance p1, Lorg/jose4j/lang/InvalidAlgorithmException;

    const-string v0, "Encryption key management algorithm header (alg) not set."

    invoke-direct {p1, v0}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getPlaintextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaintextBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->decrypt()V

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    return-object v0
.end method

.method public getPlaintextString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getPlaintextBytes()[B

    move-result-object v0

    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jose4j/lang/StringUtil;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setCompactSerializationParts([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 176
    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 181
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->setEncodedHeader(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->encryptedKey:[B

    const/4 v0, 0x2

    .line 183
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->setEncodedIv(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 184
    aget-object v0, p1, v0

    const-string v1, "Encoded JWE Ciphertext"

    .line 185
    invoke-virtual {p0, v0, v1}, Lorg/jose4j/jwe/JsonWebEncryption;->checkNotEmptyPart(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v1, v0}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->ciphertext:[B

    const/4 v0, 0x4

    .line 187
    aget-object p1, p1, v0

    const-string v0, "Encoded JWE Authentication Tag"

    .line 188
    invoke-virtual {p0, p1, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->checkNotEmptyPart(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setIntegrity([B)V

    return-void

    .line 178
    :cond_0
    new-instance p1, Lorg/jose4j/lang/JoseException;

    const-string v0, "A JWE Compact Serialization must have exactly 5 parts separated by period (\'.\') characters"

    invoke-direct {p1, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompressionAlgorithmHeaderParameter(Ljava/lang/String;)V
    .locals 1

    const-string v0, "zip"

    .line 108
    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-void
.end method

.method public setContentEncryptionKey([B)V
    .locals 0

    .line 304
    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionKey:[B

    return-void
.end method

.method public setEncodedContentEncryptionKey(Ljava/lang/String;)V
    .locals 0

    .line 309
    invoke-static {p1}, Lorg/jose4j/base64url/Base64Url;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setContentEncryptionKey([B)V

    return-void
.end method

.method public setEncodedIv(Ljava/lang/String;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setIv([B)V

    return-void
.end method

.method public setEncryptionMethodHeaderParameter(Ljava/lang/String;)V
    .locals 1

    const-string v0, "enc"

    .line 98
    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIv([B)V
    .locals 0

    .line 319
    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->iv:[B

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setPlaintext(Ljava/lang/String;)V

    return-void
.end method

.method public setPlainTextCharEncoding(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    return-void
.end method

.method public setPlaintext(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/jose4j/lang/StringUtil;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    return-void
.end method

.method public setPlaintext([B)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    return-void
.end method
