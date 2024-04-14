.class public Lorg/jose4j/jwa/AlgorithmFactoryFactory;
.super Ljava/lang/Object;
.source "AlgorithmFactoryFactory.java"


# static fields
.field private static final factoryFactory:Lorg/jose4j/jwa/AlgorithmFactoryFactory;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private compressionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jose4j/jwa/AlgorithmFactory<",
            "Lorg/jose4j/zip/CompressionAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jose4j/jwa/AlgorithmFactory<",
            "Lorg/jose4j/jwe/ContentEncryptionAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jose4j/jwa/AlgorithmFactory<",
            "Lorg/jose4j/jwe/KeyManagementAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jose4j/jwa/AlgorithmFactory<",
            "Lorg/jose4j/jws/JsonWebSignatureAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->log:Lorg/slf4j/Logger;

    .line 36
    new-instance v0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    invoke-direct {v0}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;-><init>()V

    sput-object v0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->factoryFactory:Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->initialize()V

    return-void
.end method

.method public static getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    .locals 1

    .line 119
    sget-object v0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->factoryFactory:Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    return-object v0
.end method

.method private initialize()V
    .locals 7

    const-string v0, "java.version"

    .line 56
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.vendor"

    .line 57
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.home"

    .line 58
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 60
    sget-object v4, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const-string v0, "Initializing jose4j (running with Java {} from {} at {} with {} security providers installed)..."

    invoke-interface {v4, v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    new-instance v2, Lorg/jose4j/jwa/AlgorithmFactory;

    const-class v3, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    const-string v5, "alg"

    invoke-direct {v2, v5, v3}, Lorg/jose4j/jwa/AlgorithmFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    .line 63
    new-instance v3, Lorg/jose4j/jws/PlaintextNoneAlgorithm;

    invoke-direct {v3}, Lorg/jose4j/jws/PlaintextNoneAlgorithm;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 64
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha256;

    invoke-direct {v3}, Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha256;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 65
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha384;

    invoke-direct {v3}, Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha384;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 66
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha512;

    invoke-direct {v3}, Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha512;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 67
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP256UsingSha256;

    invoke-direct {v3}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP256UsingSha256;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 68
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP384UsingSha384;

    invoke-direct {v3}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP384UsingSha384;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 69
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP521UsingSha512;

    invoke-direct {v3}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP521UsingSha512;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 70
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha256;

    invoke-direct {v3}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha256;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 71
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha384;

    invoke-direct {v3}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha384;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 72
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha512;

    invoke-direct {v3}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha512;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 73
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha256;

    invoke-direct {v3}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha256;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 74
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha384;

    invoke-direct {v3}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha384;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 75
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;

    invoke-direct {v3}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 77
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    invoke-virtual {v2}, Lorg/jose4j/jwa/AlgorithmFactory;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v2

    const-string v3, "JWS signature algorithms: {}"

    invoke-interface {v4, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    new-instance v2, Lorg/jose4j/jwa/AlgorithmFactory;

    const-class v3, Lorg/jose4j/jwe/KeyManagementAlgorithm;

    invoke-direct {v2, v5, v3}, Lorg/jose4j/jwa/AlgorithmFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    .line 80
    new-instance v3, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$Rsa1_5;

    invoke-direct {v3}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$Rsa1_5;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 81
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep;

    invoke-direct {v3}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 82
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;

    invoke-direct {v3}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep256;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 83
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;

    invoke-direct {v3}, Lorg/jose4j/jwe/DirectKeyManagementAlgorithm;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 84
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes128;

    invoke-direct {v3}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes128;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 85
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes192;

    invoke-direct {v3}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes192;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 86
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes256;

    invoke-direct {v3}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes256;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 87
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;

    invoke-direct {v3}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 88
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes128KeyWrapAlgorithm;

    invoke-direct {v3}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes128KeyWrapAlgorithm;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 89
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes192KeyWrapAlgorithm;

    invoke-direct {v3}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes192KeyWrapAlgorithm;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 90
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes256KeyWrapAlgorithm;

    invoke-direct {v3}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes256KeyWrapAlgorithm;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 91
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha256Aes128;

    invoke-direct {v3}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha256Aes128;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 92
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha384Aes192;

    invoke-direct {v3}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha384Aes192;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 93
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha512Aes256;

    invoke-direct {v3}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha512Aes256;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 94
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes128Gcm;

    invoke-direct {v3}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes128Gcm;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 95
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes192Gcm;

    invoke-direct {v3}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes192Gcm;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 96
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes256Gcm;

    invoke-direct {v3}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes256Gcm;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 98
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    invoke-virtual {v2}, Lorg/jose4j/jwa/AlgorithmFactory;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v2

    const-string v3, "JWE key management algorithms: {}"

    invoke-interface {v4, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    new-instance v2, Lorg/jose4j/jwa/AlgorithmFactory;

    const-class v3, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    const-string v5, "enc"

    invoke-direct {v2, v5, v3}, Lorg/jose4j/jwa/AlgorithmFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    .line 101
    new-instance v3, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes128CbcHmacSha256;

    invoke-direct {v3}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes128CbcHmacSha256;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 102
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes192CbcHmacSha384;

    invoke-direct {v3}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes192CbcHmacSha384;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 103
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes256CbcHmacSha512;

    invoke-direct {v3}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes256CbcHmacSha512;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 104
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes128Gcm;

    invoke-direct {v3}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes128Gcm;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 105
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes192Gcm;

    invoke-direct {v3}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes192Gcm;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 106
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    new-instance v3, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes256Gcm;

    invoke-direct {v3}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes256Gcm;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 108
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    invoke-virtual {v2}, Lorg/jose4j/jwa/AlgorithmFactory;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v2

    const-string v3, "JWE content encryption algorithms: {}"

    invoke-interface {v4, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    new-instance v2, Lorg/jose4j/jwa/AlgorithmFactory;

    const-class v3, Lorg/jose4j/zip/CompressionAlgorithm;

    const-string v5, "zip"

    invoke-direct {v2, v5, v3}, Lorg/jose4j/jwa/AlgorithmFactory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->compressionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    .line 111
    new-instance v3, Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;

    invoke-direct {v3}, Lorg/jose4j/zip/DeflateRFC1951CompressionAlgorithm;-><init>()V

    invoke-virtual {v2, v3}, Lorg/jose4j/jwa/AlgorithmFactory;->registerAlgorithm(Lorg/jose4j/jwa/Algorithm;)V

    .line 113
    iget-object v2, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->compressionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    invoke-virtual {v2}, Lorg/jose4j/jwa/AlgorithmFactory;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v2

    const-string v3, "JWE compression algorithms: {}"

    invoke-interface {v4, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Initialized jose4j in {}ms"

    invoke-interface {v4, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCompressionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jose4j/jwa/AlgorithmFactory<",
            "Lorg/jose4j/zip/CompressionAlgorithm;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->compressionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    return-object v0
.end method

.method public getJweContentEncryptionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jose4j/jwa/AlgorithmFactory<",
            "Lorg/jose4j/jwe/ContentEncryptionAlgorithm;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweContentEncryptionAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    return-object v0
.end method

.method public getJweKeyManagementAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jose4j/jwa/AlgorithmFactory<",
            "Lorg/jose4j/jwe/KeyManagementAlgorithm;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jweKeyMgmtModeAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    return-object v0
.end method

.method public getJwsAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jose4j/jwa/AlgorithmFactory<",
            "Lorg/jose4j/jws/JsonWebSignatureAlgorithm;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->jwsAlgorithmFactory:Lorg/jose4j/jwa/AlgorithmFactory;

    return-object v0
.end method

.method reinitialize()V
    .locals 2

    .line 50
    sget-object v0, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->log:Lorg/slf4j/Logger;

    const-string v1, "Reinitializing jose4j..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->initialize()V

    return-void
.end method
