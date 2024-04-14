.class public Lorg/jose4j/jws/JsonWebSignature;
.super Lorg/jose4j/jwx/JsonWebStructure;
.source "JsonWebSignature.java"


# static fields
.field public static final COMPACT_SERIALIZATION_PARTS:S = 0x3s


# instance fields
.field private encodedPayload:Ljava/lang/String;

.field private payloadBytes:[B

.field private payloadCharEncoding:Ljava/lang/String;

.field private validSignature:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/jose4j/jwx/JsonWebStructure;-><init>()V

    const-string v0, "UTF-8"

    .line 44
    iput-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    const-string v0, "org.jose4j.jws.default-allow-none"

    .line 51
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lorg/jose4j/jwa/AlgorithmConstraints;->DISALLOW_NONE:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->setAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    :cond_0
    return-void
.end method

.method private getAlgorithm(Z)Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmHeaderValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmConstraints()Lorg/jose4j/jwa/AlgorithmConstraints;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    .line 253
    :cond_0
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getJwsAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object p1

    .line 255
    invoke-virtual {p1, v0}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object p1

    check-cast p1, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    return-object p1

    .line 245
    :cond_1
    new-instance p1, Lorg/jose4j/lang/InvalidAlgorithmException;

    const-string v0, "Signature algorithm header (alg) not set."

    invoke-direct {p1, v0}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSigningInputBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->isRfc7797UnencodedPayload()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 276
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedHeader()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedPayload()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v0}, Lorg/jose4j/lang/StringUtil;->getBytesAscii(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 283
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 284
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jose4j/lang/StringUtil;->getBytesAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x2e

    .line 285
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 286
    iget-object v1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 287
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 291
    new-instance v1, Lorg/jose4j/lang/JoseException;

    const-string v2, "This should never happen from a ByteArrayOutputStream"

    invoke-direct {v1, v2, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getStringPayload()Ljava/lang/String;
    .locals 2

    .line 332
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    iget-object v1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jose4j/lang/StringUtil;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getAlgorithm()Lorg/jose4j/jwa/Algorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 231
    invoke-direct {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm(Z)Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

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

    .line 39
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm(Z)Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getCompactSerialization()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->sign()V

    .line 142
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->isRfc7797UnencodedPayload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0}, Lorg/jose4j/jws/JsonWebSignature;->getStringPayload()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Lorg/jose4j/lang/JoseException;

    const-string v1, "per https://tools.ietf.org/html/rfc7797#section-5.2 when using the JWS Compact Serialization, unencoded non-detached payloads using period (\'.\') characters would cause parsing errors; such payloads MUST NOT be used with the JWS Compact Serialization."

    invoke-direct {v0, v1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedPayload()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedHeader()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedSignature()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetachedContentCompactSerialization()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->sign()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedHeader()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedSignature()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPayload()Ljava/lang/String;
    .locals 2

    .line 378
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->encodedPayload:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->base64url:Lorg/jose4j/base64url/Base64Url;

    iget-object v1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    invoke-virtual {v0, v1}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEncodedSignature()Ljava/lang/String;
    .locals 2

    .line 383
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPersuasion()Lorg/jose4j/keys/KeyPersuasion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    invoke-interface {v0}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->getKeyPersuasion()Lorg/jose4j/keys/KeyPersuasion;

    move-result-object v0

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    invoke-interface {v0}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->getKeyType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const-string v0, "org.jose4j.jws.getPayload-skip-verify"

    .line 312
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->verifySignature()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    new-instance v0, Lorg/jose4j/lang/IntegrityException;

    const-string v1, "JWS signature is invalid."

    invoke-direct {v0, v1}, Lorg/jose4j/lang/IntegrityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/jose4j/jws/JsonWebSignature;->getStringPayload()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->verifySignature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lorg/jose4j/lang/IntegrityException;

    const-string v1, "JWS signature is invalid."

    invoke-direct {v0, v1}, Lorg/jose4j/lang/IntegrityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPayloadCharEncoding()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getSignature()[B
    .locals 1

    .line 388
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getIntegrity()[B

    move-result-object v0

    return-object v0
.end method

.method public getUnverifiedPayload()Ljava/lang/String;
    .locals 1

    .line 327
    invoke-direct {p0}, Lorg/jose4j/jws/JsonWebSignature;->getStringPayload()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnverifiedPayloadBytes()[B
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    return-object v0
.end method

.method protected isRfc7797UnencodedPayload()Z
    .locals 2

    .line 298
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->headers:Lorg/jose4j/jwx/Headers;

    const-string v1, "b64"

    invoke-virtual {v0, v1}, Lorg/jose4j/jwx/Headers;->getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isSupportedCriticalHeader(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "b64"

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onNewKey()V
    .locals 1

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->validSignature:Ljava/lang/Boolean;

    return-void
.end method

.method protected setCompactSerializationParts([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 105
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 110
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->setEncodedHeader(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->isRfc7797UnencodedPayload()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 113
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->setPayload(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->setEncodedPayload(Ljava/lang/String;)V

    .line 120
    :goto_0
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->base64url:Lorg/jose4j/base64url/Base64Url;

    const/4 v1, 0x2

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jws/JsonWebSignature;->setSignature([B)V

    return-void

    .line 107
    :cond_1
    new-instance p1, Lorg/jose4j/lang/JoseException;

    const-string v0, "A JWS Compact Serialization must have exactly 3 parts separated by period (\'.\') characters"

    invoke-direct {p1, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEncodedPayload(Ljava/lang/String;)V
    .locals 1

    .line 368
    iput-object p1, p0, Lorg/jose4j/jws/JsonWebSignature;->encodedPayload:Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/jose4j/lang/StringUtil;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    return-void
.end method

.method public setPayloadBytes([B)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    return-void
.end method

.method public setPayloadCharEncoding(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    return-void
.end method

.method protected setSignature([B)V
    .locals 0

    .line 393
    invoke-virtual {p0, p1}, Lorg/jose4j/jws/JsonWebSignature;->setIntegrity([B)V

    return-void
.end method

.method public sign()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getKey()Ljava/security/Key;

    move-result-object v1

    .line 183
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->isDoKeyValidation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-interface {v0, v1}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->validateSigningKey(Ljava/security/Key;)V

    .line 187
    :cond_0
    invoke-direct {p0}, Lorg/jose4j/jws/JsonWebSignature;->getSigningInputBytes()[B

    move-result-object v2

    .line 188
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->sign(Ljava/security/Key;[BLorg/jose4j/jca/ProviderContext;)[B

    move-result-object v0

    .line 189
    invoke-virtual {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->setSignature([B)V

    return-void
.end method

.method public verifySignature()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getKey()Ljava/security/Key;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->isDoKeyValidation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-interface {v0, v1}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->validateVerificationKey(Ljava/security/Key;)V

    .line 211
    :cond_0
    iget-object v2, p0, Lorg/jose4j/jws/JsonWebSignature;->validSignature:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 213
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->checkCrit()V

    .line 214
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getSignature()[B

    move-result-object v2

    .line 215
    invoke-direct {p0}, Lorg/jose4j/jws/JsonWebSignature;->getSigningInputBytes()[B

    move-result-object v3

    .line 216
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v4

    invoke-interface {v0, v2, v1, v3, v4}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->validSignature:Ljava/lang/Boolean;

    .line 219
    :cond_1
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->validSignature:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
