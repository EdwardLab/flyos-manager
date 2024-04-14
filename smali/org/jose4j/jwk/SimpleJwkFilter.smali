.class public Lorg/jose4j/jwk/SimpleJwkFilter;
.super Ljava/lang/Object;
.source "SimpleJwkFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;,
        Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;
    }
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/String;

.field public static OMITTED_OKAY:Z = true

.field public static VALUE_REQUIRED:Z = false


# instance fields
.field private alg:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private allowThumbsFallbackDeriveFromX5c:Z

.field private crv:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private keyOps:Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;

.field private kid:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private kty:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private use:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private x5t:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private x5tS256:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 30
    sput-object v0, Lorg/jose4j/jwk/SimpleJwkFilter;->EMPTY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jose4j/jwk/JsonWebKey;

    .line 92
    iget-object v2, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->kid:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    invoke-virtual {v1}, Lorg/jose4j/jwk/JsonWebKey;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v2

    .line 93
    iget-object v3, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->kty:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    invoke-virtual {v1}, Lorg/jose4j/jwk/JsonWebKey;->getKeyType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 94
    iget-object v3, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->use:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    invoke-virtual {v1}, Lorg/jose4j/jwk/JsonWebKey;->getUse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 95
    iget-object v3, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->alg:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    invoke-virtual {v1}, Lorg/jose4j/jwk/JsonWebKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 96
    iget-boolean v3, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->allowThumbsFallbackDeriveFromX5c:Z

    invoke-virtual {p0, v1, v3}, Lorg/jose4j/jwk/SimpleJwkFilter;->getThumbs(Lorg/jose4j/jwk/JsonWebKey;Z)[Ljava/lang/String;

    move-result-object v3

    .line 97
    iget-object v4, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->x5t:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v5, 0x0

    aget-object v6, v3, v5

    invoke-virtual {p0, v4, v6}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 98
    iget-object v4, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->x5tS256:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-virtual {p0, v4, v3}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 99
    iget-object v3, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->crv:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    invoke-virtual {p0, v1}, Lorg/jose4j/jwk/SimpleJwkFilter;->getCrv(Lorg/jose4j/jwk/JsonWebKey;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 100
    iget-object v3, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->keyOps:Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lorg/jose4j/jwk/JsonWebKey;->getKeyOps()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;->meetsCriteria(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method getCrv(Lorg/jose4j/jwk/JsonWebKey;)Ljava/lang/String;
    .locals 1

    .line 117
    instance-of v0, p1, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    invoke-virtual {p1}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getCurveName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getThumbs(Lorg/jose4j/jwk/JsonWebKey;Z)[Ljava/lang/String;
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->x5t:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->x5tS256:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    if-nez v0, :cond_0

    .line 124
    sget-object p1, Lorg/jose4j/jwk/SimpleJwkFilter;->EMPTY:[Ljava/lang/String;

    return-object p1

    .line 127
    :cond_0
    instance-of v0, p1, Lorg/jose4j/jwk/PublicJsonWebKey;

    if-eqz v0, :cond_1

    .line 129
    check-cast p1, Lorg/jose4j/jwk/PublicJsonWebKey;

    .line 130
    invoke-virtual {p1, p2}, Lorg/jose4j/jwk/PublicJsonWebKey;->getX509CertificateSha1Thumbprint(Z)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p1, p2}, Lorg/jose4j/jwk/PublicJsonWebKey;->getX509CertificateSha256Thumbprint(Z)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    return-object p2

    .line 137
    :cond_1
    sget-object p1, Lorg/jose4j/jwk/SimpleJwkFilter;->EMPTY:[Ljava/lang/String;

    return-object p1
.end method

.method isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1, p2}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;->meetsCriteria(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setAlg(Ljava/lang/String;Z)V
    .locals 2

    .line 64
    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->alg:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method

.method public setAllowFallbackDeriveFromX5cForX5Thumbs(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->allowThumbsFallbackDeriveFromX5c:Z

    return-void
.end method

.method public setCrv(Ljava/lang/String;Z)V
    .locals 2

    .line 84
    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->crv:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method

.method public setKeyOperations([Ljava/lang/String;Z)V
    .locals 2

    .line 59
    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;-><init>([Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->keyOps:Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;

    return-void
.end method

.method public setKid(Ljava/lang/String;Z)V
    .locals 2

    .line 44
    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->kid:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method

.method public setKty(Ljava/lang/String;)V
    .locals 3

    .line 49
    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->kty:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method

.method public setUse(Ljava/lang/String;Z)V
    .locals 2

    .line 54
    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->use:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method

.method public setX5t(Ljava/lang/String;Z)V
    .locals 2

    .line 69
    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->x5t:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method

.method public setX5tS256(Ljava/lang/String;Z)V
    .locals 2

    .line 74
    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->x5tS256:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method
