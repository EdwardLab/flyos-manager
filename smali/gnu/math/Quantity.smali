.class public abstract Lgnu/math/Quantity;
.super Lgnu/math/Numeric;
.source "Quantity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgnu/math/Numeric;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Quantity;Lgnu/math/Quantity;I)Lgnu/math/Quantity;
    .locals 8

    .line 129
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lgnu/math/Complex;->add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;

    move-result-object p1

    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object p0

    invoke-static {p1, p0}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object p0

    return-object p0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v0

    .line 136
    invoke-virtual {p0}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v2

    int-to-double v4, p2

    invoke-virtual {p1}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v6

    mul-double v6, v6, v4

    add-double/2addr v2, v6

    div-double/2addr v2, v0

    .line 137
    invoke-virtual {p0}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v6

    invoke-virtual {p1}, Lgnu/math/Quantity;->imValue()D

    move-result-wide p1

    mul-double v4, v4, p1

    add-double/2addr v6, v4

    div-double/2addr v6, v0

    .line 138
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object p0

    invoke-static {v2, v3, v6, v7, p0}, Lgnu/math/Quantity;->make(DDLgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object p0

    return-object p0

    .line 132
    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "units mis-match"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compare(Lgnu/math/Quantity;Lgnu/math/Quantity;)I
    .locals 5

    .line 106
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object p0

    invoke-virtual {p1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object p1

    invoke-static {p0, p1}, Lgnu/math/Complex;->compare(Lgnu/math/Complex;Lgnu/math/Complex;)I

    move-result p0

    return p0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->reValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lgnu/math/DFloNum;->compare(DD)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x3

    return p0
.end method

.method public static divide(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;
    .locals 2

    .line 180
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Unit;->divide(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object p0

    invoke-virtual {p1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/math/Complex;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    .line 182
    check-cast p0, Lgnu/math/Complex;

    invoke-static {p0, v0}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object p0

    return-object p0
.end method

.method public static make(DDLgnu/math/Unit;)Lgnu/math/Quantity;
    .locals 3

    .line 73
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p4, v0, :cond_0

    .line 74
    invoke-static {p0, p1, p2, p3}, Lgnu/math/Complex;->make(DD)Lgnu/math/Complex;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_1

    .line 76
    new-instance p2, Lgnu/math/DQuantity;

    invoke-direct {p2, p0, p1, p4}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object p2

    .line 77
    :cond_1
    new-instance v0, Lgnu/math/CQuantity;

    new-instance v1, Lgnu/math/DFloNum;

    invoke-direct {v1, p0, p1}, Lgnu/math/DFloNum;-><init>(D)V

    new-instance p0, Lgnu/math/DFloNum;

    invoke-direct {p0, p2, p3}, Lgnu/math/DFloNum;-><init>(D)V

    invoke-direct {v0, v1, p0, p4}, Lgnu/math/CQuantity;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)V

    return-object v0
.end method

.method public static make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;
    .locals 3

    .line 55
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 57
    :cond_0
    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lgnu/math/DQuantity;

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Lgnu/math/CQuantity;

    invoke-direct {v0, p0, p1}, Lgnu/math/CQuantity;-><init>(Lgnu/math/Complex;Lgnu/math/Unit;)V

    return-object v0
.end method

.method public static make(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)Lgnu/math/Quantity;
    .locals 2

    .line 64
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p2, v0, :cond_0

    .line 65
    invoke-static {p0, p1}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object p0

    return-object p0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lgnu/math/RealNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    :cond_1
    new-instance p1, Lgnu/math/DQuantity;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1, p2}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object p1

    .line 68
    :cond_2
    new-instance v0, Lgnu/math/CQuantity;

    invoke-direct {v0, p0, p1, p2}, Lgnu/math/CQuantity;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)V

    return-object v0
.end method

.method public static times(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;
    .locals 2

    .line 158
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Unit;->times(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object p0

    invoke-virtual {p1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/math/Complex;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    .line 161
    check-cast p0, Lgnu/math/Complex;

    invoke-static {p0, v0}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abs()Lgnu/math/Numeric;
    .locals 2

    .line 102
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Complex;->abs()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/Complex;

    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1

    .line 144
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 145
    check-cast p1, Lgnu/math/Quantity;

    invoke-static {p0, p1, p2}, Lgnu/math/Quantity;->add(Lgnu/math/Quantity;Lgnu/math/Quantity;I)Lgnu/math/Quantity;

    move-result-object p1

    return-object p1

    .line 146
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 1

    .line 151
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 152
    check-cast p1, Lgnu/math/Quantity;

    invoke-static {p1, p0, p2}, Lgnu/math/Quantity;->add(Lgnu/math/Quantity;Lgnu/math/Quantity;I)Lgnu/math/Quantity;

    move-result-object p1

    return-object p1

    .line 153
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1

    .line 115
    instance-of v0, p1, Lgnu/math/Quantity;

    if-nez v0, :cond_0

    .line 116
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->compareReversed(Lgnu/math/Numeric;)I

    move-result p1

    return p1

    .line 117
    :cond_0
    check-cast p1, Lgnu/math/Quantity;

    invoke-static {p0, p1}, Lgnu/math/Quantity;->compare(Lgnu/math/Quantity;Lgnu/math/Quantity;)I

    move-result p1

    return p1
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .locals 1

    .line 122
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 123
    check-cast p1, Lgnu/math/Quantity;

    invoke-static {p1, p0}, Lgnu/math/Quantity;->compare(Lgnu/math/Quantity;Lgnu/math/Quantity;)I

    move-result p1

    return p1

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public dimensions()Lgnu/math/Dimensions;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Unit;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    return-object v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1

    .line 187
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 188
    check-cast p1, Lgnu/math/Quantity;

    invoke-static {p0, p1}, Lgnu/math/Quantity;->divide(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object p1

    return-object p1

    .line 189
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 1

    .line 194
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 195
    check-cast p1, Lgnu/math/Quantity;

    invoke-static {p1, p0}, Lgnu/math/Quantity;->divide(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object p1

    return-object p1

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public doubleImagValue()D
    .locals 4

    .line 51
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Quantity;->im()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public doubleValue()D
    .locals 4

    .line 46
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Quantity;->re()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public im()Lgnu/math/RealNum;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public final imValue()D
    .locals 2

    .line 40
    invoke-virtual {p0}, Lgnu/math/Quantity;->doubleImagValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1

    .line 166
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 167
    check-cast p1, Lgnu/math/Quantity;

    invoke-static {p0, p1}, Lgnu/math/Quantity;->times(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object p1

    return-object p1

    .line 168
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 1

    .line 173
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 174
    check-cast p1, Lgnu/math/Quantity;

    invoke-static {p1, p0}, Lgnu/math/Quantity;->times(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object p1

    return-object p1

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Complex;->neg()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/Complex;

    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0
.end method

.method public abstract number()Lgnu/math/Complex;
.end method

.method public re()Lgnu/math/RealNum;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public final reValue()D
    .locals 2

    .line 34
    invoke-virtual {p0}, Lgnu/math/Quantity;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 201
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/math/Complex;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v0, v1, :cond_0

    return-object p1

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/math/Unit;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unit()Lgnu/math/Unit;
    .locals 1

    .line 13
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    return-object v0
.end method
