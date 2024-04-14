.class public Lorg/jose4j/jwt/JwtClaims;
.super Ljava/lang/Object;
.source "JwtClaims.java"


# instance fields
.field private claimsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private rawJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/JwtContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/jose4j/jwt/JwtClaims;->rawJson:Ljava/lang/String;

    .line 49
    :try_start_0
    invoke-static {p1}, Lorg/jose4j/json/JsonUtil;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;
    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse what was expected to be the JWT Claim Set JSON: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    new-instance v1, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 v2, 0x10

    const-string v3, "Invalid JSON."

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    .line 56
    new-instance v2, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    invoke-direct {v2, p1, v1, v0, p2}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;Ljava/lang/Throwable;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v2
.end method

.method private classCastMsg(Ljava/lang/ClassCastException;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 396
    instance-of p2, p3, Ljava/util/List;

    if-eqz p2, :cond_4

    .line 398
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 399
    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 401
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 403
    check-cast v0, Ljava/util/Map;

    .line 404
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 406
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v2, v1, p4}, Lorg/jose4j/jwt/JwtClaims;->dfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_2

    .line 411
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 414
    :cond_3
    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 416
    :cond_4
    instance-of p2, p3, Ljava/util/Map;

    if-eqz p2, :cond_5

    .line 418
    check-cast p3, Ljava/util/Map;

    .line 419
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 421
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/jose4j/jwt/JwtClaims;->dfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_3

    .line 426
    :cond_5
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_4
    return-void
.end method

.method private offsetFromNow(F)Lorg/jose4j/jwt/NumericDate;
    .locals 3

    .line 184
    invoke-static {}, Lorg/jose4j/jwt/NumericDate;->now()Lorg/jose4j/jwt/NumericDate;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    mul-float p1, p1, v1

    float-to-long v1, p1

    .line 186
    invoke-virtual {v0, v1, v2}, Lorg/jose4j/jwt/NumericDate;->addSeconds(J)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/jose4j/jwt/JwtClaims;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/jose4j/jwt/JwtClaims;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jose4j/jwt/JwtClaims;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/JwtContext;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/JwtClaims;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/jose4j/jwt/JwtClaims;

    invoke-direct {v0, p0, p1}, Lorg/jose4j/jwt/JwtClaims;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/JwtContext;)V

    return-object v0
.end method

.method private toStringList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 152
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 157
    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    new-instance v0, Lorg/jose4j/jwt/MalformedClaimException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The array value of the \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' claim contains non string values "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v1}, Lorg/jose4j/jwt/JwtClaims;->classCastMsg(Ljava/lang/ClassCastException;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/jose4j/jwt/MalformedClaimException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public flattenClaims()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0, v0}, Lorg/jose4j/jwt/JwtClaims;->flattenClaims(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public flattenClaims(Ljava/util/Set;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 380
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    .line 381
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 382
    iget-object v1, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 384
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 385
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 387
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v4, v3, v2, v0}, Lorg/jose4j/jwt/JwtClaims;->dfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAudience()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    const-string v1, "aud"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 134
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    instance-of v2, v0, Ljava/util/List;

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    new-instance v0, Lorg/jose4j/jwt/MalformedClaimException;

    const-string v1, "The value of the \'aud\' claim is not an array of strings or a single string value."

    invoke-direct {v0, v1}, Lorg/jose4j/jwt/MalformedClaimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_2
    :goto_0
    check-cast v0, Ljava/util/List;

    .line 140
    invoke-direct {p0, v0, v1}, Lorg/jose4j/jwt/JwtClaims;->toStringList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClaimNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 455
    invoke-virtual {p0, v0}, Lorg/jose4j/jwt/JwtClaims;->getClaimNames(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getClaimNames(Ljava/util/Set;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 450
    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/JwtClaims;->getClaimsMap(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getClaimValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 252
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 256
    new-instance v1, Lorg/jose4j/jwt/MalformedClaimException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value of the \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' claim is not the expected type "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v0}, Lorg/jose4j/jwt/JwtClaims;->classCastMsg(Ljava/lang/ClassCastException;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lorg/jose4j/jwt/MalformedClaimException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getClaimValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getClaimsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0, v0}, Lorg/jose4j/jwt/JwtClaims;->getClaimsMap(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getClaimsMap(Ljava/util/Set;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    .line 434
    :goto_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 435
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 437
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getExpirationTime()Lorg/jose4j/jwt/NumericDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    const-string v0, "exp"

    .line 169
    invoke-virtual {p0, v0}, Lorg/jose4j/jwt/JwtClaims;->getNumericDateClaimValue(Ljava/lang/String;)Lorg/jose4j/jwt/NumericDate;

    move-result-object v0

    return-object v0
.end method

.method public getIssuedAt()Lorg/jose4j/jwt/NumericDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    const-string v0, "iat"

    .line 207
    invoke-virtual {p0, v0}, Lorg/jose4j/jwt/JwtClaims;->getNumericDateClaimValue(Ljava/lang/String;)Lorg/jose4j/jwt/NumericDate;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .line 72
    const-class v0, Ljava/lang/String;

    const-string v1, "iss"

    invoke-virtual {p0, v1, v0}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getJwtId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .line 222
    const-class v0, Ljava/lang/String;

    const-string v1, "jti"

    invoke-virtual {p0, v1, v0}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNotBefore()Lorg/jose4j/jwt/NumericDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    const-string v0, "nbf"

    .line 192
    invoke-virtual {p0, v0}, Lorg/jose4j/jwt/JwtClaims;->getNumericDateClaimValue(Ljava/lang/String;)Lorg/jose4j/jwt/NumericDate;

    move-result-object v0

    return-object v0
.end method

.method public getNumericDateClaimValue(Ljava/lang/String;)Lorg/jose4j/jwt/NumericDate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .line 277
    const-class v0, Ljava/lang/Number;

    invoke-virtual {p0, p1, v0}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 278
    instance-of v0, p1, Ljava/math/BigInteger;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jose4j/jwt/NumericDate;->fromSeconds(J)Lorg/jose4j/jwt/NumericDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 280
    :cond_1
    new-instance v0, Lorg/jose4j/jwt/MalformedClaimException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is unreasonable for a NumericDate"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jose4j/jwt/MalformedClaimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRawJson()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->rawJson:Ljava/lang/String;

    return-object v0
.end method

.method public getStringClaimValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .line 287
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStringListClaimValue(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .line 310
    const-class v0, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 311
    invoke-direct {p0, v0, p1}, Lorg/jose4j/jwt/JwtClaims;->toStringList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .line 82
    const-class v0, Ljava/lang/String;

    const-string v1, "sub"

    invoke-virtual {p0, v1, v0}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasAudience()Z
    .locals 1

    const-string v0, "aud"

    .line 118
    invoke-virtual {p0, v0}, Lorg/jose4j/jwt/JwtClaims;->hasClaim(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasClaim(Ljava/lang/String;)Z
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isClaimValueOfType(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1

    const/4 v0, 0x0

    .line 343
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jose4j/jwt/JwtClaims;->getClaimValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/jose4j/jwt/MalformedClaimException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public isClaimValueString(Ljava/lang/String;)Z
    .locals 1

    .line 353
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jose4j/jwt/JwtClaims;->isClaimValueOfType(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isClaimValueStringList(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 365
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/JwtClaims;->hasClaim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/JwtClaims;->getStringListClaimValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lorg/jose4j/jwt/MalformedClaimException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public setAudience(Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    const-string v1, "aud"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAudience(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 104
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/JwtClaims;->setAudience(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    const-string v1, "aud"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public varargs setAudience([Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/JwtClaims;->setAudience(Ljava/util/List;)V

    return-void
.end method

.method public setClaim(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExpirationTime(Lorg/jose4j/jwt/NumericDate;)V
    .locals 1

    const-string v0, "exp"

    .line 174
    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwt/JwtClaims;->setNumericDateClaim(Ljava/lang/String;Lorg/jose4j/jwt/NumericDate;)V

    return-void
.end method

.method public setExpirationTimeMinutesInTheFuture(F)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lorg/jose4j/jwt/JwtClaims;->offsetFromNow(F)Lorg/jose4j/jwt/NumericDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/JwtClaims;->setExpirationTime(Lorg/jose4j/jwt/NumericDate;)V

    return-void
.end method

.method public setGeneratedJwtId()V
    .locals 1

    const/16 v0, 0x10

    .line 239
    invoke-virtual {p0, v0}, Lorg/jose4j/jwt/JwtClaims;->setGeneratedJwtId(I)V

    return-void
.end method

.method public setGeneratedJwtId(I)V
    .locals 0

    .line 232
    invoke-static {p1}, Lorg/jose4j/lang/ByteUtil;->randomBytes(I)[B

    move-result-object p1

    .line 233
    invoke-static {p1}, Lorg/jose4j/base64url/Base64Url;->encode([B)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/JwtClaims;->setJwtId(Ljava/lang/String;)V

    return-void
.end method

.method public setIssuedAt(Lorg/jose4j/jwt/NumericDate;)V
    .locals 1

    const-string v0, "iat"

    .line 212
    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwt/JwtClaims;->setNumericDateClaim(Ljava/lang/String;Lorg/jose4j/jwt/NumericDate;)V

    return-void
.end method

.method public setIssuedAtToNow()V
    .locals 1

    .line 217
    invoke-static {}, Lorg/jose4j/jwt/NumericDate;->now()Lorg/jose4j/jwt/NumericDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwt/JwtClaims;->setIssuedAt(Lorg/jose4j/jwt/NumericDate;)V

    return-void
.end method

.method public setIssuer(Ljava/lang/String;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    const-string v1, "iss"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setJwtId(Ljava/lang/String;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    const-string v1, "jti"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNotBefore(Lorg/jose4j/jwt/NumericDate;)V
    .locals 1

    const-string v0, "nbf"

    .line 197
    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwt/JwtClaims;->setNumericDateClaim(Ljava/lang/String;Lorg/jose4j/jwt/NumericDate;)V

    return-void
.end method

.method public setNotBeforeMinutesInThePast(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    mul-float p1, p1, v0

    .line 202
    invoke-direct {p0, p1}, Lorg/jose4j/jwt/JwtClaims;->offsetFromNow(F)Lorg/jose4j/jwt/NumericDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/JwtClaims;->setNotBefore(Lorg/jose4j/jwt/NumericDate;)V

    return-void
.end method

.method public setNumericDateClaim(Ljava/lang/String;Lorg/jose4j/jwt/NumericDate;)V
    .locals 3

    .line 316
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStringClaim(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStringListClaim(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs setStringListClaim(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    const-string v1, "sub"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-static {v0}, Lorg/jose4j/json/JsonUtil;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JWT Claims Set:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsetClaim(Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/jose4j/jwt/JwtClaims;->claimsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
