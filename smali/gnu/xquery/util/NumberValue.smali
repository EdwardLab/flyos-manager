.class public Lgnu/xquery/util/NumberValue;
.super Lgnu/mapping/Procedure1;
.source "NumberValue.java"


# static fields
.field public static final NaN:Ljava/lang/Double;

.field public static final numberValue:Lgnu/xquery/util/NumberValue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lgnu/xquery/util/NumberValue;

    invoke-direct {v0}, Lgnu/xquery/util/NumberValue;-><init>()V

    sput-object v0, Lgnu/xquery/util/NumberValue;->numberValue:Lgnu/xquery/util/NumberValue;

    .line 16
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lgnu/xquery/util/NumberValue;->NaN:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static abs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    if-eqz p0, :cond_7

    .line 89
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    .line 92
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 94
    check-cast p0, Ljava/lang/Double;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    return-object p0

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 107
    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 109
    check-cast p0, Ljava/lang/Float;

    .line 110
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 111
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    if-ltz v0, :cond_3

    return-object p0

    :cond_3
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    .line 115
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 117
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 122
    :cond_4
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_6

    .line 124
    check-cast p0, Ljava/math/BigDecimal;

    .line 125
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_5

    .line 126
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    :cond_5
    return-object p0

    .line 129
    :cond_6
    check-cast p0, Lgnu/math/Numeric;

    invoke-virtual {p0}, Lgnu/math/Numeric;->abs()Lgnu/math/Numeric;

    move-result-object p0

    :cond_7
    :goto_0
    return-object p0
.end method

.method public static ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 151
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 154
    :cond_0
    instance-of p0, v0, Ljava/lang/Double;

    if-eqz p0, :cond_1

    .line 155
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 156
    :cond_1
    instance-of p0, v0, Ljava/lang/Float;

    if-eqz p0, :cond_2

    .line 157
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 158
    :cond_2
    instance-of p0, v0, Ljava/math/BigDecimal;

    const/4 v1, 0x2

    if-eqz p0, :cond_3

    .line 160
    check-cast v0, Ljava/math/BigDecimal;

    .line 161
    sget-object p0, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 163
    :cond_3
    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object p0

    return-object p0
.end method

.method public static floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 134
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 137
    :cond_0
    instance-of p0, v0, Ljava/lang/Double;

    if-eqz p0, :cond_1

    .line 138
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 139
    :cond_1
    instance-of p0, v0, Ljava/lang/Float;

    if-eqz p0, :cond_2

    .line 140
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 141
    :cond_2
    instance-of p0, v0, Ljava/math/BigDecimal;

    if-eqz p0, :cond_3

    .line 143
    check-cast v0, Ljava/math/BigDecimal;

    .line 144
    sget-object p0, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 146
    :cond_3
    check-cast v0, Lgnu/math/RealNum;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object p0

    return-object p0
.end method

.method public static isNaN(Ljava/lang/Object;)Z
    .locals 2

    .line 20
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static numberCast(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 3

    .line 43
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_5

    if-nez p0, :cond_0

    goto :goto_2

    .line 45
    :cond_0
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_2

    .line 47
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    .line 48
    invoke-virtual {v0}, Lgnu/mapping/Values;->startPos()I

    move-result v1

    const/4 v2, 0x0

    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_2

    if-gtz v2, :cond_1

    .line 54
    invoke-virtual {v0, v1}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    const-string v0, "non-singleton sequence cast to number"

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_2
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_4

    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 60
    :cond_3
    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 59
    :cond_4
    :goto_1
    sget-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static numberValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 65
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 67
    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lgnu/math/RealNum;

    if-nez v0, :cond_1

    instance-of v0, p0, Lgnu/math/Numeric;

    if-nez v0, :cond_3

    .line 81
    :cond_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    :try_start_0
    sget-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 84
    :catchall_0
    :cond_3
    :goto_1
    invoke-static {v1, v2}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static round(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 168
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 171
    :cond_0
    instance-of p0, v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    if-eqz p0, :cond_3

    .line 173
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double p0, v7, v5

    if-ltz p0, :cond_2

    cmpg-double p0, v7, v1

    if-gtz p0, :cond_2

    if-ltz p0, :cond_1

    .line 174
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long p0, v0, v5

    if-gez p0, :cond_2

    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_2
    add-double/2addr v7, v3

    .line 178
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 179
    :goto_0
    invoke-static {v0, v1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 181
    :cond_3
    instance-of p0, v0, Ljava/lang/Float;

    if-eqz p0, :cond_6

    .line 183
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v7, p0

    cmpl-double v0, v7, v5

    if-ltz v0, :cond_5

    cmpg-double v0, v7, v1

    if-gtz v0, :cond_5

    if-ltz v0, :cond_4

    .line 184
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    if-gez p0, :cond_5

    :cond_4
    const/high16 p0, -0x80000000

    goto :goto_1

    :cond_5
    add-double/2addr v7, v3

    .line 188
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p0, v0

    .line 189
    :goto_1
    invoke-static {p0}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 191
    :cond_6
    instance-of p0, v0, Ljava/math/BigDecimal;

    const/4 v1, 0x4

    if-eqz p0, :cond_8

    .line 193
    check-cast v0, Ljava/math/BigDecimal;

    .line 194
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-ltz p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x5

    .line 196
    :goto_2
    sget-object p0, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 199
    :cond_8
    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object p0

    return-object p0
.end method

.method public static roundHalfToEven(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 252
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/NumberValue;->roundHalfToEven(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static roundHalfToEven(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 6

    .line 204
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 207
    :cond_0
    instance-of v1, p0, Ljava/lang/Double;

    if-nez v1, :cond_1

    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 209
    :cond_1
    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_5

    .line 210
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 213
    :cond_2
    sget-object p0, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigDecimal;

    .line 214
    invoke-virtual {p1}, Lgnu/math/IntNum;->intValue()I

    move-result p1

    const/4 v1, 0x6

    .line 240
    invoke-virtual {p0, p1, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    .line 241
    instance-of p1, v0, Ljava/lang/Double;

    if-eqz p1, :cond_3

    .line 242
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 243
    :cond_3
    instance-of p1, v0, Ljava/lang/Float;

    if-eqz p1, :cond_4

    .line 244
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    invoke-static {p0}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 245
    :cond_4
    instance-of p1, v0, Lgnu/math/IntNum;

    if-eqz p1, :cond_5

    .line 246
    sget-object p1, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    invoke-virtual {p1, p0}, Lgnu/kawa/xml/XIntegerType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_5
    :goto_0
    return-object p0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 27
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 31
    :try_start_0
    invoke-static {p1}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 38
    :catchall_0
    :cond_0
    sget-object p1, Lgnu/xquery/util/NumberValue;->NaN:Ljava/lang/Double;

    return-object p1
.end method
