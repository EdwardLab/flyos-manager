.class public Lorg/jose4j/jwt/ReservedClaimNames;
.super Ljava/lang/Object;
.source "ReservedClaimNames.java"


# static fields
.field public static final AUDIENCE:Ljava/lang/String; = "aud"

.field public static final EXPIRATION_TIME:Ljava/lang/String; = "exp"

.field public static final INITIAL_REGISTERED_CLAIM_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISSUED_AT:Ljava/lang/String; = "iat"

.field public static final ISSUER:Ljava/lang/String; = "iss"

.field public static final JWT_ID:Ljava/lang/String; = "jti"

.field public static final NOT_BEFORE:Ljava/lang/String; = "nbf"

.field public static final SUBJECT:Ljava/lang/String; = "sub"

.field public static final TYPE:Ljava/lang/String; = "typ"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 36
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "iss"

    const-string v2, "sub"

    const-string v3, "aud"

    const-string v4, "exp"

    const-string v5, "nbf"

    const-string v6, "iat"

    const-string v7, "jti"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwt/ReservedClaimNames;->INITIAL_REGISTERED_CLAIM_NAMES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
