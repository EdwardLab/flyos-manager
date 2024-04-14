.class public Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;
.super Ljava/lang/Object;
.source "X509VerificationKeyResolver.java"

# interfaces
.implements Lorg/jose4j/keys/resolvers/VerificationKeyResolver;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private tryAllOnNoThumbHeader:Z

.field private x5tMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private x5tS256Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tMap:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tS256Map:Ljava/util/Map;

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 57
    :try_start_0
    invoke-static {v0}, Lorg/jose4j/keys/X509Util;->x5t(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v0}, Lorg/jose4j/keys/X509Util;->x5tS256(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tS256Map:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jose4j/lang/UncheckedJoseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    sget-object v1, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->log:Lorg/slf4j/Logger;

    const-string v2, "Unable to get certificate thumbprint."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private attemptAll(Lorg/jose4j/jws/JsonWebSignature;)Ljava/security/Key;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/UnresolvableKeyException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 129
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 130
    invoke-virtual {p1, v1}, Lorg/jose4j/jws/JsonWebSignature;->setKey(Ljava/security/Key;)V

    .line 134
    :try_start_0
    invoke-virtual {p1}, Lorg/jose4j/jws/JsonWebSignature;->verifySignature()Z

    move-result v2
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v1

    :catch_0
    move-exception v1

    .line 141
    sget-object v2, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->log:Lorg/slf4j/Logger;

    invoke-static {v1}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCauses(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Verify signature didn\'t work: {}"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to verify the signature with any of the provided keys - SHA-1 thumbs of provided certificates: "

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v0, Lorg/jose4j/lang/UnresolvableKeyException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public resolveKey(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Ljava/security/Key;
    .locals 4
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

    .line 83
    invoke-virtual {p1}, Lorg/jose4j/jws/JsonWebSignature;->getX509CertSha1ThumbprintHeaderValue()Ljava/lang/String;

    move-result-object p2

    .line 84
    invoke-virtual {p1}, Lorg/jose4j/jws/JsonWebSignature;->getX509CertSha256ThumbprintHeaderValue()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_1

    if-nez v0, :cond_1

    .line 88
    iget-boolean p2, p0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->tryAllOnNoThumbHeader:Z

    if-eqz p2, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->attemptAll(Lorg/jose4j/jws/JsonWebSignature;)Ljava/security/Key;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    new-instance p1, Lorg/jose4j/lang/UnresolvableKeyException;

    const-string p2, "Neither the x5t header nor the x5t#S256 header are present in the JWS."

    invoke-direct {p1, p2}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    iget-object p1, p0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    if-nez p1, :cond_2

    .line 98
    iget-object p1, p0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tS256Map:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    :cond_2
    if-nez p1, :cond_5

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The X.509 Certificate Thumbprint header(s) in the JWS do not identify any of the provided Certificates -"

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    const-string v2, " "

    if-eqz p2, :cond_3

    .line 108
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "x5t"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " vs. SHA-1 thumbs:"

    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "x5t#S256"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " vs. SHA-256 thumbs:"

    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->x5tS256Map:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p2, "."

    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance p2, Lorg/jose4j/lang/UnresolvableKeyException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 122
    :cond_5
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method public setTryAllOnNoThumbHeader(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/jose4j/keys/resolvers/X509VerificationKeyResolver;->tryAllOnNoThumbHeader:Z

    return-void
.end method
