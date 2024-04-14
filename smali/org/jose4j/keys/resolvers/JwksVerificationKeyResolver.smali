.class public Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;
.super Ljava/lang/Object;
.source "JwksVerificationKeyResolver.java"

# interfaces
.implements Lorg/jose4j/keys/resolvers/VerificationKeyResolver;


# instance fields
.field private disambiguateWithVerifySignature:Z

.field private jsonWebKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation
.end field

.field private selector:Lorg/jose4j/jwk/VerificationJwkSelector;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/jose4j/jwk/VerificationJwkSelector;

    invoke-direct {v0}, Lorg/jose4j/jwk/VerificationJwkSelector;-><init>()V

    iput-object v0, p0, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->selector:Lorg/jose4j/jwk/VerificationJwkSelector;

    .line 39
    iput-object p1, p0, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->jsonWebKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public resolveKey(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jws/JsonWebSignature;",
            "Ljava/util/List<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)",
            "Ljava/security/Key;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/UnresolvableKeyException;
        }
    .end annotation

    const-string p2, "Unable to find a suitable verification key for JWS w/ header "

    .line 48
    :try_start_0
    iget-boolean v0, p0, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->disambiguateWithVerifySignature:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->selector:Lorg/jose4j/jwk/VerificationJwkSelector;

    iget-object v1, p0, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->jsonWebKeys:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lorg/jose4j/jwk/VerificationJwkSelector;->selectWithVerifySignatureDisambiguate(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->selector:Lorg/jose4j/jwk/VerificationJwkSelector;

    iget-object v1, p0, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->jsonWebKeys:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lorg/jose4j/jwk/VerificationJwkSelector;->select(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v0
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lorg/jose4j/jwk/JsonWebKey;->getKey()Ljava/security/Key;

    move-result-object p1

    return-object p1

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jose4j/jws/JsonWebSignature;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from JWKs "

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->jsonWebKeys:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    new-instance p1, Lorg/jose4j/lang/UnresolvableKeyException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jose4j/jws/JsonWebSignature;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to an unexpected exception ("

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") selecting from keys: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->jsonWebKeys:Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    new-instance p1, Lorg/jose4j/lang/UnresolvableKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setDisambiguateWithVerifySignature(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lorg/jose4j/keys/resolvers/JwksVerificationKeyResolver;->disambiguateWithVerifySignature:Z

    return-void
.end method
