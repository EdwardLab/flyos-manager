.class public Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.super Lorg/jose4j/jws/BaseSignatureAlgorithm;
.source "EcdsaUsingShaAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jws/JsonWebSignatureAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP521UsingSha512;,
        Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP384UsingSha384;,
        Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP256UsingSha256;
    }
.end annotation


# instance fields
.field private curveName:Ljava/lang/String;

.field private signatureByteLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "EC"

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lorg/jose4j/jws/BaseSignatureAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p3, p0, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->curveName:Ljava/lang/String;

    .line 48
    iput p4, p0, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->signatureByteLength:I

    return-void
.end method

.method public static convertConcatenatedToDer([B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    array-length v0, p0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    move v2, v0

    :goto_0
    if-lez v2, :cond_0

    sub-int v3, v0, v2

    .line 100
    aget-byte v3, p0, v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    sub-int v3, v0, v2

    .line 104
    aget-byte v4, p0, v3

    if-gez v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    move v5, v0

    :goto_2
    if-lez v5, :cond_2

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v6, v5

    .line 111
    aget-byte v6, p0, v6

    if-nez v6, :cond_2

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_2
    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v5

    .line 115
    aget-byte v6, p0, v0

    if-gez v6, :cond_3

    add-int/lit8 v6, v5, 0x1

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    add-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v1

    add-int/2addr v7, v6

    const/16 v8, 0xff

    if-gt v7, v8, :cond_5

    const/16 v8, 0x80

    const/4 v9, 0x1

    if-ge v7, v8, :cond_4

    add-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v1

    add-int/2addr v8, v6

    .line 129
    new-array v8, v8, [B

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v4, 0x5

    add-int/2addr v8, v1

    add-int/2addr v8, v6

    .line 134
    new-array v8, v8, [B

    const/16 v10, -0x7f

    .line 135
    aput-byte v10, v8, v9

    const/4 v9, 0x2

    :goto_4
    const/4 v10, 0x0

    const/16 v11, 0x30

    .line 139
    aput-byte v11, v8, v10

    add-int/lit8 v10, v9, 0x1

    int-to-byte v7, v7

    .line 140
    aput-byte v7, v8, v9

    add-int/lit8 v7, v10, 0x1

    .line 141
    aput-byte v1, v8, v10

    add-int/lit8 v9, v7, 0x1

    int-to-byte v10, v4

    .line 142
    aput-byte v10, v8, v7

    add-int/2addr v9, v4

    sub-int v4, v9, v2

    .line 144
    invoke-static {p0, v3, v8, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v9, 0x1

    .line 148
    aput-byte v1, v8, v9

    add-int/lit8 v1, v2, 0x1

    int-to-byte v3, v6

    .line 149
    aput-byte v3, v8, v2

    add-int/2addr v1, v6

    sub-int/2addr v1, v5

    .line 151
    invoke-static {p0, v0, v8, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v8

    .line 123
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid format of ECDSA signature"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertDerToConcatenated([BI)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    array-length v0, p0

    const-string v1, "Invalid format of ECDSA signature"

    const/16 v2, 0x8

    if-lt v0, v2, :cond_5

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    .line 166
    aget-byte v0, p0, v0

    const/4 v2, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v3, -0x7f

    if-ne v0, v3, :cond_4

    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v3, v0, 0x1

    .line 179
    aget-byte v3, p0, v3

    move v4, v3

    :goto_1
    if-lez v4, :cond_1

    add-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v3

    sub-int/2addr v5, v4

    .line 182
    aget-byte v5, p0, v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v6, v5, 0x1

    .line 184
    aget-byte v6, p0, v6

    move v7, v6

    :goto_2
    if-lez v7, :cond_2

    add-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v6

    sub-int/2addr v8, v7

    .line 187
    aget-byte v8, p0, v8

    if-nez v8, :cond_2

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 189
    :cond_2
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 190
    div-int/2addr p1, v2

    invoke-static {v8, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v8, v0, -0x1

    .line 192
    aget-byte v8, p0, v8

    and-int/lit16 v9, v8, 0xff

    array-length v10, p0

    sub-int/2addr v10, v0

    if-ne v9, v10, :cond_3

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v2

    add-int/2addr v3, v2

    add-int/2addr v3, v6

    if-ne v8, v3, :cond_3

    aget-byte v0, p0, v0

    if-ne v0, v2, :cond_3

    aget-byte v0, p0, v5

    if-ne v0, v2, :cond_3

    mul-int/lit8 v0, p1, 0x2

    .line 200
    new-array v1, v0, [B

    sub-int v3, v5, v4

    sub-int/2addr p1, v4

    .line 202
    invoke-static {p0, v3, v1, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v2

    add-int/2addr v5, v6

    sub-int/2addr v5, v7

    sub-int/2addr v0, v7

    .line 203
    invoke-static {p0, v5, v1, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 197
    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private validateKeySpec(Ljava/security/Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 223
    instance-of v0, p1, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_1

    .line 225
    check-cast p1, Ljava/security/interfaces/ECKey;

    .line 226
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p1

    .line 229
    invoke-static {p1}, Lorg/jose4j/keys/EllipticCurves;->getName(Ljava/security/spec/EllipticCurve;)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p0}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->getCurveName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance v0, Lorg/jose4j/lang/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " expects a key using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->getCurveName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurveName()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->curveName:Ljava/lang/String;

    return-object v0
.end method

.method public sign(Ljava/security/Key;[BLorg/jose4j/jca/ProviderContext;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 68
    invoke-super {p0, p1, p2, p3}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->sign(Ljava/security/Key;[BLorg/jose4j/jca/ProviderContext;)[B

    move-result-object p1

    .line 71
    :try_start_0
    iget p2, p0, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->signatureByteLength:I

    invoke-static {p1, p2}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->convertDerToConcatenated([BI)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 75
    new-instance p2, Lorg/jose4j/lang/JoseException;

    const-string p3, "Unable to convert DER encoding to R and S as a concatenated byte array."

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public validatePrivateKey(Ljava/security/PrivateKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->validateKeySpec(Ljava/security/Key;)V

    return-void
.end method

.method public validatePublicKey(Ljava/security/PublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->validateKeySpec(Ljava/security/Key;)V

    return-void
.end method

.method public verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 56
    :try_start_0
    invoke-static {p1}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->convertConcatenatedToDer([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jose4j/jws/BaseSignatureAlgorithm;->verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 60
    new-instance p2, Lorg/jose4j/lang/JoseException;

    const-string p3, "Unable to convert R and S as a concatenated byte array to DER encoding."

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
