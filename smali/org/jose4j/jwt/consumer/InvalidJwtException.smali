.class public Lorg/jose4j/jwt/consumer/InvalidJwtException;
.super Ljava/lang/Exception;
.source "InvalidJwtException.java"


# instance fields
.field private details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;",
            ">;"
        }
    .end annotation
.end field

.field private jwtContext:Lorg/jose4j/jwt/consumer/JwtContext;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lorg/jose4j/jwt/consumer/JwtContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;",
            ">;",
            "Lorg/jose4j/jwt/consumer/JwtContext;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 34
    iput-object p2, p0, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    .line 35
    iput-object p3, p0, Lorg/jose4j/jwt/consumer/InvalidJwtException;->jwtContext:Lorg/jose4j/jwt/consumer/JwtContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;Ljava/lang/Throwable;Lorg/jose4j/jwt/consumer/JwtContext;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    .line 41
    iput-object p4, p0, Lorg/jose4j/jwt/consumer/InvalidJwtException;->jwtContext:Lorg/jose4j/jwt/consumer/JwtContext;

    .line 42
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getErrorDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    return-object v0
.end method

.method public getJwtContext()Lorg/jose4j/jwt/consumer/JwtContext;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/InvalidJwtException;->jwtContext:Lorg/jose4j/jwt/consumer/JwtContext;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " Additional details: "

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasErrorCode(I)Z
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/InvalidJwtException;->details:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    .line 61
    invoke-virtual {v1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;->getErrorCode()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hasExpired()Z
    .locals 1

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Lorg/jose4j/jwt/consumer/InvalidJwtException;->hasErrorCode(I)Z

    move-result v0

    return v0
.end method
