.class public Lorg/jose4j/jwk/VerificationJwkSelector;
.super Ljava/lang/Object;
.source "VerificationJwkSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasMoreThanOne(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)Z"
        }
    .end annotation

    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public select(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jws/JsonWebSignature;",
            "Ljava/util/Collection<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)",
            "Lorg/jose4j/jwk/JsonWebKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/jose4j/jwk/VerificationJwkSelector;->selectList(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jose4j/jwk/JsonWebKey;

    :goto_0
    return-object p1
.end method

.method public selectList(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jws/JsonWebSignature;",
            "Ljava/util/Collection<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 39
    invoke-static {p1}, Lorg/jose4j/jwk/SelectorSupport;->filterForInboundSigned(Lorg/jose4j/jws/JsonWebSignature;)Lorg/jose4j/jwk/SimpleJwkFilter;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p2}, Lorg/jose4j/jwk/SimpleJwkFilter;->filter(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 42
    invoke-direct {p0, p2}, Lorg/jose4j/jwk/VerificationJwkSelector;->hasMoreThanOne(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p1}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmHeaderValue()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {v0, v1, v2}, Lorg/jose4j/jwk/SimpleJwkFilter;->setAlg(Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {v0, p2}, Lorg/jose4j/jwk/SimpleJwkFilter;->filter(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 48
    :cond_0
    invoke-direct {p0, p2}, Lorg/jose4j/jwk/VerificationJwkSelector;->hasMoreThanOne(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/jose4j/jws/JsonWebSignature;->getKeyType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p1}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object p1

    .line 51
    check-cast p1, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;

    .line 52
    invoke-virtual {p1}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;->getCurveName()Ljava/lang/String;

    move-result-object p1

    sget-boolean v1, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {v0, p1, v1}, Lorg/jose4j/jwk/SimpleJwkFilter;->setCrv(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {v0, p2}, Lorg/jose4j/jwk/SimpleJwkFilter;->filter(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public selectWithVerifySignatureDisambiguate(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jws/JsonWebSignature;",
            "Ljava/util/Collection<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)",
            "Lorg/jose4j/jwk/JsonWebKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/jose4j/jwk/VerificationJwkSelector;->selectList(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 64
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 68
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 p1, 0x0

    .line 70
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jose4j/jwk/JsonWebKey;

    return-object p1

    .line 74
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jose4j/jwk/JsonWebKey;

    .line 76
    invoke-virtual {v0}, Lorg/jose4j/jwk/JsonWebKey;->getKey()Ljava/security/Key;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jose4j/jws/JsonWebSignature;->setKey(Ljava/security/Key;)V

    .line 77
    invoke-virtual {p1}, Lorg/jose4j/jws/JsonWebSignature;->verifySignature()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method
