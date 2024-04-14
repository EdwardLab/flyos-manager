.class public abstract Lgnu/math/RatNum;
.super Lgnu/math/RealNum;
.source "RatNum.java"


# static fields
.field public static final ten_exp_9:Lgnu/math/IntNum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3b9aca00

    .line 27
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/math/RatNum;->ten_exp_9:Lgnu/math/IntNum;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;
    .locals 3

    .line 108
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object p0

    .line 110
    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    .line 111
    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object p1

    .line 112
    invoke-static {p0, p1}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-static {v0, v1, p2}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p1

    invoke-static {p1, p0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0

    .line 114
    :cond_0
    invoke-static {p1, v0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {v1, p0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p2

    invoke-static {p0, p1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    invoke-static {p2, p0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0
.end method

.method public static asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;
    .locals 1

    .line 59
    instance-of v0, p0, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Lgnu/math/RatNum;

    return-object p0

    .line 61
    :cond_0
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_1

    .line 62
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lgnu/math/RatNum;->valueOf(Ljava/math/BigDecimal;)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0

    .line 63
    :cond_1
    invoke-static {p0}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I
    .locals 2

    .line 87
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object p1

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object p0

    invoke-static {p1, p0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    invoke-static {v0, p0}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result p0

    return p0
.end method

.method public static divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .locals 2

    .line 134
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object p0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object p1

    invoke-static {p0, p1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    invoke-static {v0, p0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0
.end method

.method public static equals(Lgnu/math/RatNum;Lgnu/math/RatNum;)Z
    .locals 2

    .line 94
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object p0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object p1

    invoke-static {p0, p1}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static infinity(I)Lgnu/math/RatNum;
    .locals 2

    .line 82
    new-instance v0, Lgnu/math/IntFraction;

    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/math/IntFraction;-><init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V

    return-object v0
.end method

.method public static make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;
    .locals 2

    .line 16
    invoke-static {p0, p1}, Lgnu/math/IntNum;->gcd(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-static {v0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    .line 19
    :cond_0
    invoke-virtual {v0}, Lgnu/math/IntNum;->isOne()Z

    move-result v1

    if-nez v1, :cond_1

    .line 21
    invoke-static {p0, v0}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    .line 22
    invoke-static {p1, v0}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    .line 24
    :cond_1
    invoke-virtual {p1}, Lgnu/math/IntNum;->isOne()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lgnu/math/IntFraction;

    invoke-direct {v0, p0, p1}, Lgnu/math/IntFraction;-><init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object p0

    .line 123
    invoke-static {v0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {v0, p0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0
.end method

.method public static rationalize(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 1

    .line 182
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {p1, p0}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p0

    return-object p0

    .line 184
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 186
    :cond_1
    invoke-virtual {p0}, Lgnu/math/RealNum;->sign()I

    move-result v0

    if-lez v0, :cond_2

    .line 187
    invoke-static {p0, p1}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p0

    return-object p0

    .line 188
    :cond_2
    invoke-virtual {p1}, Lgnu/math/RealNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p1}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object p1

    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object p0

    check-cast p0, Lgnu/math/RealNum;

    invoke-static {p1, p0}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object p0

    check-cast p0, Lgnu/math/RealNum;

    return-object p0

    .line 192
    :cond_3
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method private static simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 4

    const/4 v0, 0x1

    .line 197
    invoke-virtual {p0, v0}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v1

    .line 198
    invoke-virtual {p1, v0}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v2

    .line 199
    invoke-virtual {p0, v1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    .line 201
    :cond_0
    invoke-virtual {v1, v2}, Lgnu/math/RealNum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v3

    invoke-virtual {p1, v2}, Lgnu/math/RealNum;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p1

    invoke-virtual {v3, p1}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p1

    check-cast p1, Lgnu/math/RealNum;

    .line 204
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {p0, v1}, Lgnu/math/RealNum;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    invoke-virtual {v2, p0}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    check-cast p0, Lgnu/math/RealNum;

    .line 205
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {p1, p0}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p0

    invoke-virtual {v2, p0}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object p0

    check-cast p0, Lgnu/math/RealNum;

    return-object p0

    .line 209
    :cond_1
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object p0

    check-cast p0, Lgnu/math/RealNum;

    return-object p0
.end method

.method public static times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .locals 2

    .line 128
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object p0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object p1

    invoke-static {p0, p1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    invoke-static {v0, p0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/math/BigDecimal;)Lgnu/math/RatNum;
    .locals 3

    .line 31
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    :goto_0
    const/16 v2, 0x9

    if-lt p0, v2, :cond_0

    .line 34
    sget-object v2, Lgnu/math/RatNum;->ten_exp_9:Lgnu/math/IntNum;

    invoke-static {v0, v2}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v0

    add-int/lit8 p0, p0, -0x9

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v2, -0x9

    if-gt p0, v2, :cond_1

    .line 36
    sget-object v2, Lgnu/math/RatNum;->ten_exp_9:Lgnu/math/IntNum;

    invoke-static {v0, v2}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v0

    add-int/lit8 p0, p0, 0x9

    goto :goto_1

    :cond_1
    if-lez p0, :cond_2

    move v2, p0

    goto :goto_2

    :cond_2
    neg-int v2, p0

    :goto_2
    packed-switch v2, :pswitch_data_0

    return-object v0

    :pswitch_0
    const v1, 0x5f5e100

    .line 47
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    :pswitch_1
    const v1, 0x989680

    .line 46
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    :pswitch_2
    const v1, 0xf4240

    .line 45
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    :pswitch_3
    const v1, 0x186a0

    .line 44
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    :pswitch_4
    const/16 v1, 0x2710

    .line 43
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    :pswitch_5
    const/16 v1, 0x3e8

    .line 42
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    :pswitch_6
    const/16 v1, 0x64

    .line 41
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    .line 40
    :pswitch_7
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    :goto_3
    if-lez p0, :cond_3

    .line 52
    invoke-static {v0, v1}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0

    .line 54
    :cond_3
    invoke-static {v0, v1}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract denominator()Lgnu/math/IntNum;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 101
    instance-of v0, p1, Lgnu/math/RatNum;

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    check-cast p1, Lgnu/math/RatNum;

    invoke-static {p0, p1}, Lgnu/math/RatNum;->equals(Lgnu/math/RatNum;Lgnu/math/RatNum;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isExact()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    return v0
.end method

.method public abstract numerator()Lgnu/math/IntNum;
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 8

    .line 141
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 148
    :goto_0
    iget-object v3, p1, Lgnu/math/IntNum;->words:[I

    if-nez v3, :cond_2

    .line 150
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    iget v2, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {v1, v2}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    iget p1, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {v2, p1}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 152
    invoke-static {p1, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v1, p1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p1

    :goto_1
    return-object p1

    .line 154
    :cond_2
    invoke-virtual {p0}, Lgnu/math/RatNum;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v7, v3, v5

    if-gez v7, :cond_3

    .line 155
    invoke-virtual {p1}, Lgnu/math/IntNum;->isOdd()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 156
    :goto_2
    invoke-virtual {p1}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    if-eqz v0, :cond_4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v2, v4, v2

    .line 159
    :cond_4
    new-instance p1, Lgnu/math/DFloNum;

    if-eqz v1, :cond_5

    neg-double v2, v2

    :cond_5
    invoke-direct {p1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object p1
.end method

.method public final rneg()Lgnu/math/RatNum;
    .locals 1

    .line 76
    invoke-static {p0}, Lgnu/math/RatNum;->neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rneg()Lgnu/math/RealNum;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lgnu/math/RatNum;->rneg()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Complex;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lgnu/math/RatNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lgnu/math/RatNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public final toExact()Lgnu/math/RatNum;
    .locals 0

    return-object p0
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .locals 2

    .line 174
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .locals 2

    .line 169
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method
