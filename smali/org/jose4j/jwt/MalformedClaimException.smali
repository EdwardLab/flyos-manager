.class public Lorg/jose4j/jwt/MalformedClaimException;
.super Lorg/jose4j/jwt/GeneralJwtException;
.source "MalformedClaimException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/jose4j/jwt/GeneralJwtException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/jose4j/jwt/GeneralJwtException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
