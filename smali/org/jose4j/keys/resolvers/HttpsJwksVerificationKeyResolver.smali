.class public Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;
.super Ljava/lang/Object;
.source "HttpsJwksVerificationKeyResolver.java"

# interfaces
.implements Lorg/jose4j/keys/resolvers/VerificationKeyResolver;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private disambiguateWithVerifySignature:Z

.field private httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

.field private verificationJwkSelector:Lorg/jose4j/jwk/VerificationJwkSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/jose4j/jwk/HttpsJwks;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/jose4j/jwk/VerificationJwkSelector;

    invoke-direct {v0}, Lorg/jose4j/jwk/VerificationJwkSelector;-><init>()V

    iput-object v0, p0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->verificationJwkSelector:Lorg/jose4j/jwk/VerificationJwkSelector;

    .line 47
    iput-object p1, p0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    return-void
.end method


# virtual methods
.method public resolveKey(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Ljava/security/Key;
    .locals 6
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

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    invoke-virtual {v0}, Lorg/jose4j/jwk/HttpsJwks;->getJsonWebKeys()Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-virtual {p0, p1, v0}, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->select(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v1

    if-nez v1, :cond_0

    .line 63
    sget-object v1, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->log:Lorg/slf4j/Logger;

    const-string v2, "Refreshing JWKs from {} as no suitable verification key for JWS w/ header {} was found in {}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    invoke-virtual {v5}, Lorg/jose4j/jwk/HttpsJwks;->getLocation()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lorg/jose4j/jws/JsonWebSignature;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    invoke-virtual {v0}, Lorg/jose4j/jwk/HttpsJwks;->refresh()V

    .line 66
    iget-object v0, p0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    invoke-virtual {v0}, Lorg/jose4j/jwk/HttpsJwks;->getJsonWebKeys()Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-virtual {p0, p1, v0}, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->select(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v1
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1}, Lorg/jose4j/jwk/JsonWebKey;->getKey()Ljava/security/Key;

    move-result-object p1

    return-object p1

    .line 80
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jose4j/jws/JsonWebSignature;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from JWKs "

    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " obtained from "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    invoke-virtual {p1}, Lorg/jose4j/jwk/HttpsJwks;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance p1, Lorg/jose4j/lang/UnresolvableKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 72
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jose4j/jws/JsonWebSignature;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to an unexpected exception ("

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") while obtaining or using keys from JWKS endpoint at "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->httpsJkws:Lorg/jose4j/jwk/HttpsJwks;

    invoke-virtual {p1}, Lorg/jose4j/jwk/HttpsJwks;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance p1, Lorg/jose4j/lang/UnresolvableKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected select(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jws/JsonWebSignature;",
            "Ljava/util/List<",
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

    .line 91
    iget-boolean v0, p0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->disambiguateWithVerifySignature:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->verificationJwkSelector:Lorg/jose4j/jwk/VerificationJwkSelector;

    invoke-virtual {v0, p1, p2}, Lorg/jose4j/jwk/VerificationJwkSelector;->selectWithVerifySignatureDisambiguate(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->verificationJwkSelector:Lorg/jose4j/jwk/VerificationJwkSelector;

    invoke-virtual {v0, p1, p2}, Lorg/jose4j/jwk/VerificationJwkSelector;->select(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/Collection;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object p1

    return-object p1
.end method

.method public setDisambiguateWithVerifySignature(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lorg/jose4j/keys/resolvers/HttpsJwksVerificationKeyResolver;->disambiguateWithVerifySignature:Z

    return-void
.end method
