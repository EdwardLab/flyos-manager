.class public Lgnu/xquery/util/ArithOp;
.super Lgnu/mapping/Procedure1or2;
.source "ArithOp.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static final TEN:Ljava/math/BigInteger;

.field public static final add:Lgnu/xquery/util/ArithOp;

.field public static final div:Lgnu/xquery/util/ArithOp;

.field public static final idiv:Lgnu/xquery/util/ArithOp;

.field public static final minus:Lgnu/xquery/util/ArithOp;

.field public static final mod:Lgnu/xquery/util/ArithOp;

.field public static final mul:Lgnu/xquery/util/ArithOp;

.field public static final plus:Lgnu/xquery/util/ArithOp;

.field public static final sub:Lgnu/xquery/util/ArithOp;


# instance fields
.field op:C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v0, 0xa

    .line 16
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/ArithOp;->TEN:Ljava/math/BigInteger;

    .line 18
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v1, "+"

    const/16 v2, 0x2b

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->add:Lgnu/xquery/util/ArithOp;

    .line 19
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v2, "-"

    const/16 v4, 0x2d

    invoke-direct {v0, v2, v4, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->sub:Lgnu/xquery/util/ArithOp;

    .line 20
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v4, "*"

    const/16 v5, 0x2a

    invoke-direct {v0, v4, v5, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->mul:Lgnu/xquery/util/ArithOp;

    .line 21
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v4, "div"

    const/16 v5, 0x64

    invoke-direct {v0, v4, v5, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->div:Lgnu/xquery/util/ArithOp;

    .line 22
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v4, "idiv"

    const/16 v5, 0x69

    invoke-direct {v0, v4, v5, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->idiv:Lgnu/xquery/util/ArithOp;

    .line 23
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v4, "mod"

    const/16 v5, 0x6d

    invoke-direct {v0, v4, v5, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->mod:Lgnu/xquery/util/ArithOp;

    .line 24
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const/16 v3, 0x50

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->plus:Lgnu/xquery/util/ArithOp;

    .line 25
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const/16 v1, 0x4d

    invoke-direct {v0, v2, v1, v4}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->minus:Lgnu/xquery/util/ArithOp;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;CI)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure1or2;-><init>(Ljava/lang/String;)V

    .line 30
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string p3, "gnu.xquery.util.CompileMisc:validateArithOp"

    invoke-virtual {p0, p1, p3}, Lgnu/xquery/util/ArithOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    iput-char p2, p0, Lgnu/xquery/util/ArithOp;->op:C

    return-void
.end method

.method public static div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1

    .line 66
    sget-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v0, :cond_8

    if-nez p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_1

    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_2

    .line 41
    :cond_1
    sget-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    :cond_2
    iget-char v0, p0, Lgnu/xquery/util/ArithOp;->op:C

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x50

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 45
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 60
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lgnu/xquery/util/ArithOp;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_4
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    .line 55
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_5

    .line 56
    check-cast p1, Lgnu/math/Numeric;

    invoke-virtual {p1}, Lgnu/math/Numeric;->neg()Lgnu/math/Numeric;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 v0, -0x1

    .line 57
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 53
    :cond_6
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 51
    :cond_7
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p1

    neg-float p1, p1

    invoke-static {p1}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object p1

    :cond_8
    :goto_0
    return-object p1
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 90
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v0, :cond_1b

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 92
    :cond_0
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p2, v0, :cond_1a

    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 94
    :cond_1
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_2

    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_3

    .line 95
    :cond_2
    sget-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 96
    :cond_3
    instance-of v0, p2, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_4

    instance-of v0, p2, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_5

    .line 97
    :cond_4
    sget-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 98
    :cond_5
    iget-char v0, p0, Lgnu/xquery/util/ArithOp;->op:C

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_19

    const/16 v1, 0x2b

    const/4 v2, 0x1

    if-eq v0, v1, :cond_18

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_17

    .line 107
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 108
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_6

    move v3, v1

    goto :goto_0

    :cond_6
    move v3, v0

    .line 110
    :goto_0
    iget-char v4, p0, Lgnu/xquery/util/ArithOp;->op:C

    const/16 v5, 0x64

    const/4 v6, 0x4

    const/4 v7, 0x7

    const/4 v8, 0x6

    if-eq v4, v5, :cond_b

    const/16 v5, 0x69

    if-eq v4, v5, :cond_12

    const/16 v2, 0x6d

    if-ne v4, v2, :cond_16

    if-ltz v0, :cond_16

    if-ltz v1, :cond_16

    if-gt v3, v6, :cond_7

    .line 192
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1

    .line 193
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p2

    .line 194
    invoke-static {p1, p2}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1

    :cond_7
    if-gt v3, v8, :cond_8

    .line 198
    sget-object v0, Lgnu/xquery/util/ArithOp;->sub:Lgnu/xquery/util/ArithOp;

    sget-object v1, Lgnu/xquery/util/ArithOp;->mul:Lgnu/xquery/util/ArithOp;

    sget-object v2, Lgnu/xquery/util/ArithOp;->idiv:Lgnu/xquery/util/ArithOp;

    invoke-virtual {v2, p1, p2}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    if-gt v3, v7, :cond_9

    .line 202
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p1

    .line 203
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p2

    rem-float/2addr p1, p2

    .line 204
    invoke-static {p1}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v0, 0x9

    if-gt v3, v0, :cond_16

    .line 208
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v1

    .line 209
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p1

    rem-double/2addr v1, p1

    if-ne v3, v0, :cond_a

    .line 212
    invoke-static {v1, v2}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object p1

    return-object p1

    .line 214
    :cond_a
    invoke-static {v1, v2}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_b
    if-ltz v0, :cond_16

    if-ltz v1, :cond_16

    if-gt v3, v8, :cond_c

    .line 117
    sget-object v0, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    .line 119
    sget-object v0, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v0, p2}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigDecimal;

    .line 121
    invoke-static {p1, p2}, Lgnu/xquery/util/ArithOp;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_c
    if-ne v3, v7, :cond_d

    .line 125
    new-instance v0, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    div-float/2addr p1, p2

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object v0

    :cond_d
    const/16 v4, 0x8

    if-ne v3, v4, :cond_e

    .line 130
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    div-double/2addr v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    .line 133
    :cond_e
    instance-of v4, p1, Lgnu/math/Duration;

    if-eqz v4, :cond_11

    instance-of v4, p2, Lgnu/math/Duration;

    if-eqz v4, :cond_11

    .line 135
    check-cast p1, Lgnu/math/Duration;

    .line 136
    check-cast p2, Lgnu/math/Duration;

    .line 137
    invoke-virtual {p1}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v0

    sget-object v1, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    if-ne v0, v1, :cond_f

    invoke-virtual {p2}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v0

    sget-object v1, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    if-ne v0, v1, :cond_f

    .line 139
    invoke-virtual {p1}, Lgnu/math/Duration;->getTotalSeconds()J

    move-result-wide v0

    .line 140
    invoke-virtual {p2}, Lgnu/math/Duration;->getTotalSeconds()J

    move-result-wide v2

    .line 141
    invoke-virtual {p1}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result p1

    .line 142
    invoke-virtual {p2}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result p2

    .line 143
    invoke-static {v0, v1, p1}, Lgnu/xquery/util/TimeUtils;->secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;

    move-result-object p1

    .line 144
    invoke-static {v2, v3, p2}, Lgnu/xquery/util/TimeUtils;->secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;

    move-result-object p2

    .line 145
    invoke-static {p1, p2}, Lgnu/xquery/util/ArithOp;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 147
    :cond_f
    invoke-virtual {p1}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v0

    sget-object v1, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v1, :cond_10

    invoke-virtual {p2}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v0

    sget-object v1, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v1, :cond_10

    .line 149
    invoke-virtual {p1}, Lgnu/math/Duration;->getTotalMonths()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    .line 150
    invoke-virtual {p2}, Lgnu/math/Duration;->getTotalMonths()I

    move-result p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    .line 151
    invoke-static {p1, p2}, Lgnu/xquery/util/ArithOp;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 153
    :cond_10
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "divide of incompatible durations"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    if-ltz v3, :cond_12

    .line 156
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p1

    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgnu/math/Numeric;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1

    :cond_12
    if-ltz v0, :cond_16

    if-ltz v1, :cond_16

    if-gt v3, v6, :cond_13

    .line 162
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1

    .line 163
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p2

    .line 164
    invoke-static {p1, p2}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1

    :cond_13
    if-gt v3, v8, :cond_14

    .line 168
    sget-object v0, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    .line 170
    sget-object v0, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v0, p2}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p1, p2, v0, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1

    :cond_14
    const/4 v0, 0x3

    if-gt v3, v7, :cond_15

    .line 177
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 179
    invoke-static {p1, p2, v0}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1

    .line 183
    :cond_15
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    div-double/2addr v1, p1

    .line 185
    invoke-static {v1, v2, v0}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1

    .line 217
    :cond_16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lgnu/xquery/util/ArithOp;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    const/4 v0, -0x1

    .line 103
    invoke-static {v0, p1, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 101
    :cond_18
    invoke-static {v2, p1, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 105
    :cond_19
    sget-object v0, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    invoke-virtual {v0, p1, p2}, Lgnu/kawa/functions/MultiplyOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1a
    :goto_1
    return-object p2

    :cond_1b
    :goto_2
    return-object p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0

    .line 223
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 228
    sget-object p1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object p1
.end method
