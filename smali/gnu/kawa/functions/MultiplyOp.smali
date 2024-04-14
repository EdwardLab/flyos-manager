.class public Lgnu/kawa/functions/MultiplyOp;
.super Lgnu/kawa/functions/ArithOp;
.source "MultiplyOp.java"


# static fields
.field public static final $St:Lgnu/kawa/functions/MultiplyOp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lgnu/kawa/functions/MultiplyOp;

    const-string v1, "*"

    invoke-direct {v0, v1}, Lgnu/kawa/functions/MultiplyOp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 20
    invoke-direct {p0, p1, v0}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 21
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v0, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/functions/MultiplyOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    sget-object p1, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v0, "*gnu.kawa.functions.CompileArith:forMul"

    invoke-virtual {p1, p0, v0}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p0, Lgnu/math/Numeric;

    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 38
    array-length v0, p1

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 41
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Number;

    .line 42
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 45
    aget-object v4, p1, v3

    .line 46
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v5

    if-ge v2, v5, :cond_1

    move v2, v5

    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 95
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    goto/16 :goto_2

    .line 90
    :pswitch_0
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v5

    .line 91
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v7

    .line 92
    new-instance v1, Lgnu/math/DFloNum;

    mul-double v5, v5, v7

    invoke-direct {v1, v5, v6}, Lgnu/math/DFloNum;-><init>(D)V

    goto/16 :goto_2

    .line 85
    :pswitch_1
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v5

    .line 86
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v7

    .line 87
    new-instance v1, Ljava/lang/Double;

    mul-double v5, v5, v7

    invoke-direct {v1, v5, v6}, Ljava/lang/Double;-><init>(D)V

    goto :goto_2

    .line 80
    :pswitch_2
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v1

    .line 81
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v4

    .line 82
    new-instance v5, Ljava/lang/Float;

    mul-float v1, v1, v4

    invoke-direct {v5, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1

    .line 76
    :pswitch_3
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v4

    invoke-static {v1, v4}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v1

    goto :goto_2

    .line 71
    :pswitch_4
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 72
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 73
    invoke-virtual {v1, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_2

    .line 67
    :pswitch_5
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v1, v4}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_2

    .line 62
    :pswitch_6
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    .line 63
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v4

    .line 64
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_2

    .line 57
    :pswitch_7
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v5

    .line 58
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v7

    .line 59
    new-instance v1, Ljava/lang/Long;

    mul-long v5, v5, v7

    invoke-direct {v1, v5, v6}, Ljava/lang/Long;-><init>(J)V

    goto :goto_2

    .line 52
    :pswitch_8
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v1

    .line 53
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v4

    .line 54
    new-instance v5, Ljava/lang/Integer;

    mul-int v1, v1, v4

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    :goto_1
    move-object v1, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method public defaultResult()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method
