.class public Lorg/jose4j/jwk/HttpsJwks;
.super Ljava/lang/Object;
.source "HttpsJwks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwk/HttpsJwks$Cache;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private volatile cache:Lorg/jose4j/jwk/HttpsJwks$Cache;

.field private volatile defaultCacheDuration:J

.field private final location:Ljava/lang/String;

.field private final refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private refreshReprieveThreshold:J

.field private volatile retainCacheOnErrorDurationMills:J

.field private volatile simpleHttpGet:Lorg/jose4j/http/SimpleGet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/jose4j/jwk/HttpsJwks;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwk/HttpsJwks;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xe10

    .line 49
    iput-wide v0, p0, Lorg/jose4j/jwk/HttpsJwks;->defaultCacheDuration:J

    .line 50
    new-instance v0, Lorg/jose4j/http/Get;

    invoke-direct {v0}, Lorg/jose4j/http/Get;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwk/HttpsJwks;->simpleHttpGet:Lorg/jose4j/http/SimpleGet;

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lorg/jose4j/jwk/HttpsJwks;->retainCacheOnErrorDurationMills:J

    .line 53
    new-instance v2, Lorg/jose4j/jwk/HttpsJwks$Cache;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v1, v4}, Lorg/jose4j/jwk/HttpsJwks$Cache;-><init>(Ljava/util/List;JLorg/jose4j/jwk/HttpsJwks$1;)V

    iput-object v2, p0, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;

    .line 56
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x12c

    .line 58
    iput-wide v0, p0, Lorg/jose4j/jwk/HttpsJwks;->refreshReprieveThreshold:J

    .line 66
    iput-object p1, p0, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    return-void
.end method

.method static getCacheLife(Lorg/jose4j/http/SimpleResponse;)J
    .locals 2

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/jose4j/jwk/HttpsJwks;->getCacheLife(Lorg/jose4j/http/SimpleResponse;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getCacheLife(Lorg/jose4j/http/SimpleResponse;J)J
    .locals 4

    .line 265
    invoke-static {p0}, Lorg/jose4j/jwk/HttpsJwks;->getExpires(Lorg/jose4j/http/SimpleResponse;)J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    .line 266
    div-long/2addr v0, p1

    const-string p1, "cache-control"

    .line 269
    invoke-static {p0, p1}, Lorg/jose4j/jwk/HttpsJwks;->getHeaderValues(Lorg/jose4j/http/SimpleResponse;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 270
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    goto :goto_1

    .line 275
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string p2, "max-age"

    .line 276
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/16 v2, 0x2c

    .line 277
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 279
    :cond_1
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3d

    .line 280
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_0

    :cond_2
    :goto_2
    return-wide v0
.end method

.method static getDateHeaderValue(Lorg/jose4j/http/SimpleResponse;Ljava/lang/String;J)J
    .locals 1

    .line 226
    invoke-static {p0, p1}, Lorg/jose4j/jwk/HttpsJwks;->getHeaderValues(Lorg/jose4j/http/SimpleResponse;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 227
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    const-string v0, "GMT"

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " GMT"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    :cond_0
    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-wide p2
.end method

.method static getExpires(Lorg/jose4j/http/SimpleResponse;)J
    .locals 3

    const-string v0, "expires"

    const-wide/16 v1, 0x0

    .line 254
    invoke-static {p0, v0, v1, v2}, Lorg/jose4j/jwk/HttpsJwks;->getDateHeaderValue(Lorg/jose4j/http/SimpleResponse;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getHeaderValues(Lorg/jose4j/http/SimpleResponse;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/http/SimpleResponse;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-interface {p0, p1}, Lorg/jose4j/http/SimpleResponse;->getHeaderValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getJsonWebKeys()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 140
    iget-object v2, p0, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;

    .line 141
    invoke-static {v2}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$100(Lorg/jose4j/jwk/HttpsJwks$Cache;)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    .line 144
    invoke-static {v2}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    iget-object v3, p0, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    invoke-static {v2}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    invoke-static {v2}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 155
    :cond_1
    iget-object v3, p0, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 161
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/jose4j/jwk/HttpsJwks;->refresh()V

    .line 162
    iget-object v0, p0, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v1, p0, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 166
    :try_start_1
    iget-wide v4, p0, Lorg/jose4j/jwk/HttpsJwks;->retainCacheOnErrorDurationMills:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    invoke-static {v2}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 168
    new-instance v4, Lorg/jose4j/jwk/HttpsJwks$Cache;

    invoke-static {v2}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v2

    iget-wide v5, p0, Lorg/jose4j/jwk/HttpsJwks;->retainCacheOnErrorDurationMills:J

    add-long/2addr v0, v5

    const/4 v5, 0x0

    invoke-direct {v4, v2, v0, v1, v5}, Lorg/jose4j/jwk/HttpsJwks$Cache;-><init>(Ljava/util/List;JLorg/jose4j/jwk/HttpsJwks$1;)V

    iput-object v4, p0, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;

    .line 169
    sget-object v0, Lorg/jose4j/jwk/HttpsJwks;->log:Lorg/slf4j/Logger;

    const-string v1, "Because of {} unable to refresh JWKS content from {} so will continue to use cached keys for more {} seconds until about {} -> {}"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCauses(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v5, p0, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x2

    iget-wide v5, p0, Lorg/jose4j/jwk/HttpsJwks;->retainCacheOnErrorDurationMills:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    new-instance v5, Ljava/util/Date;

    invoke-static {v4}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$100(Lorg/jose4j/jwk/HttpsJwks$Cache;)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v5, v2, v3

    const/4 v3, 0x4

    invoke-static {v4}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    iget-object v0, p0, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v0, v4

    .line 180
    :goto_0
    invoke-static {v0}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 173
    :cond_3
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :goto_1
    iget-object v1, p0, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    return-object v0
.end method

.method public refresh()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 195
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;

    invoke-static {v2}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$300(Lorg/jose4j/jwk/HttpsJwks$Cache;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 197
    iget-wide v2, p0, Lorg/jose4j/jwk/HttpsJwks;->refreshReprieveThreshold:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v2, p0, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;

    invoke-static {v2}, Lorg/jose4j/jwk/HttpsJwks$Cache;->access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    sget-object v2, Lorg/jose4j/jwk/HttpsJwks;->log:Lorg/slf4j/Logger;

    const-string v3, "NOT refreshing/loading JWKS from {} because it just happened {} mills ago"

    iget-object v4, p0, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    :cond_0
    sget-object v0, Lorg/jose4j/jwk/HttpsJwks;->log:Lorg/slf4j/Logger;

    const-string v1, "Refreshing/loading JWKS from {}"

    iget-object v2, p0, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lorg/jose4j/jwk/HttpsJwks;->simpleHttpGet:Lorg/jose4j/http/SimpleGet;

    iget-object v2, p0, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/jose4j/http/SimpleGet;->get(Ljava/lang/String;)Lorg/jose4j/http/SimpleResponse;

    move-result-object v1

    .line 205
    new-instance v2, Lorg/jose4j/jwk/JsonWebKeySet;

    invoke-interface {v1}, Lorg/jose4j/http/SimpleResponse;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jose4j/jwk/JsonWebKeySet;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Lorg/jose4j/jwk/JsonWebKeySet;->getJsonWebKeys()Ljava/util/List;

    move-result-object v2

    .line 207
    invoke-static {v1}, Lorg/jose4j/jwk/HttpsJwks;->getCacheLife(Lorg/jose4j/http/SimpleResponse;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    const-string v1, "Will use default cache duration of {} seconds for content from {}"

    .line 210
    iget-wide v3, p0, Lorg/jose4j/jwk/HttpsJwks;->defaultCacheDuration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    iget-wide v3, p0, Lorg/jose4j/jwk/HttpsJwks;->defaultCacheDuration:J

    .line 213
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v7, v7, v3

    add-long/2addr v5, v7

    const-string v1, "Updated JWKS content from {} will be cached for {} seconds until about {} -> {}"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 214
    iget-object v9, p0, Lorg/jose4j/jwk/HttpsJwks;->location:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v7, v3

    const/4 v3, 0x3

    aput-object v2, v7, v3

    invoke-interface {v0, v1, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    new-instance v0, Lorg/jose4j/jwk/HttpsJwks$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v5, v6, v1}, Lorg/jose4j/jwk/HttpsJwks$Cache;-><init>(Ljava/util/List;JLorg/jose4j/jwk/HttpsJwks$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/HttpsJwks;->cache:Lorg/jose4j/jwk/HttpsJwks$Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_0
    iget-object v0, p0, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jose4j/jwk/HttpsJwks;->refreshLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setDefaultCacheDuration(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lorg/jose4j/jwk/HttpsJwks;->defaultCacheDuration:J

    return-void
.end method

.method public setRefreshReprieveThreshold(J)V
    .locals 0

    .line 128
    iput-wide p1, p0, Lorg/jose4j/jwk/HttpsJwks;->refreshReprieveThreshold:J

    return-void
.end method

.method public setRetainCacheOnErrorDuration(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 95
    iput-wide p1, p0, Lorg/jose4j/jwk/HttpsJwks;->retainCacheOnErrorDurationMills:J

    return-void
.end method

.method public setSimpleHttpGet(Lorg/jose4j/http/SimpleGet;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/jose4j/jwk/HttpsJwks;->simpleHttpGet:Lorg/jose4j/http/SimpleGet;

    return-void
.end method
