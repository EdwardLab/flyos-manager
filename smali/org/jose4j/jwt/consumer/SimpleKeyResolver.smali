.class Lorg/jose4j/jwt/consumer/SimpleKeyResolver;
.super Ljava/lang/Object;
.source "SimpleKeyResolver.java"

# interfaces
.implements Lorg/jose4j/keys/resolvers/VerificationKeyResolver;
.implements Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;


# instance fields
.field private key:Ljava/security/Key;


# direct methods
.method constructor <init>(Ljava/security/Key;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;->key:Ljava/security/Key;

    return-void
.end method


# virtual methods
.method public resolveKey(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/List;)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jwe/JsonWebEncryption;",
            "Ljava/util/List<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)",
            "Ljava/security/Key;"
        }
    .end annotation

    .line 43
    iget-object p1, p0, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;->key:Ljava/security/Key;

    return-object p1
.end method

.method public resolveKey(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Ljava/security/Key;
    .locals 0
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

    .line 49
    iget-object p1, p0, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;->key:Ljava/security/Key;

    return-object p1
.end method
