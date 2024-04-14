.class public Lorg/jose4j/jwt/consumer/InvalidJwtSignatureException;
.super Lorg/jose4j/jwt/consumer/InvalidJwtException;
.source "InvalidJwtSignatureException.java"


# direct methods
.method public constructor <init>(Lorg/jose4j/jws/JsonWebSignature;Lorg/jose4j/jwt/consumer/JwtContext;)V
    .locals 3

    .line 14
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid JWS Signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "JWT rejected due to invalid signature."

    invoke-direct {p0, v0, p1, p2}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/jose4j/jwt/consumer/JwtContext;)V

    return-void
.end method
