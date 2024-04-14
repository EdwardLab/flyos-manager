.class public Lorg/jose4j/jwt/consumer/JwtContext;
.super Ljava/lang/Object;
.source "JwtContext.java"


# instance fields
.field private joseObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;"
        }
    .end annotation
.end field

.field private jwt:Ljava/lang/String;

.field private jwtClaims:Lorg/jose4j/jwt/JwtClaims;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jose4j/jwt/JwtClaims;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jose4j/jwt/JwtClaims;",
            "Ljava/util/List<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtContext;->jwt:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lorg/jose4j/jwt/consumer/JwtContext;->jwtClaims:Lorg/jose4j/jwt/JwtClaims;

    .line 43
    iput-object p3, p0, Lorg/jose4j/jwt/consumer/JwtContext;->joseObjects:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/jose4j/jwt/JwtClaims;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jwt/JwtClaims;",
            "Ljava/util/List<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtContext;->jwtClaims:Lorg/jose4j/jwt/JwtClaims;

    .line 36
    iput-object p2, p0, Lorg/jose4j/jwt/consumer/JwtContext;->joseObjects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getJoseObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtContext;->joseObjects:Ljava/util/List;

    return-object v0
.end method

.method public getJwt()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtContext;->jwt:Ljava/lang/String;

    return-object v0
.end method

.method public getJwtClaims()Lorg/jose4j/jwt/JwtClaims;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtContext;->jwtClaims:Lorg/jose4j/jwt/JwtClaims;

    return-object v0
.end method

.method setJwtClaims(Lorg/jose4j/jwt/JwtClaims;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtContext;->jwtClaims:Lorg/jose4j/jwt/JwtClaims;

    return-void
.end method
