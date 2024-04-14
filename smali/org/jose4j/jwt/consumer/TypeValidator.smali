.class public Lorg/jose4j/jwt/consumer/TypeValidator;
.super Ljava/lang/Object;
.source "TypeValidator.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# static fields
.field private static final APPLICATION_PRIMARY_TYPE:Ljava/lang/String; = "application"


# instance fields
.field private expectedType:Ljavax/activation/MimeType;

.field private requireType:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jose4j/jwt/consumer/TypeValidator;->toMediaType(Ljava/lang/String;)Ljavax/activation/MimeType;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Ljavax/activation/MimeType;

    .line 22
    invoke-virtual {v0}, Ljavax/activation/MimeType;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 32
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->requireType:Z

    return-void

    .line 24
    :cond_0
    :try_start_1
    new-instance p1, Ljavax/activation/MimeTypeParseException;

    const-string v0, "cannot use wildcard in subtype"

    invoke-direct {p1, v0}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 30
    new-instance v0, Lorg/jose4j/lang/UncheckedJoseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The given expected type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' isn\'t a valid media type in this context."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method toMediaType(Ljava/lang/String;)Ljavax/activation/MimeType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    const-string v0, "/"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/activation/MimeType;

    invoke-direct {v0, p1}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/activation/MimeType;

    const-string v1, "application"

    invoke-direct {v0, v1, p1}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method validate(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 5

    const-string v0, "\'"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 48
    iget-boolean p1, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->requireType:Z

    if-eqz p1, :cond_0

    new-instance v1, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 p1, 0x15

    const-string v0, "No typ header parameter present in the innermost JWS/JWE"

    invoke-direct {v1, p1, v0}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    :cond_0
    return-object v1

    .line 51
    :cond_1
    iget-object v2, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Ljavax/activation/MimeType;

    if-eqz v2, :cond_4

    const/16 v2, 0x16

    .line 55
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/consumer/TypeValidator;->toMediaType(Ljava/lang/String;)Ljavax/activation/MimeType;

    move-result-object v3

    .line 56
    iget-object v4, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Ljavax/activation/MimeType;

    invoke-virtual {v4, v3}, Ljavax/activation/MimeType;->match(Ljavax/activation/MimeType;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljavax/activation/MimeType;->getSubType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 58
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid typ header parameter value \'"

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'. Expecting \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v3, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Ljavax/activation/MimeType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v3, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Ljavax/activation/MimeType;

    invoke-virtual {v3}, Ljavax/activation/MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, " or just \'"

    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Ljavax/activation/MimeType;

    invoke-virtual {v3}, Ljavax/activation/MimeType;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "."

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "typ header parameter value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not parsable as a media type "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 1

    .line 38
    invoke-virtual {p1}, Lorg/jose4j/jwt/consumer/JwtContext;->getJoseObjects()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jose4j/jwx/JsonWebStructure;

    const-string v0, "typ"

    .line 39
    invoke-virtual {p1, v0}, Lorg/jose4j/jwx/JsonWebStructure;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/consumer/TypeValidator;->validate(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-result-object p1

    return-object p1
.end method
