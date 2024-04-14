.class public Lgnu/math/IntFraction;
.super Lgnu/math/RatNum;
.source "IntFraction.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field den:Lgnu/math/IntNum;

.field num:Lgnu/math/IntNum;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lgnu/math/RatNum;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lgnu/math/RatNum;-><init>()V

    .line 22
    iput-object p1, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    .line 23
    iput-object p2, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    return-void
.end method

.method public static neg(Lgnu/math/IntFraction;)Lgnu/math/IntFraction;
    .locals 2

    .line 96
    new-instance v0, Lgnu/math/IntFraction;

    invoke-virtual {p0}, Lgnu/math/IntFraction;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/math/IntFraction;->denominator()Lgnu/math/IntNum;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lgnu/math/IntFraction;-><init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1

    .line 47
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Lgnu/math/RatNum;

    invoke-static {p0, p1, p2}, Lgnu/math/RatNum;->add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 51
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 1

    .line 56
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lgnu/math/RatNum;

    invoke-static {p1, p0, p2}, Lgnu/math/RatNum;->add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;

    move-result-object p1

    return-object p1

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final compare(Ljava/lang/Object;)I
    .locals 1

    .line 35
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lgnu/math/RatNum;

    invoke-static {p0, p1}, Lgnu/math/RatNum;->compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I

    move-result p1

    return p1

    .line 37
    :cond_0
    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1, p0}, Lgnu/math/RealNum;->compareReversed(Lgnu/math/Numeric;)I

    move-result p1

    return p1
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .locals 0

    .line 42
    check-cast p1, Lgnu/math/RatNum;

    invoke-static {p1, p0}, Lgnu/math/RatNum;->compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I

    move-result p1

    return p1
.end method

.method public final denominator()Lgnu/math/IntNum;
    .locals 1

    .line 27
    iget-object v0, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    return-object v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1

    .line 79
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 80
    check-cast p1, Lgnu/math/RatNum;

    invoke-static {p0, p1}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object p1

    return-object p1

    .line 81
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 83
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 1

    .line 88
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Lgnu/math/RatNum;

    invoke-static {p1, p0}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object p1

    return-object p1

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public doubleValue()D
    .locals 7

    .line 111
    iget-object v0, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    .line 112
    iget-object v1, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    invoke-virtual {v1}, Lgnu/math/IntNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v0}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    return-wide v0

    .line 116
    :cond_2
    iget-object v1, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    if-eqz v0, :cond_3

    .line 118
    invoke-static {v1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .line 119
    :cond_3
    invoke-virtual {v1}, Lgnu/math/IntNum;->intLength()I

    move-result v2

    .line 120
    iget-object v3, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    invoke-virtual {v3}, Lgnu/math/IntNum;->intLength()I

    move-result v3

    const/4 v4, 0x0

    add-int/lit8 v3, v3, 0x36

    if-ge v2, v3, :cond_4

    sub-int/2addr v3, v2

    .line 125
    invoke-static {v1, v3}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v1

    neg-int v4, v3

    .line 131
    :cond_4
    new-instance v2, Lgnu/math/IntNum;

    invoke-direct {v2}, Lgnu/math/IntNum;-><init>()V

    .line 132
    new-instance v3, Lgnu/math/IntNum;

    invoke-direct {v3}, Lgnu/math/IntNum;-><init>()V

    .line 133
    iget-object v5, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    const/4 v6, 0x3

    invoke-static {v1, v5, v2, v3, v6}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 134
    invoke-virtual {v2}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    .line 135
    invoke-virtual {v3}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lgnu/math/IntNum;->isZero()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v4, v0, v2}, Lgnu/math/IntNum;->roundToDouble(IZZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public final isNegative()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    const/4 v0, 0x4

    .line 106
    invoke-virtual {p0, v0}, Lgnu/math/IntFraction;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1

    .line 63
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lgnu/math/RatNum;

    invoke-static {p0, p1}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 67
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 1

    .line 72
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Lgnu/math/RatNum;

    invoke-static {p1, p0}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 1

    .line 101
    invoke-static {p0}, Lgnu/math/IntFraction;->neg(Lgnu/math/IntFraction;)Lgnu/math/IntFraction;

    move-result-object v0

    return-object v0
.end method

.method public final numerator()Lgnu/math/IntNum;
    .locals 1

    .line 26
    iget-object v0, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 161
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/IntNum;

    iput-object v0, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    .line 162
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/math/IntNum;

    iput-object p1, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    return-void
.end method

.method public final sign()I
    .locals 1

    .line 31
    iget-object v0, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v0}, Lgnu/math/IntNum;->sign()I

    move-result v0

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-virtual {v1, p1}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    invoke-virtual {v1, p1}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lgnu/math/IntFraction;->num:Lgnu/math/IntNum;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lgnu/math/IntFraction;->den:Lgnu/math/IntNum;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
