.class public Lorg/jose4j/jwt/consumer/SubValidator;
.super Ljava/lang/Object;
.source "SubValidator.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# static fields
.field private static final MISSING_SUB:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;


# instance fields
.field private expectedSubject:Ljava/lang/String;

.field private requireSubject:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 v1, 0xe

    const-string v2, "No Subject (sub) claim is present."

    invoke-direct {v0, v1, v2}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwt/consumer/SubValidator;->MISSING_SUB:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0}, Lorg/jose4j/jwt/consumer/SubValidator;-><init>(Z)V

    .line 40
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/SubValidator;->expectedSubject:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/SubValidator;->requireSubject:Z

    return-void
.end method


# virtual methods
.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lorg/jose4j/jwt/JwtClaims;->getSubject()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 48
    iget-boolean v0, p0, Lorg/jose4j/jwt/consumer/SubValidator;->requireSubject:Z

    if-eqz v0, :cond_0

    .line 50
    sget-object p1, Lorg/jose4j/jwt/consumer/SubValidator;->MISSING_SUB:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    return-object p1

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/SubValidator;->expectedSubject:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subject (sub) claim value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") doesn\'t match expected value of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jose4j/jwt/consumer/SubValidator;->expectedSubject:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
