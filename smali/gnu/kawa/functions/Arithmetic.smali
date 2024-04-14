.class public Lgnu/kawa/functions/Arithmetic;
.super Ljava/lang/Object;
.source "Arithmetic.java"


# static fields
.field public static final BIGDECIMAL_CODE:I = 0x5

.field public static final BIGINTEGER_CODE:I = 0x3

.field public static final DOUBLE_CODE:I = 0x8

.field public static final FLOAT_CODE:I = 0x7

.field public static final FLONUM_CODE:I = 0x9

.field public static final INTNUM_CODE:I = 0x4

.field public static final INT_CODE:I = 0x1

.field public static final LONG_CODE:I = 0x2

.field public static final NUMERIC_CODE:I = 0xb

.field public static final RATNUM_CODE:I = 0x6

.field public static final REALNUM_CODE:I = 0xa

.field static typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeNumber:Lgnu/bytecode/ClassType;

.field static typeNumeric:Lgnu/bytecode/ClassType;

.field static typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeRealNum:Lgnu/kawa/lispexpr/LangObjType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 109
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 110
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    const-string v0, "java.lang.Number"

    .line 111
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumber:Lgnu/bytecode/ClassType;

    const-string v0, "gnu.math.Numeric"

    .line 112
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    .line 113
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 2

    .line 213
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 214
    check-cast p0, Ljava/math/BigDecimal;

    return-object p0

    .line 215
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 216
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 217
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 220
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 219
    :cond_3
    :goto_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 2

    .line 183
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 184
    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    .line 185
    :cond_0
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 187
    :cond_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static asDouble(Ljava/lang/Object;)D
    .locals 2

    .line 178
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static asFloat(Ljava/lang/Object;)F
    .locals 0

    .line 173
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static asInt(Ljava/lang/Object;)I
    .locals 0

    .line 163
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;
    .locals 2

    .line 202
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 203
    check-cast p0, Lgnu/math/IntNum;

    return-object p0

    .line 204
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 206
    :cond_1
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 207
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 208
    :cond_2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;
    .locals 1

    .line 192
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;
    .locals 1

    .line 197
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static asLong(Ljava/lang/Object;)J
    .locals 2

    .line 168
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1

    .line 237
    invoke-static {p0}, Lgnu/math/Numeric;->asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    move-object v0, p0

    check-cast v0, Lgnu/math/Numeric;

    :goto_0
    return-object v0
.end method

.method public static asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;
    .locals 2

    .line 225
    instance-of v0, p0, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 226
    check-cast p0, Lgnu/math/RatNum;

    return-object p0

    .line 227
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 229
    :cond_1
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 230
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lgnu/math/RatNum;->valueOf(Ljava/math/BigDecimal;)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0

    .line 232
    :cond_2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static classifyType(Lgnu/bytecode/Type;)I
    .locals 7

    .line 118
    instance-of v0, p0, Lgnu/bytecode/PrimType;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 120
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x56

    if-eq p0, v0, :cond_4

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_4

    const/16 v0, 0x43

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x44

    if-ne p0, v0, :cond_1

    return v4

    :cond_1
    const/16 v0, 0x46

    if-ne p0, v0, :cond_2

    return v3

    :cond_2
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v5

    .line 132
    :cond_5
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    .line 133
    sget-object v6, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v6}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 p0, 0x4

    return p0

    .line 135
    :cond_6
    sget-object v6, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v6}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 p0, 0x6

    return p0

    .line 137
    :cond_7
    sget-object v6, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v6}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const-string v6, "java.lang.Double"

    .line 139
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    return v4

    :cond_9
    const-string v4, "java.lang.Float"

    .line 141
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    return v3

    :cond_a
    const-string v3, "java.lang.Long"

    .line 143
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    return v2

    :cond_b
    const-string v2, "java.lang.Integer"

    .line 145
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "java.lang.Short"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "java.lang.Byte"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_1

    :cond_c
    const-string v1, "java.math.BigInteger"

    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p0, 0x3

    return p0

    :cond_d
    const-string v1, "java.math.BigDecimal"

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x5

    return p0

    .line 153
    :cond_e
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p0, 0xa

    return p0

    .line 155
    :cond_f
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/16 p0, 0xb

    return p0

    :cond_10
    return v5

    :cond_11
    :goto_1
    return v1
.end method

.method public static classifyValue(Ljava/lang/Object;)I
    .locals 2

    .line 38
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_4

    .line 40
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 42
    :cond_0
    instance-of v0, p0, Lgnu/math/RatNum;

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    .line 44
    :cond_1
    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_2

    const/16 p0, 0x9

    return p0

    .line 46
    :cond_2
    instance-of p0, p0, Lgnu/math/RealNum;

    if-eqz p0, :cond_3

    const/16 p0, 0xa

    return p0

    :cond_3
    const/16 p0, 0xb

    return p0

    .line 51
    :cond_4
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    .line 53
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_b

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_b

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 56
    :cond_5
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 58
    :cond_6
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_7

    const/4 p0, 0x7

    return p0

    .line 60
    :cond_7
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_8

    const/16 p0, 0x8

    return p0

    .line 62
    :cond_8
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_9

    const/4 p0, 0x3

    return p0

    .line 64
    :cond_9
    instance-of p0, p0, Ljava/math/BigDecimal;

    if-eqz p0, :cond_a

    const/4 p0, 0x5

    return p0

    :cond_a
    return v1

    :cond_b
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_c
    return v1
.end method

.method public static convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 337
    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 333
    :pswitch_0
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    return-object p0

    .line 335
    :pswitch_1
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    check-cast p0, Lgnu/math/RealNum;

    return-object p0

    .line 329
    :pswitch_2
    instance-of p1, p0, Lgnu/math/DFloNum;

    if-eqz p1, :cond_0

    return-object p0

    .line 331
    :cond_0
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object p0

    return-object p0

    .line 320
    :pswitch_3
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_1

    return-object p0

    .line 322
    :cond_1
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p0

    .line 324
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 311
    :pswitch_4
    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_2

    return-object p0

    .line 313
    :cond_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p0

    .line 315
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 309
    :pswitch_5
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0

    .line 307
    :pswitch_6
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 305
    :pswitch_7
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 303
    :pswitch_8
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 294
    :pswitch_9
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_3

    return-object p0

    .line 296
    :cond_3
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    .line 298
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 285
    :pswitch_a
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    return-object p0

    .line 287
    :cond_4
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 289
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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

.method public static isExact(Ljava/lang/Number;)Z
    .locals 1

    .line 343
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_0

    .line 344
    check-cast p0, Lgnu/math/Numeric;

    invoke-virtual {p0}, Lgnu/math/Numeric;->isExact()Z

    move-result p0

    return p0

    .line 345
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/math/BigDecimal;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static kindType(I)Lgnu/bytecode/Type;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 100
    sget-object p0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object p0

    .line 98
    :pswitch_0
    sget-object p0, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    return-object p0

    .line 96
    :pswitch_1
    sget-object p0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    return-object p0

    .line 94
    :pswitch_2
    sget-object p0, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    return-object p0

    .line 92
    :pswitch_3
    sget-object p0, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    return-object p0

    .line 90
    :pswitch_4
    sget-object p0, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    return-object p0

    .line 88
    :pswitch_5
    sget-object p0, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    return-object p0

    :pswitch_6
    const-string p0, "java.math.BigDecimal"

    .line 86
    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p0

    return-object p0

    .line 84
    :pswitch_7
    sget-object p0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    return-object p0

    :pswitch_8
    const-string p0, "java.math.BigInteger"

    .line 82
    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p0

    return-object p0

    .line 80
    :pswitch_9
    sget-object p0, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    return-object p0

    .line 78
    :pswitch_a
    sget-object p0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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

.method public static toExact(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2

    .line 351
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_0

    .line 352
    check-cast p0, Lgnu/math/Numeric;

    invoke-virtual {p0}, Lgnu/math/Numeric;->toExact()Lgnu/math/Numeric;

    move-result-object p0

    return-object p0

    .line 353
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    .line 355
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object p0

    return-object p0
.end method

.method public static toInexact(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2

    .line 362
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_0

    .line 363
    check-cast p0, Lgnu/math/Numeric;

    invoke-virtual {p0}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object p0

    return-object p0

    .line 364
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static toString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2

    .line 247
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0xa

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    if-ne p1, v1, :cond_0

    .line 260
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    :pswitch_2
    if-ne p1, v1, :cond_1

    .line 264
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :pswitch_3
    if-ne p1, v1, :cond_2

    .line 269
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 257
    :pswitch_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p0

    invoke-virtual {p0, p1}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 255
    :pswitch_5
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 253
    :pswitch_6
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :pswitch_7
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 272
    :cond_2
    :goto_0
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
