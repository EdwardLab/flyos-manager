.class public Lgnu/kawa/functions/AddOp;
.super Lgnu/kawa/functions/ArithOp;
.source "AddOp.java"


# static fields
.field public static final $Mn:Lgnu/kawa/functions/AddOp;

.field public static final $Pl:Lgnu/kawa/functions/AddOp;


# instance fields
.field plusOrMinus:I


# direct methods
.method public static $Mn(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 97
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/Numeric;->neg()Lgnu/math/Numeric;

    move-result-object p0

    return-object p0

    .line 117
    :pswitch_0
    new-instance v0, Lgnu/math/DFloNum;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v1

    neg-double v1, v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 115
    :pswitch_1
    new-instance v0, Ljava/lang/Double;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v1

    neg-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    .line 113
    :pswitch_2
    new-instance v0, Ljava/lang/Float;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p0

    neg-float p0, p0

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0

    .line 111
    :pswitch_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p0

    invoke-static {p0}, Lgnu/math/RatNum;->neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0

    .line 109
    :pswitch_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 107
    :pswitch_5
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p0

    invoke-static {p0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 105
    :pswitch_6
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 103
    :pswitch_7
    new-instance v0, Ljava/lang/Long;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v1

    neg-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    .line 101
    :pswitch_8
    new-instance v0, Ljava/lang/Integer;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p0

    neg-int p0, p0

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    nop

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

.method public static $Mn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, -0x1

    .line 92
    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $Mn$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, -0x1

    .line 133
    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0, p3}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $Pl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 87
    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static $Pl$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 127
    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0, p3}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lgnu/kawa/functions/AddOp;

    const-string v1, "+"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 31
    new-instance v0, Lgnu/kawa/functions/AddOp;

    const-string v1, "-"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    invoke-direct {p0, p1, v0}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p2, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    if-lez p2, :cond_1

    const-string p1, "gnu.kawa.functions.CompileArith:$Pl"

    goto :goto_1

    :cond_1
    const-string p1, "gnu.kawa.functions.CompileArith:$Mn"

    .line 25
    :goto_1
    sget-object p2, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    invoke-virtual {p2, p0, p1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 26
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string p2, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/AddOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 35
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 36
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 79
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p1

    .line 80
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p2

    .line 81
    invoke-virtual {p1, p2, p0}, Lgnu/math/Numeric;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object p0

    return-object p0

    .line 75
    :pswitch_0
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 76
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p1

    .line 77
    new-instance v2, Lgnu/math/DFloNum;

    if-lez p0, :cond_1

    add-double/2addr v0, p1

    goto :goto_0

    :cond_1
    sub-double/2addr v0, p1

    :goto_0
    invoke-direct {v2, v0, v1}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v2

    .line 71
    :pswitch_1
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 72
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p1

    .line 73
    new-instance v2, Ljava/lang/Double;

    if-lez p0, :cond_2

    add-double/2addr v0, p1

    goto :goto_1

    :cond_2
    sub-double/2addr v0, p1

    :goto_1
    invoke-direct {v2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v2

    .line 67
    :pswitch_2
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p1

    .line 68
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p2

    .line 69
    new-instance v0, Ljava/lang/Float;

    if-lez p0, :cond_3

    add-float/2addr p1, p2

    goto :goto_2

    :cond_3
    sub-float/2addr p1, p2

    :goto_2
    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object v0

    .line 64
    :pswitch_3
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p1

    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lgnu/math/RatNum;->add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0

    .line 60
    :pswitch_4
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 61
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p2

    if-lez p0, :cond_4

    .line 62
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    :goto_3
    return-object p0

    .line 57
    :pswitch_5
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1

    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 53
    :pswitch_6
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    .line 54
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p2

    if-lez p0, :cond_5

    .line 55
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4

    :cond_5
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :goto_4
    return-object p0

    .line 49
    :pswitch_7
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v0

    .line 50
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide p1

    .line 51
    new-instance v2, Ljava/lang/Long;

    if-lez p0, :cond_6

    add-long/2addr v0, p1

    goto :goto_5

    :cond_6
    sub-long/2addr v0, p1

    :goto_5
    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object v2

    .line 45
    :pswitch_8
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p1

    .line 46
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p2

    .line 47
    new-instance v0, Ljava/lang/Integer;

    if-lez p0, :cond_7

    add-int/2addr p1, p2

    goto :goto_6

    :cond_7
    sub-int/2addr p1, p2

    :goto_6
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

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

.method public static applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 151
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 154
    aget-object v2, p2, v1

    invoke-static {p0, p1, v2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static applyN(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 138
    array-length v0, p1

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 141
    aget-object v1, p1, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-gez p0, :cond_1

    .line 143
    invoke-static {v1}, Lgnu/kawa/functions/AddOp;->$Mn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-ge v2, v0, :cond_2

    .line 145
    aget-object v3, p1, v2

    invoke-static {p0, v1, v3}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 160
    iget v0, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    invoke-static {v0, p1}, Lgnu/kawa/functions/AddOp;->applyN(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
