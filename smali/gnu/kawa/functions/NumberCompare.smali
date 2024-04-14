.class public Lgnu/kawa/functions/NumberCompare;
.super Lgnu/mapping/ProcedureN;
.source "NumberCompare.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static final RESULT_EQU:I = 0x0

.field static final RESULT_GRT:I = 0x1

.field static final RESULT_LSS:I = -0x1

.field static final RESULT_NAN:I = -0x2

.field static final RESULT_NEQ:I = -0x3

.field public static final TRUE_IF_EQU:I = 0x8

.field public static final TRUE_IF_GRT:I = 0x10

.field public static final TRUE_IF_LSS:I = 0x4

.field public static final TRUE_IF_NAN:I = 0x2

.field public static final TRUE_IF_NEQ:I = 0x1


# instance fields
.field flags:I

.field language:Lgnu/expr/Language;


# direct methods
.method public static $Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x8

    .line 33
    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static $Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1

    .line 59
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    array-length p0, p3

    if-eqz p0, :cond_0

    aget-object p0, p3, v0

    invoke-static {p2, p0}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    invoke-static {p0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static $Gr(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x10

    .line 38
    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static $Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x18

    .line 43
    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static $Gr$Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1

    .line 75
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    array-length p0, p3

    if-eqz p0, :cond_0

    aget-object p0, p3, v0

    invoke-static {p2, p0}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x18

    invoke-static {p0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static $Gr$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1

    .line 67
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    array-length p0, p3

    if-eqz p0, :cond_0

    aget-object p0, p3, v0

    invoke-static {p2, p0}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x10

    invoke-static {p0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static $Ls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x4

    .line 48
    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static $Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/16 v0, 0xc

    .line 53
    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static $Ls$Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1

    .line 92
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    array-length p0, p3

    if-eqz p0, :cond_0

    aget-object p0, p3, v0

    invoke-static {p2, p0}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xc

    invoke-static {p0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static $Ls$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1

    .line 84
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    array-length p0, p3

    if-eqz p0, :cond_0

    aget-object p0, p3, v0

    invoke-static {p2, p0}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    invoke-static {p0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static apply2(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    .line 121
    invoke-static {p1, p2, v0}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static applyN(I[Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 221
    :cond_0
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 223
    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 224
    aget-object v3, p1, v1

    .line 225
    invoke-static {p0, v2, v3}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_1
    return v3
.end method

.method public static applyWithPromotion(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-static {p1, p2, v0}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result p1

    invoke-static {p1, p0}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result p0

    return p0
.end method

.method public static checkCompareCode(II)Z
    .locals 1

    add-int/lit8 p0, p0, 0x3

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static classify(Lgnu/expr/Expression;)I
    .locals 2

    .line 348
    invoke-virtual {p0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 351
    instance-of v1, p0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_1

    check-cast p0, Lgnu/expr/QuoteExp;

    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lgnu/math/IntNum;

    if-eqz v1, :cond_1

    .line 354
    check-cast p0, Lgnu/math/IntNum;

    invoke-virtual {p0}, Lgnu/math/IntNum;->intLength()I

    move-result p0

    const/16 v1, 0x20

    if-ge p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v1, 0x40

    if-ge p0, v1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method public static compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I
    .locals 6

    if-ltz p1, :cond_e

    if-gez p3, :cond_0

    goto/16 :goto_a

    :cond_0
    if-ge p1, p3, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    if-eqz p4, :cond_6

    if-le p1, v5, :cond_2

    if-le p3, v5, :cond_2

    goto :goto_4

    :cond_2
    :pswitch_1
    if-eqz p4, :cond_3

    if-le p1, v5, :cond_c

    if-le p3, v5, :cond_c

    .line 203
    :cond_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p0

    .line 204
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p2

    cmpl-double p4, p0, p2

    if-lez p4, :cond_4

    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_9

    :cond_4
    cmpg-double v0, p0, p2

    if-gez v0, :cond_5

    :goto_2
    const/4 v1, -0x1

    goto/16 :goto_9

    :cond_5
    if-nez p4, :cond_d

    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 191
    :cond_6
    :goto_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p0

    .line 192
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p1

    cmpl-float p2, p0, p1

    if-lez p2, :cond_7

    goto :goto_1

    :cond_7
    cmpg-float p0, p0, p1

    if-gez p0, :cond_8

    goto :goto_2

    :cond_8
    if-nez p2, :cond_d

    goto :goto_3

    .line 183
    :pswitch_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p0

    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p1

    invoke-static {p0, p1}, Lgnu/math/RatNum;->compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I

    move-result v1

    goto :goto_9

    .line 178
    :pswitch_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 179
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    goto :goto_9

    .line 174
    :pswitch_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p0

    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1

    invoke-static {p0, p1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v1

    goto :goto_9

    .line 169
    :pswitch_5
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    .line 170
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    goto :goto_9

    .line 164
    :pswitch_6
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide p0

    .line 165
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide p2

    cmp-long p4, p0, p2

    if-gez p4, :cond_9

    goto :goto_5

    :cond_9
    if-lez p4, :cond_b

    goto :goto_6

    .line 159
    :pswitch_7
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p0

    .line 160
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p1

    if-ge p0, p1, :cond_a

    :goto_5
    const/4 v2, -0x1

    goto :goto_7

    :cond_a
    if-le p0, p1, :cond_b

    :goto_6
    const/4 v2, 0x1

    :cond_b
    :goto_7
    move v1, v2

    goto :goto_9

    .line 210
    :cond_c
    :goto_8
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    .line 211
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result v1

    :cond_d
    :goto_9
    return v1

    :cond_e
    :goto_a
    const/4 p0, -0x3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .locals 2

    .line 143
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 144
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v1

    .line 145
    invoke-static {p0, v0, p1, v1, p2}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I

    move-result p0

    return p0
.end method

.method public static make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;
    .locals 1

    .line 100
    new-instance v0, Lgnu/kawa/functions/NumberCompare;

    invoke-direct {v0}, Lgnu/kawa/functions/NumberCompare;-><init>()V

    .line 101
    iput-object p0, v0, Lgnu/kawa/functions/NumberCompare;->language:Lgnu/expr/Language;

    .line 102
    invoke-virtual {v0, p1}, Lgnu/kawa/functions/NumberCompare;->setName(Ljava/lang/String;)V

    .line 103
    iput p2, v0, Lgnu/kawa/functions/NumberCompare;->flags:I

    .line 104
    sget-object p0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string p1, "gnu.kawa.functions.CompileArith:validateApplyNumberCompare"

    invoke-virtual {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 116
    invoke-virtual {p0}, Lgnu/kawa/functions/NumberCompare;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    iget v1, p0, Lgnu/kawa/functions/NumberCompare;->flags:I

    invoke-static {v1, p1, p2}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 235
    invoke-virtual {p0}, Lgnu/kawa/functions/NumberCompare;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    iget v1, p0, Lgnu/kawa/functions/NumberCompare;->flags:I

    invoke-static {v1, p1}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 240
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 241
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_16

    const/4 v3, 0x0

    .line 243
    aget-object v5, v2, v3

    const/4 v6, 0x1

    .line 244
    aget-object v7, v2, v6

    .line 245
    invoke-static {v5}, Lgnu/kawa/functions/NumberCompare;->classify(Lgnu/expr/Expression;)I

    move-result v8

    .line 246
    invoke-static {v7}, Lgnu/kawa/functions/NumberCompare;->classify(Lgnu/expr/Expression;)I

    move-result v9

    .line 247
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v10

    if-lez v8, :cond_16

    if-lez v9, :cond_16

    const/16 v11, 0xa

    if-gt v8, v11, :cond_16

    if-gt v9, v11, :cond_16

    const/4 v11, 0x6

    if-ne v8, v11, :cond_0

    if-eq v9, v11, :cond_16

    .line 253
    :cond_0
    instance-of v11, v1, Lgnu/expr/ConditionalTarget;

    if-nez v11, :cond_1

    .line 255
    sget-object v2, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    sget-object v3, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    move-object/from16 v4, p1

    invoke-static {v4, v2, v3, v0, v1}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    :cond_1
    move-object/from16 v11, p0

    .line 259
    iget v12, v11, Lgnu/kawa/functions/NumberCompare;->flags:I

    const/16 v13, 0x14

    if-ne v12, v6, :cond_2

    const/16 v12, 0x14

    :cond_2
    const/16 v14, 0x8

    const/4 v15, 0x4

    if-gt v8, v15, :cond_8

    if-gt v9, v15, :cond_8

    if-gt v8, v4, :cond_3

    if-le v9, v4, :cond_8

    :cond_3
    new-array v15, v4, [Lgnu/bytecode/Type;

    .line 266
    sget-object v16, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    aput-object v16, v15, v3

    if-gt v9, v4, :cond_4

    .line 269
    sget-object v5, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    aput-object v5, v15, v6

    goto :goto_0

    :cond_4
    if-gt v8, v4, :cond_6

    .line 271
    instance-of v8, v5, Lgnu/expr/QuoteExp;

    if-nez v8, :cond_5

    instance-of v8, v7, Lgnu/expr/QuoteExp;

    if-nez v8, :cond_5

    instance-of v8, v5, Lgnu/expr/ReferenceExp;

    if-nez v8, :cond_5

    instance-of v8, v7, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_6

    .line 278
    :cond_5
    sget-object v2, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    aput-object v2, v15, v6

    new-array v2, v4, [Lgnu/expr/Expression;

    aput-object v7, v2, v3

    aput-object v5, v2, v6

    if-eq v12, v14, :cond_7

    if-eq v12, v13, :cond_7

    xor-int/lit8 v5, v12, 0x14

    move v12, v5

    goto :goto_0

    .line 286
    :cond_6
    sget-object v5, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    aput-object v5, v15, v6

    .line 287
    :cond_7
    :goto_0
    sget-object v5, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    const-string v7, "compare"

    invoke-virtual {v5, v7, v15}, Lgnu/kawa/lispexpr/LangObjType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v5

    .line 289
    new-instance v7, Lgnu/expr/PrimProcedure;

    invoke-direct {v7, v5}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 290
    new-instance v5, Lgnu/expr/ApplyExp;

    invoke-direct {v5, v7, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 291
    new-instance v7, Lgnu/expr/QuoteExp;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    invoke-direct {v7, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    :cond_8
    if-gt v8, v6, :cond_9

    if-gt v9, v6, :cond_9

    .line 296
    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    goto :goto_1

    :cond_9
    if-gt v8, v4, :cond_a

    if-gt v9, v4, :cond_a

    .line 298
    sget-object v2, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    goto :goto_1

    .line 300
    :cond_a
    sget-object v2, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    .line 301
    :goto_1
    new-instance v4, Lgnu/expr/StackTarget;

    invoke-direct {v4, v2}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 302
    check-cast v1, Lgnu/expr/ConditionalTarget;

    .line 305
    instance-of v2, v5, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_c

    instance-of v2, v7, Lgnu/expr/QuoteExp;

    if-nez v2, :cond_c

    if-eq v12, v14, :cond_b

    if-eq v12, v13, :cond_b

    xor-int/lit8 v12, v12, 0x14

    :cond_b
    move-object/from16 v17, v7

    move-object v7, v5

    move-object/from16 v5, v17

    .line 311
    :cond_c
    iget-boolean v2, v1, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v2, :cond_d

    iget-object v2, v1, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    goto :goto_2

    :cond_d
    iget-object v2, v1, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    .line 312
    :goto_2
    iget-boolean v15, v1, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v15, :cond_e

    xor-int/lit8 v12, v12, 0x1c

    :cond_e
    const/4 v15, 0x4

    if-eq v12, v15, :cond_14

    if-eq v12, v14, :cond_13

    const/16 v14, 0xc

    if-eq v12, v14, :cond_12

    const/16 v14, 0x10

    if-eq v12, v14, :cond_11

    if-eq v12, v13, :cond_10

    const/16 v13, 0x18

    if-eq v12, v13, :cond_f

    goto :goto_3

    :cond_f
    const/16 v3, 0x9c

    goto :goto_3

    :cond_10
    const/16 v3, 0x9a

    goto :goto_3

    :cond_11
    const/16 v3, 0x9d

    goto :goto_3

    :cond_12
    const/16 v3, 0x9e

    goto :goto_3

    :cond_13
    const/16 v3, 0x99

    goto :goto_3

    :cond_14
    const/16 v3, 0x9b

    .line 325
    :goto_3
    invoke-virtual {v5, v0, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    if-gt v8, v6, :cond_15

    if-gt v9, v6, :cond_15

    .line 327
    instance-of v5, v7, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_15

    move-object v5, v7

    check-cast v5, Lgnu/expr/QuoteExp;

    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lgnu/math/IntNum;

    if-eqz v6, :cond_15

    check-cast v5, Lgnu/math/IntNum;

    invoke-virtual {v5}, Lgnu/math/IntNum;->isZero()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 332
    invoke-virtual {v10, v2, v3}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    goto :goto_4

    .line 336
    :cond_15
    invoke-virtual {v7, v0, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 337
    invoke-virtual {v10, v2, v3}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    .line 339
    :goto_4
    invoke-virtual {v1, v10}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    return-void

    :cond_16
    move-object/from16 v11, p0

    move-object/from16 v4, p1

    .line 343
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .locals 1

    .line 111
    iget-object v0, p0, Lgnu/kawa/functions/NumberCompare;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 365
    sget-object p1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    return-object p1
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, -0xffe

    return v0
.end method
