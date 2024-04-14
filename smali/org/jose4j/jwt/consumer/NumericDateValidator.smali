.class public Lorg/jose4j/jwt/consumer/NumericDateValidator;
.super Ljava/lang/Object;
.source "NumericDateValidator.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# static fields
.field private static final MISSING_EXP:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

.field private static final MISSING_IAT:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

.field private static final MISSING_NBF:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;


# instance fields
.field private allowedClockSkewSeconds:I

.field private iatAllowedSecondsInTheFuture:Ljava/lang/Integer;

.field private iatAllowedSecondsInThePast:Ljava/lang/Integer;

.field private maxFutureValidityInMinutes:I

.field private requireExp:Z

.field private requireIat:Z

.field private requireNbf:Z

.field private staticEvaluationTime:Lorg/jose4j/jwt/NumericDate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/4 v1, 0x2

    const-string v2, "No Expiration Time (exp) claim present."

    invoke-direct {v0, v1, v2}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->MISSING_EXP:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    .line 33
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/4 v1, 0x3

    const-string v2, "No Issued At (iat) claim present."

    invoke-direct {v0, v1, v2}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->MISSING_IAT:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    .line 34
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/4 v1, 0x4

    const-string v2, "No Not Before (nbf) claim present."

    invoke-direct {v0, v1, v2}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->MISSING_NBF:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    .line 41
    iput v0, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->maxFutureValidityInMinutes:I

    return-void
.end method

.method private skewMessage()Ljava/lang/String;
    .locals 2

    .line 170
    iget v0, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    if-lez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (even when providing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds of leeway to account for clock skew)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "."

    return-object v0
.end method


# virtual methods
.method public setAllowedClockSkewSeconds(I)V
    .locals 0

    .line 68
    iput p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    return-void
.end method

.method public setEvaluationTime(Lorg/jose4j/jwt/NumericDate;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->staticEvaluationTime:Lorg/jose4j/jwt/NumericDate;

    return-void
.end method

.method public setIatAllowedSecondsInTheFuture(I)V
    .locals 0

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInTheFuture:Ljava/lang/Integer;

    return-void
.end method

.method public setIatAllowedSecondsInThePast(I)V
    .locals 0

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInThePast:Ljava/lang/Integer;

    return-void
.end method

.method public setMaxFutureValidityInMinutes(I)V
    .locals 0

    .line 73
    iput p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->maxFutureValidityInMinutes:I

    return-void
.end method

.method public setRequireExp(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->requireExp:Z

    return-void
.end method

.method public setRequireIat(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->requireIat:Z

    return-void
.end method

.method public setRequireNbf(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->requireNbf:Z

    return-void
.end method

.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lorg/jose4j/jwt/JwtClaims;->getExpirationTime()Lorg/jose4j/jwt/NumericDate;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lorg/jose4j/jwt/JwtClaims;->getIssuedAt()Lorg/jose4j/jwt/NumericDate;

    move-result-object v1

    .line 92
    invoke-virtual {p1}, Lorg/jose4j/jwt/JwtClaims;->getNotBefore()Lorg/jose4j/jwt/NumericDate;

    move-result-object p1

    .line 94
    iget-boolean v2, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->requireExp:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 96
    sget-object p1, Lorg/jose4j/jwt/consumer/NumericDateValidator;->MISSING_EXP:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    return-object p1

    .line 99
    :cond_0
    iget-boolean v2, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->requireIat:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 101
    sget-object p1, Lorg/jose4j/jwt/consumer/NumericDateValidator;->MISSING_IAT:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    return-object p1

    .line 104
    :cond_1
    iget-boolean v2, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->requireNbf:Z

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 106
    sget-object p1, Lorg/jose4j/jwt/consumer/NumericDateValidator;->MISSING_NBF:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    return-object p1

    .line 109
    :cond_2
    iget-object v2, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->staticEvaluationTime:Lorg/jose4j/jwt/NumericDate;

    if-nez v2, :cond_3

    invoke-static {}, Lorg/jose4j/jwt/NumericDate;->now()Lorg/jose4j/jwt/NumericDate;

    move-result-object v2

    :cond_3
    if-eqz v0, :cond_7

    .line 113
    invoke-virtual {v2}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v3

    iget v5, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_4

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The JWT is no longer valid - the evaluation time "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is on or after the Expiration Time (exp="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") claim value"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->skewMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_4
    const-string v3, ") claim value."

    const/16 v4, 0x11

    const-string v5, "The Expiration Time (exp="

    if-eqz v1, :cond_5

    .line 119
    invoke-virtual {v0, v1}, Lorg/jose4j/jwt/NumericDate;->isBefore(Lorg/jose4j/jwt/NumericDate;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 121
    new-instance p1, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") claim value cannot be before the Issued At (iat="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_5
    if-eqz p1, :cond_6

    .line 124
    invoke-virtual {v0, p1}, Lorg/jose4j/jwt/NumericDate;->isBefore(Lorg/jose4j/jwt/NumericDate;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 126
    new-instance v1, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") claim value cannot be before the Not Before (nbf="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v4, p1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 129
    :cond_6
    iget v3, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->maxFutureValidityInMinutes:I

    if-lez v3, :cond_7

    .line 131
    invoke-virtual {v0}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v3

    iget v6, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    int-to-long v6, v6

    invoke-static {v3, v4, v6, v7}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v3

    .line 132
    iget v6, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->maxFutureValidityInMinutes:I

    int-to-long v6, v6

    const-wide/16 v8, 0x3c

    mul-long v6, v6, v8

    cmp-long v8, v3, v6

    if-lez v8, :cond_7

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") claim value cannot be more than "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->maxFutureValidityInMinutes:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " minutes in the future relative to the evaluation time "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->skewMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_7
    if-eqz p1, :cond_8

    .line 143
    invoke-virtual {v2}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v3

    iget v0, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    int-to-long v5, v0

    invoke-static {v3, v4, v5, v6}, Lorg/jose4j/lang/Maths;->add(JJ)J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_8

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The JWT is not yet valid as the evaluation time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is before the Not Before (nbf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") claim time"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->skewMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_8
    if-eqz v1, :cond_a

    .line 152
    iget-object p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInTheFuture:Ljava/lang/Integer;

    const-string v0, " is more than "

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v3

    iget p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    int-to-long v5, p1

    invoke-static {v3, v4, v5, v6}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v3

    iget-object p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInTheFuture:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-lez p1, :cond_9

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iat "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInTheFuture:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " second(s) ahead of now "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->skewMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 158
    :cond_9
    iget-object p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInThePast:Ljava/lang/Integer;

    if-eqz p1, :cond_a

    invoke-virtual {v2}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v3

    invoke-virtual {v1}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v3

    iget p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->allowedClockSkewSeconds:I

    int-to-long v5, p1

    invoke-static {v3, v4, v5, v6}, Lorg/jose4j/lang/Maths;->subtract(JJ)J

    move-result-wide v3

    iget-object p1, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInThePast:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-lez p1, :cond_a

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "As of now "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " iat "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jose4j/jwt/consumer/NumericDateValidator;->iatAllowedSecondsInThePast:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " second(s) in the past"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->skewMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method
