.class public Lorg/jose4j/jwt/consumer/JtiValidator;
.super Ljava/lang/Object;
.source "JtiValidator.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# static fields
.field private static final MISSING_JTI:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;


# instance fields
.field private requireJti:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 v1, 0xd

    const-string v2, "The JWT ID (jti) claim is not present."

    invoke-direct {v0, v1, v2}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwt/consumer/JtiValidator;->MISSING_JTI:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/JtiValidator;->requireJti:Z

    return-void
.end method


# virtual methods
.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jose4j/jwt/JwtClaims;->getJwtId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 39
    iget-boolean p1, p0, Lorg/jose4j/jwt/consumer/JtiValidator;->requireJti:Z

    if-eqz p1, :cond_0

    sget-object p1, Lorg/jose4j/jwt/consumer/JtiValidator;->MISSING_JTI:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
