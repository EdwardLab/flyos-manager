.class public Lorg/jose4j/keys/resolvers/EmbeddedJwkVerificationKeyResolver;
.super Ljava/lang/Object;
.source "EmbeddedJwkVerificationKeyResolver.java"

# interfaces
.implements Lorg/jose4j/keys/resolvers/VerificationKeyResolver;


# instance fields
.field private jwk:Lorg/jose4j/jwk/PublicJsonWebKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJwk()Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/jose4j/keys/resolvers/EmbeddedJwkVerificationKeyResolver;->jwk:Lorg/jose4j/jwk/PublicJsonWebKey;

    return-object v0
.end method

.method public resolveKey(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Ljava/security/Key;
    .locals 1
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

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lorg/jose4j/jws/JsonWebSignature;->getJwkHeader()Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/keys/resolvers/EmbeddedJwkVerificationKeyResolver;->jwk:Lorg/jose4j/jwk/PublicJsonWebKey;
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Lorg/jose4j/jwk/PublicJsonWebKey;->getKey()Ljava/security/Key;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    new-instance p1, Lorg/jose4j/lang/UnresolvableKeyException;

    const-string p2, "No jwk in JWS header"

    invoke-direct {p1, p2}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 32
    new-instance p2, Lorg/jose4j/lang/UnresolvableKeyException;

    const-string v0, "Problem processing jwk from JWS header"

    invoke-direct {p2, v0, p1}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
