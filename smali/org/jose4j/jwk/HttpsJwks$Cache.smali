.class Lorg/jose4j/jwk/HttpsJwks$Cache;
.super Ljava/lang/Object;
.source "HttpsJwks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwk/HttpsJwks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private final created:J

.field private final exp:J

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;J)V"
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jose4j/jwk/HttpsJwks$Cache;->created:J

    .line 303
    iput-object p1, p0, Lorg/jose4j/jwk/HttpsJwks$Cache;->keys:Ljava/util/List;

    .line 304
    iput-wide p2, p0, Lorg/jose4j/jwk/HttpsJwks$Cache;->exp:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;JLorg/jose4j/jwk/HttpsJwks$1;)V
    .locals 0

    .line 295
    invoke-direct {p0, p1, p2, p3}, Lorg/jose4j/jwk/HttpsJwks$Cache;-><init>(Ljava/util/List;J)V

    return-void
.end method

.method static synthetic access$100(Lorg/jose4j/jwk/HttpsJwks$Cache;)J
    .locals 2

    .line 295
    iget-wide v0, p0, Lorg/jose4j/jwk/HttpsJwks$Cache;->exp:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;
    .locals 0

    .line 295
    iget-object p0, p0, Lorg/jose4j/jwk/HttpsJwks$Cache;->keys:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lorg/jose4j/jwk/HttpsJwks$Cache;)J
    .locals 2

    .line 295
    iget-wide v0, p0, Lorg/jose4j/jwk/HttpsJwks$Cache;->created:J

    return-wide v0
.end method
