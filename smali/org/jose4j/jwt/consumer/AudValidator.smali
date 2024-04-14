.class public Lorg/jose4j/jwt/consumer/AudValidator;
.super Ljava/lang/Object;
.source "AudValidator.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# static fields
.field private static final MISSING_AUD:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;


# instance fields
.field private acceptableAudiences:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requireAudience:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/4 v1, 0x7

    const-string v2, "No Audience (aud) claim present."

    invoke-direct {v0, v1, v2}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwt/consumer/AudValidator;->MISSING_AUD:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/AudValidator;->acceptableAudiences:Ljava/util/Set;

    .line 38
    iput-boolean p2, p0, Lorg/jose4j/jwt/consumer/AudValidator;->requireAudience:Z

    return-void
.end method


# virtual methods
.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lorg/jose4j/jwt/JwtClaims;->hasAudience()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 48
    iget-boolean p1, p0, Lorg/jose4j/jwt/consumer/AudValidator;->requireAudience:Z

    if-eqz p1, :cond_0

    sget-object v1, Lorg/jose4j/jwt/consumer/AudValidator;->MISSING_AUD:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    :cond_0
    return-object v1

    .line 51
    :cond_1
    invoke-virtual {p1}, Lorg/jose4j/jwt/JwtClaims;->getAudience()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    iget-object v5, p0, Lorg/jose4j/jwt/consumer/AudValidator;->acceptableAudiences:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_6

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audience (aud) claim "

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    iget-object p1, p0, Lorg/jose4j/jwt/consumer/AudValidator;->acceptableAudiences:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, " present in the JWT but no expected audience value(s) were provided to the JWT Consumer."

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string p1, " doesn\'t contain an acceptable identifier."

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string p1, " Expected "

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object p1, p0, Lorg/jose4j/jwt/consumer/AudValidator;->acceptableAudiences:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v4, :cond_5

    .line 77
    iget-object p1, p0, Lorg/jose4j/jwt/consumer/AudValidator;->acceptableAudiences:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string p1, "one of "

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jose4j/jwt/consumer/AudValidator;->acceptableAudiences:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    const-string p1, " as an aud value."

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance p1, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_6
    return-object v1
.end method
