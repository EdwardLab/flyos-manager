.class public Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
.super Ljava/lang/Object;
.source "CryptoAesAndEtmHandler.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;


# static fields
.field private static final AUTHENTICATION_KEY_LENGTH:I = 0x10

.field private static final ENCRYPTION_KEY_LENGTH:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMacBytes([B[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "authKey",
            "iv",
            "cipherText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 128
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    .line 129
    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 130
    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 131
    invoke-virtual {p1, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 132
    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cryptoFactory",
            "apiLevel",
            "keyStoreEntry",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 87
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p4

    const/16 v0, 0x10

    if-ne p4, v0, :cond_2

    .line 91
    new-array p4, p4, [B

    .line 92
    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 99
    new-array v1, v1, [B

    .line 100
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 104
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 107
    check-cast p3, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {p3}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    .line 108
    invoke-virtual {p0, p2, v2}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;->getSubkey(Ljavax/crypto/SecretKey;I)[B

    move-result-object p3

    .line 109
    invoke-virtual {p0, p2, v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;->getSubkey(Ljavax/crypto/SecretKey;I)[B

    move-result-object p2

    .line 112
    invoke-direct {p0, p2, p4, v3}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;->getMacBytes([B[B[B)[B

    move-result-object p2

    .line 115
    invoke-static {p2, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const-string v0, "AES/CBC/PKCS7Padding"

    .line 120
    invoke-interface {p1, v0, p2}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;->getCipher(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;

    move-result-object p1

    const/4 p2, 0x2

    .line 121
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p3, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-interface {p1, p2, v0, p3}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 122
    invoke-interface {p1, v3}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Could not authenticate MAC value."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid MAC length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid IV length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cryptoFactory",
            "apiLevel",
            "keyStoreEntry",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    check-cast p3, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {p3}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    const/16 p3, 0x20

    .line 59
    invoke-virtual {p0, p2, p3}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;->getSubkey(Ljavax/crypto/SecretKey;I)[B

    move-result-object p3

    const/16 v0, 0x10

    .line 60
    invoke-virtual {p0, p2, v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;->getSubkey(Ljavax/crypto/SecretKey;I)[B

    move-result-object p2

    const-string v0, "AES/CBC/PKCS7Padding"

    const/4 v1, 0x0

    .line 63
    invoke-interface {p1, v0, v1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;->getCipher(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;

    move-result-object p1

    .line 64
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p3, 0x1

    invoke-interface {p1, p3, v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->init(ILjava/security/Key;)V

    .line 65
    invoke-interface {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->getIV()[B

    move-result-object v0

    .line 66
    invoke-interface {p1, p4}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->doFinal([B)[B

    move-result-object p1

    .line 69
    invoke-direct {p0, p2, v0, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;->getMacBytes([B[B[B)[B

    move-result-object p2

    .line 72
    array-length p4, v0

    add-int/2addr p4, p3

    add-int/2addr p4, p3

    array-length p3, p2

    add-int/2addr p4, p3

    array-length p3, p1

    add-int/2addr p4, p3

    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 73
    array-length p4, v0

    int-to-byte p4, p4

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 75
    array-length p4, p2

    int-to-byte p4, p4

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method public generateKey(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cryptoFactory",
            "alias",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p3, v0, v0}, Ljava/util/Calendar;->add(II)V

    const-string v0, "HmacSHA256"

    const-string v1, "AndroidKeyStore"

    .line 46
    invoke-interface {p1, v0, v1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;->getKeyGenerator(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;

    move-result-object p1

    .line 47
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    .line 49
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p2

    .line 47
    invoke-interface {p1, p2}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 50
    invoke-interface {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;->generateKey()V

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "AES/CBC/PKCS7Padding/256/HmacSHA256"

    return-object v0
.end method

.method getSubkey(Ljavax/crypto/SecretKey;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "secretKey",
            "outputDataLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const-string v0, "HmacSHA256"

    .line 154
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    int-to-double v1, p2

    .line 158
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    const/16 v1, 0xff

    if-gt p1, v1, :cond_1

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 165
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_0

    .line 169
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->update([B)V

    add-int/lit8 v4, v4, 0x1

    int-to-byte v2, v4

    .line 170
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->update(B)V

    .line 171
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    .line 172
    array-length v5, v2

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 173
    invoke-virtual {v3, v2, v1, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p2, v5

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    .line 160
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output data length must be maximum of 255 * hash-length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output data length must be greater than zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
