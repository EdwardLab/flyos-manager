.class public Lgnu/math/DFloNum;
.super Lgnu/math/RealNum;
.source "DFloNum.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final one:Lgnu/math/DFloNum;


# instance fields
.field value:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 111
    new-instance v0, Lgnu/math/DFloNum;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    sput-object v0, Lgnu/math/DFloNum;->one:Lgnu/math/DFloNum;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    .line 17
    iput-wide p1, p0, Lgnu/math/DFloNum;->value:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    .line 22
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    .line 38
    iput-wide v0, p0, Lgnu/math/DFloNum;->value:D

    :cond_0
    return-void
.end method

.method public static asDFloNumOrNull(Ljava/lang/Object;)Lgnu/math/DFloNum;
    .locals 3

    .line 48
    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_0

    .line 49
    check-cast p0, Lgnu/math/DFloNum;

    return-object p0

    .line 50
    :cond_0
    instance-of v0, p0, Lgnu/math/RealNum;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_2
    :goto_0
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public static compare(DD)I
    .locals 2

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    cmpg-double v1, p0, p2

    if-gez v1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, -0x2

    :goto_0
    return p0
.end method

.method public static compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I
    .locals 5

    .line 158
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    return v1

    .line 160
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const-wide/16 v3, 0x0

    cmpl-double v0, p2, v3

    if-ltz v0, :cond_1

    const/4 p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 163
    :goto_0
    invoke-virtual {p1}, Lgnu/math/IntNum;->isZero()Z

    move-result p1

    if-nez p1, :cond_2

    return p2

    .line 165
    :cond_2
    invoke-virtual {p0}, Lgnu/math/IntNum;->isZero()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    shr-int/lit8 p1, p2, 0x1

    .line 168
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    not-int p1, p1

    :goto_1
    return p1

    .line 172
    :cond_5
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v3, p2, v0

    if-gez v3, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x34

    shr-long v3, p2, v1

    long-to-int v1, v3

    and-int/lit16 v1, v1, 0x7ff

    const-wide v3, 0xfffffffffffffL

    and-long/2addr p2, v3

    if-nez v1, :cond_7

    shl-long/2addr p2, v2

    goto :goto_3

    :cond_7
    const-wide/high16 v2, 0x10000000000000L

    or-long/2addr p2, v2

    :goto_3
    if-eqz v0, :cond_8

    neg-long p2, p2

    .line 180
    :cond_8
    invoke-static {p2, p3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p2

    const/16 p3, 0x433

    if-lt v1, p3, :cond_9

    sub-int/2addr v1, p3

    .line 182
    invoke-static {p2, v1}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p2

    goto :goto_4

    :cond_9
    sub-int/2addr p3, v1

    .line 184
    invoke-static {p0, p3}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    .line 185
    :goto_4
    invoke-static {p2, p1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    invoke-static {p0, p1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result p0

    return p0
.end method

.method public static make(D)Lgnu/math/DFloNum;
    .locals 1

    .line 43
    new-instance v0, Lgnu/math/DFloNum;

    invoke-direct {v0, p0, p1}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public static final one()Lgnu/math/DFloNum;
    .locals 1

    .line 112
    sget-object v0, Lgnu/math/DFloNum;->one:Lgnu/math/DFloNum;

    return-object v0
.end method

.method public static toExact(D)Lgnu/math/RatNum;
    .locals 5

    .line 223
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 224
    :goto_0
    invoke-static {v1}, Lgnu/math/RatNum;->infinity(I)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0

    .line 225
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_6

    .line 227
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x34

    shr-long v2, p0, v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0x7ff

    const-wide v3, 0xfffffffffffffL

    and-long/2addr p0, v3

    if-nez v2, :cond_3

    shl-long/2addr p0, v1

    goto :goto_2

    :cond_3
    const-wide/high16 v3, 0x10000000000000L

    or-long/2addr p0, v3

    :goto_2
    if-eqz v0, :cond_4

    neg-long p0, p0

    .line 235
    :cond_4
    invoke-static {p0, p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    const/16 p1, 0x433

    if-lt v2, p1, :cond_5

    sub-int/2addr v2, p1

    .line 237
    invoke-static {p0, v2}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 239
    :cond_5
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    sub-int/2addr p1, v2

    invoke-static {v0, p1}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p1

    invoke-static {p0, p1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0

    .line 226
    :cond_6
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "cannot convert NaN to exact rational"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 5

    .line 81
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    int-to-double v3, p2

    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide p1

    mul-double v3, v3, p1

    add-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 83
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 85
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 5

    .line 90
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    int-to-double p1, p2

    iget-wide v3, p0, Lgnu/math/DFloNum;->value:D

    mul-double p1, p1, v3

    add-double/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 4

    .line 191
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_1

    .line 193
    check-cast p1, Lgnu/math/RatNum;

    .line 194
    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object p1

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, p1, v1, v2}, Lgnu/math/DFloNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I

    move-result p1

    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    :goto_0
    return p1

    .line 197
    :cond_1
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/DFloNum;->compare(DD)I

    move-result p1

    return p1
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .locals 4

    .line 202
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 204
    check-cast p1, Lgnu/math/RatNum;

    .line 205
    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object p1

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, p1, v1, v2}, Lgnu/math/DFloNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I

    move-result p1

    return p1

    .line 207
    :cond_0
    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, v1, v2, v3}, Lgnu/math/DFloNum;->compare(DD)I

    move-result p1

    return p1
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5

    .line 116
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 118
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 120
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5

    .line 125
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    iget-wide v3, p0, Lgnu/math/DFloNum;->value:D

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final doubleValue()D
    .locals 2

    .line 57
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 73
    instance-of v0, p1, Lgnu/math/DFloNum;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/math/DFloNum;

    iget-wide v0, p1, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 67
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isExact()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNegative()Z
    .locals 5

    .line 137
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 5

    .line 217
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public longValue()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5

    .line 97
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    mul-double v1, v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 99
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 101
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5

    .line 106
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    iget-wide v3, p0, Lgnu/math/DFloNum;->value:D

    mul-double v1, v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 3

    .line 142
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    neg-double v1, v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 5

    .line 132
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 268
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DFloNum;->value:D

    return-void
.end method

.method public sign()I
    .locals 5

    .line 147
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 244
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "+inf.0"

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    const-string v0, "-inf.0"

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "+nan.0"

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lgnu/math/DFloNum;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/math/DFloNum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    return-void
.end method
