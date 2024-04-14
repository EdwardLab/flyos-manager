.class public Lorg/jose4j/jwk/EllipticCurveJsonWebKey;
.super Lorg/jose4j/jwk/PublicJsonWebKey;
.source "EllipticCurveJsonWebKey.java"


# static fields
.field public static final CURVE_MEMBER_NAME:Ljava/lang/String; = "crv"

.field public static final KEY_TYPE:Ljava/lang/String; = "EC"

.field public static final PRIVATE_KEY_MEMBER_NAME:Ljava/lang/String; = "d"

.field public static final X_MEMBER_NAME:Ljava/lang/String; = "x"

.field public static final Y_MEMBER_NAME:Ljava/lang/String; = "y"


# instance fields
.field private curveName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/jose4j/jwk/PublicJsonWebKey;-><init>(Ljava/security/PublicKey;)V

    .line 50
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lorg/jose4j/keys/EllipticCurves;->getName(Ljava/security/spec/EllipticCurve;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->curveName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/jose4j/jwk/PublicJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "crv"

    const/4 v1, 0x1

    .line 64
    invoke-static {p1, v0, v1}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->curveName:Ljava/lang/String;

    .line 65
    invoke-static {v2}, Lorg/jose4j/keys/EllipticCurves;->getSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    const-string v3, "x"

    .line 67
    invoke-virtual {p0, p1, v3, v1}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v4

    const-string v5, "y"

    .line 69
    invoke-virtual {p0, p1, v5, v1}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v1

    .line 71
    new-instance v6, Lorg/jose4j/keys/EcKeyUtil;

    const/4 v7, 0x0

    invoke-direct {v6, p2, v7}, Lorg/jose4j/keys/EcKeyUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    .line 72
    invoke-virtual {v6, v4, v1, v2}, Lorg/jose4j/keys/EcKeyUtil;->publicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/interfaces/ECPublicKey;

    move-result-object p2

    iput-object p2, p0, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->key:Ljava/security/Key;

    .line 73
    invoke-virtual {p0}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->checkForBareKeyCertMismatch()V

    const-string p2, "d"

    .line 75
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, p1, p2, v1}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object p1

    .line 78
    invoke-virtual {v6, p1, v2}, Lorg/jose4j/keys/EcKeyUtil;->privateKey(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/interfaces/ECPrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    .line 81
    :cond_0
    filled-new-array {v0, v3, v5, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->removeFromOtherParams([Ljava/lang/String;)V

    return-void
.end method

.method private getCoordinateByteLength()I
    .locals 4

    .line 106
    invoke-virtual {p0}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getCurveName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jose4j/keys/EllipticCurves;->getSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected fillPrivateTypeSpecificParams(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getEcPrivateKey()Ljava/security/interfaces/ECPrivateKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getCoordinateByteLength()I

    move-result v1

    .line 130
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    const-string v2, "d"

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;I)V

    :cond_0
    return-void
.end method

.method protected fillPublicTypeSpecificParams(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getECPublicKey()Ljava/security/interfaces/ECPublicKey;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 114
    invoke-direct {p0}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getCoordinateByteLength()I

    move-result v1

    .line 115
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {p0, p1, v3, v2, v1}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;I)V

    .line 116
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    const-string v2, "y"

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;I)V

    .line 117
    invoke-virtual {p0}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getCurveName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crv"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCurveName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->curveName:Ljava/lang/String;

    return-object v0
.end method

.method public getECPublicKey()Ljava/security/interfaces/ECPublicKey;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->key:Ljava/security/Key;

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    return-object v0
.end method

.method public getEcPrivateKey()Ljava/security/interfaces/ECPrivateKey;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "EC"

    return-object v0
.end method

.method protected produceThumbprintHashInput()Ljava/lang/String;
    .locals 5

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->fillPublicTypeSpecificParams(Ljava/util/Map;)V

    const-string v1, "crv"

    .line 140
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "x"

    .line 141
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "y"

    .line 142
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "{\"crv\":\"%s\",\"kty\":\"EC\",\"x\":\"%s\",\"y\":\"%s\"}"

    .line 143
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
