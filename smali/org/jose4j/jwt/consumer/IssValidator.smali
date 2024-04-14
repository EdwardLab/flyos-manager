.class public Lorg/jose4j/jwt/consumer/IssValidator;
.super Ljava/lang/Object;
.source "IssValidator.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# instance fields
.field private expectedIssuers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requireIssuer:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 37
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    .line 39
    :cond_0
    iput-boolean p2, p0, Lorg/jose4j/jwt/consumer/IssValidator;->requireIssuer:Z

    return-void
.end method

.method public varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/IssValidator;->requireIssuer:Z

    if-eqz p2, :cond_0

    .line 45
    array-length p1, p2

    if-lez p1, :cond_0

    .line 47
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    .line 48
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private expectedValue()Ljava/lang/String;
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "one of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jose4j/jwt/JwtClaims;->getIssuer()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 59
    iget-boolean p1, p0, Lorg/jose4j/jwt/consumer/IssValidator;->requireIssuer:Z

    if-eqz p1, :cond_0

    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 p1, 0xb

    const-string v1, "No Issuer (iss) claim present."

    invoke-direct {v0, p1, v1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    :cond_0
    return-object v0

    .line 62
    :cond_1
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/IssValidator;->expectedIssuers:Ljava/util/Set;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Issuer (iss) claim value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") doesn\'t match expected value of "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/jose4j/jwt/consumer/IssValidator;->expectedValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    :cond_2
    return-object v0
.end method
