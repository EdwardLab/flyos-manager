.class public Lgnu/kawa/xml/XDataType;
.super Lgnu/bytecode/Type;
.source "XDataType.java"

# interfaces
.implements Lgnu/expr/TypeValue;


# static fields
.field public static final ANY_ATOMIC_TYPE_CODE:I = 0x3

.field public static final ANY_SIMPLE_TYPE_CODE:I = 0x2

.field public static final ANY_URI_TYPE_CODE:I = 0x21

.field public static final BASE64_BINARY_TYPE_CODE:I = 0x22

.field public static final BOOLEAN_TYPE_CODE:I = 0x1f

.field public static final BYTE_TYPE_CODE:I = 0xb

.field public static final DATE_TIME_TYPE_CODE:I = 0x14

.field public static final DATE_TYPE_CODE:I = 0x15

.field public static final DAY_TIME_DURATION_TYPE_CODE:I = 0x1e

.field public static final DECIMAL_ONE:Ljava/math/BigDecimal;

.field public static final DECIMAL_TYPE_CODE:I = 0x4

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_TYPE_CODE:I = 0x13

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final DURATION_TYPE_CODE:I = 0x1c

.field public static final ENTITY_TYPE_CODE:I = 0x2f

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_TYPE_CODE:I = 0x12

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final G_DAY_TYPE_CODE:I = 0x1a

.field public static final G_MONTH_DAY_TYPE_CODE:I = 0x19

.field public static final G_MONTH_TYPE_CODE:I = 0x1b

.field public static final G_YEAR_MONTH_TYPE_CODE:I = 0x17

.field public static final G_YEAR_TYPE_CODE:I = 0x18

.field public static final HEX_BINARY_TYPE_CODE:I = 0x23

.field public static final IDREF_TYPE_CODE:I = 0x2e

.field public static final ID_TYPE_CODE:I = 0x2d

.field public static final INTEGER_TYPE_CODE:I = 0x5

.field public static final INT_TYPE_CODE:I = 0x9

.field public static final LANGUAGE_TYPE_CODE:I = 0x29

.field public static final LONG_TYPE_CODE:I = 0x8

.field public static final NAME_TYPE_CODE:I = 0x2b

.field public static final NCNAME_TYPE_CODE:I = 0x2c

.field public static final NEGATIVE_INTEGER_TYPE_CODE:I = 0x7

.field public static final NMTOKEN_TYPE_CODE:I = 0x2a

.field public static final NONNEGATIVE_INTEGER_TYPE_CODE:I = 0xc

.field public static final NON_POSITIVE_INTEGER_TYPE_CODE:I = 0x6

.field public static final NORMALIZED_STRING_TYPE_CODE:I = 0x27

.field public static final NOTATION_TYPE_CODE:I = 0x24

.field public static final NotationType:Lgnu/kawa/xml/XDataType;

.field public static final POSITIVE_INTEGER_TYPE_CODE:I = 0x11

.field public static final QNAME_TYPE_CODE:I = 0x20

.field public static final SHORT_TYPE_CODE:I = 0xa

.field public static final STRING_TYPE_CODE:I = 0x26

.field public static final TIME_TYPE_CODE:I = 0x16

.field public static final TOKEN_TYPE_CODE:I = 0x28

.field public static final UNSIGNED_BYTE_TYPE_CODE:I = 0x10

.field public static final UNSIGNED_INT_TYPE_CODE:I = 0xe

.field public static final UNSIGNED_LONG_TYPE_CODE:I = 0xd

.field public static final UNSIGNED_SHORT_TYPE_CODE:I = 0xf

.field public static final UNTYPED_ATOMIC_TYPE_CODE:I = 0x25

.field public static final UNTYPED_TYPE_CODE:I = 0x30

.field public static final YEAR_MONTH_DURATION_TYPE_CODE:I = 0x1d

.field public static final anyAtomicType:Lgnu/kawa/xml/XDataType;

.field public static final anySimpleType:Lgnu/kawa/xml/XDataType;

.field public static final anyURIType:Lgnu/kawa/xml/XDataType;

.field public static final base64BinaryType:Lgnu/kawa/xml/XDataType;

.field public static final booleanType:Lgnu/kawa/xml/XDataType;

.field public static final dayTimeDurationType:Lgnu/kawa/xml/XDataType;

.field public static final decimalType:Lgnu/kawa/xml/XDataType;

.field public static final doubleType:Lgnu/kawa/xml/XDataType;

.field public static final durationType:Lgnu/kawa/xml/XDataType;

.field public static final floatType:Lgnu/kawa/xml/XDataType;

.field public static final hexBinaryType:Lgnu/kawa/xml/XDataType;

.field public static final stringStringType:Lgnu/kawa/xml/XDataType;

.field public static final stringType:Lgnu/kawa/xml/XDataType;

.field public static final untypedAtomicType:Lgnu/kawa/xml/XDataType;

.field public static final untypedType:Lgnu/kawa/xml/XDataType;

.field public static final yearMonthDurationType:Lgnu/kawa/xml/XDataType;


# instance fields
.field baseType:Lgnu/kawa/xml/XDataType;

.field implementationType:Lgnu/bytecode/Type;

.field name:Ljava/lang/Object;

.field typeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 100
    new-instance v0, Lgnu/kawa/xml/XDataType;

    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const-string v2, "anySimpleType"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->anySimpleType:Lgnu/kawa/xml/XDataType;

    .line 105
    new-instance v0, Lgnu/kawa/xml/XDataType;

    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const-string v2, "anyAtomicType"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    .line 110
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "java.lang.CharSequence"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "string"

    const/16 v3, 0x26

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    .line 122
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v4, "String"

    invoke-direct {v0, v4, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->stringStringType:Lgnu/kawa/xml/XDataType;

    .line 127
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "gnu.kawa.xml.UntypedAtomic"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const/16 v3, 0x25

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->untypedAtomicType:Lgnu/kawa/xml/XDataType;

    .line 131
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "gnu.kawa.xml.Base64Binary"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "base64Binary"

    const/16 v3, 0x22

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->base64BinaryType:Lgnu/kawa/xml/XDataType;

    .line 135
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "gnu.kawa.xml.HexBinary"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "hexBinary"

    const/16 v3, 0x23

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->hexBinaryType:Lgnu/kawa/xml/XDataType;

    .line 139
    new-instance v0, Lgnu/kawa/xml/XDataType;

    sget-object v1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    const-string v2, "boolean"

    const/16 v3, 0x1f

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    .line 143
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "gnu.text.Path"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "anyURI"

    const/16 v3, 0x21

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->anyURIType:Lgnu/kawa/xml/XDataType;

    .line 146
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "gnu.kawa.xml.Notation"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "NOTATION"

    const/16 v3, 0x24

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->NotationType:Lgnu/kawa/xml/XDataType;

    .line 151
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "java.lang.Number"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "decimal"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    .line 158
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "java.lang.Float"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "float"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->floatType:Lgnu/kawa/xml/XDataType;

    .line 161
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "java.lang.Double"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "double"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    .line 164
    new-instance v0, Lgnu/kawa/xml/XDataType;

    const-string v1, "gnu.math.Duration"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "duration"

    const/16 v4, 0x1c

    invoke-direct {v0, v3, v2, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->durationType:Lgnu/kawa/xml/XDataType;

    .line 168
    new-instance v0, Lgnu/kawa/xml/XDataType;

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "yearMonthDuration"

    const/16 v4, 0x1d

    invoke-direct {v0, v3, v2, v4}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->yearMonthDurationType:Lgnu/kawa/xml/XDataType;

    .line 172
    new-instance v0, Lgnu/kawa/xml/XDataType;

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "dayTimeDuration"

    const/16 v3, 0x1e

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->dayTimeDurationType:Lgnu/kawa/xml/XDataType;

    .line 176
    new-instance v0, Lgnu/kawa/xml/XDataType;

    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const-string v2, "untyped"

    const/16 v3, 0x30

    invoke-direct {v0, v2, v1, v3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    sput-object v0, Lgnu/kawa/xml/XDataType;->untypedType:Lgnu/kawa/xml/XDataType;

    const-wide/16 v0, 0x0

    .line 544
    invoke-static {v0, v1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->DOUBLE_ZERO:Ljava/lang/Double;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 545
    invoke-static {v0, v1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->DOUBLE_ONE:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 546
    invoke-static {v0}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->FLOAT_ZERO:Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 547
    invoke-static {v0}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->FLOAT_ONE:Ljava/lang/Float;

    const-wide/16 v0, 0x1

    .line 548
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p2}, Lgnu/bytecode/Type;-><init>(Lgnu/bytecode/Type;)V

    .line 93
    iput-object p1, p0, Lgnu/kawa/xml/XDataType;->name:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->setName(Ljava/lang/String;)V

    .line 96
    :cond_0
    iput-object p2, p0, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    .line 97
    iput p3, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    return-void
.end method

.method public static makeDouble(D)Ljava/lang/Double;
    .locals 0

    .line 538
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static makeFloat(F)Ljava/lang/Float;
    .locals 0

    .line 529
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 333
    invoke-static {p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 334
    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    const/16 v1, 0x25

    if-eqz v0, :cond_1

    .line 336
    iget v0, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    if-ne v0, v1, :cond_0

    return-object p1

    .line 338
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 340
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 342
    :cond_2
    iget v0, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_12

    if-eq v0, v1, :cond_11

    const/16 v1, 0x26

    if-eq v0, v1, :cond_10

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_7

    .line 429
    :pswitch_0
    instance-of v0, p1, Lgnu/kawa/xml/BinaryObject;

    if-eqz v0, :cond_3

    .line 430
    new-instance v0, Lgnu/kawa/xml/Base64Binary;

    check-cast p1, Lgnu/kawa/xml/BinaryObject;

    invoke-virtual {p1}, Lgnu/kawa/xml/BinaryObject;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lgnu/kawa/xml/Base64Binary;-><init>([B)V

    return-object v0

    .line 432
    :cond_3
    :pswitch_1
    instance-of v0, p1, Lgnu/kawa/xml/BinaryObject;

    if-eqz v0, :cond_17

    .line 433
    new-instance v0, Lgnu/kawa/xml/HexBinary;

    check-cast p1, Lgnu/kawa/xml/BinaryObject;

    invoke-virtual {p1}, Lgnu/kawa/xml/BinaryObject;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lgnu/kawa/xml/HexBinary;-><init>([B)V

    return-object v0

    .line 349
    :pswitch_2
    invoke-static {p1}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object p1

    return-object p1

    .line 351
    :pswitch_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 352
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    .line 354
    :cond_5
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_17

    .line 356
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_7

    .line 357
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_7
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object p1

    .line 427
    :pswitch_4
    sget-object v0, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/xml/XDataType;->castToDuration(Ljava/lang/Object;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p1

    return-object p1

    .line 425
    :pswitch_5
    sget-object v0, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/xml/XDataType;->castToDuration(Ljava/lang/Object;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p1

    return-object p1

    .line 423
    :pswitch_6
    sget-object v0, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/xml/XDataType;->castToDuration(Ljava/lang/Object;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p1

    return-object p1

    .line 402
    :pswitch_7
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_17

    .line 404
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/XTimeType;

    iget v0, v0, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v0}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v0

    .line 405
    check-cast p1, Lgnu/math/DateTime;

    .line 406
    invoke-virtual {p1}, Lgnu/math/DateTime;->components()I

    move-result v1

    if-eq v0, v1, :cond_9

    const/16 v2, 0xe

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    goto :goto_3

    .line 410
    :cond_8
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    .line 409
    :cond_9
    :goto_3
    invoke-virtual {p1, v0}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object p1

    return-object p1

    .line 416
    :pswitch_8
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_17

    .line 418
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/XTimeType;

    iget v0, v0, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v0}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v0

    .line 419
    check-cast p1, Lgnu/math/DateTime;

    invoke-virtual {p1, v0}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object p1

    return-object p1

    .line 389
    :pswitch_9
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_a

    return-object p1

    .line 391
    :cond_a
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_b

    .line 393
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 394
    :cond_b
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    .line 395
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lgnu/kawa/xml/XDataType;->DOUBLE_ONE:Ljava/lang/Double;

    goto :goto_4

    :cond_c
    sget-object p1, Lgnu/kawa/xml/XDataType;->DOUBLE_ZERO:Ljava/lang/Double;

    :goto_4
    return-object p1

    .line 380
    :pswitch_a
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_d

    return-object p1

    .line 382
    :cond_d
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 384
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 385
    :cond_e
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    .line 386
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lgnu/kawa/xml/XDataType;->FLOAT_ONE:Ljava/lang/Float;

    goto :goto_5

    :cond_f
    sget-object p1, Lgnu/kawa/xml/XDataType;->FLOAT_ZERO:Ljava/lang/Float;

    :goto_5
    return-object p1

    .line 345
    :cond_10
    invoke-static {p1}, Lgnu/xml/TextUtils;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 347
    :cond_11
    new-instance v0, Lgnu/kawa/xml/UntypedAtomic;

    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lgnu/kawa/xml/UntypedAtomic;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 362
    :cond_12
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_13

    return-object p1

    .line 364
    :cond_13
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_14

    .line 365
    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 366
    :cond_14
    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_18

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_15

    goto :goto_8

    .line 375
    :cond_15
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    .line 376
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object p1

    goto :goto_6

    :cond_16
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p1

    :goto_6
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 435
    :cond_17
    :goto_7
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 368
    :cond_18
    :goto_8
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 370
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method castToDuration(Ljava/lang/Object;Lgnu/math/Unit;)Lgnu/math/Duration;
    .locals 5

    .line 440
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_3

    .line 442
    check-cast p1, Lgnu/math/Duration;

    .line 443
    invoke-virtual {p1}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-object p1

    .line 445
    :cond_0
    invoke-virtual {p1}, Lgnu/math/Duration;->getTotalMonths()I

    move-result v0

    .line 446
    invoke-virtual {p1}, Lgnu/math/Duration;->getTotalSeconds()J

    move-result-wide v1

    .line 447
    invoke-virtual {p1}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result p1

    .line 448
    sget-object v3, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    const/4 v4, 0x0

    if-ne p2, v3, :cond_1

    const/4 v0, 0x0

    .line 450
    :cond_1
    sget-object v3, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne p2, v3, :cond_2

    const-wide/16 v1, 0x0

    const/4 p1, 0x0

    .line 455
    :cond_2
    invoke-static {v0, v1, v2, p1, p2}, Lgnu/math/Duration;->make(IJILgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p1

    return-object p1

    .line 457
    :cond_3
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/math/Duration;

    return-object p1
.end method

.method public castable(Ljava/lang/Object;)Z
    .locals 0

    .line 322
    :try_start_0
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 462
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 463
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lgnu/kawa/xml/XDataType;->name:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 2

    if-eq p0, p1, :cond_2

    .line 469
    sget-object v0, Lgnu/kawa/xml/XDataType;->stringStringType:Lgnu/kawa/xml/XDataType;

    if-ne p0, v0, :cond_0

    sget-object v1, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    if-eq p1, v1, :cond_2

    :cond_0
    sget-object v1, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    if-ne p0, v1, :cond_1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 473
    :cond_1
    iget-object v0, p0, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 3

    .line 193
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    .line 194
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v0, p0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    const-string v0, "gnu.kawa.xml.XDataType"

    .line 195
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v1, "coerceFromObject"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 198
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 200
    iget-object v0, p0, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    return-void
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 2

    .line 205
    iget v0, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-super {p0, p1}, Lgnu/bytecode/Type;->emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V

    :goto_0
    return-void
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0

    .line 300
    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 4

    .line 213
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 214
    iget v1, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 218
    :cond_0
    sget-object v1, Lgnu/bytecode/Type;->javalangBooleanType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v0}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 219
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    if-eqz p2, :cond_1

    .line 223
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 224
    sget-object p1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p1, v0}, Lgnu/bytecode/PrimType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 225
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    :cond_1
    return-void

    .line 230
    :cond_2
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p3, p0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    if-nez p1, :cond_3

    .line 232
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    goto :goto_0

    .line 234
    :cond_3
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 235
    :goto_0
    sget-object v1, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const/4 v2, 0x1

    const-string v3, "isInstance"

    invoke-virtual {v1, v3, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 237
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    if-eqz p2, :cond_4

    .line 240
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 241
    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XDataType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 242
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    :cond_4
    return-void
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .line 188
    iget-object v0, p0, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 1

    .line 183
    iget-object v0, p0, Lgnu/kawa/xml/XDataType;->implementationType:Lgnu/bytecode/Type;

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 4

    .line 253
    iget v0, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/16 v1, 0x12

    if-eq v0, v1, :cond_7

    const/16 v1, 0x13

    if-eq v0, v1, :cond_6

    const/16 v1, 0x21

    if-eq v0, v1, :cond_5

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    const/16 v1, 0x25

    if-eq v0, v1, :cond_3

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 293
    invoke-super {p0, p1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 276
    :pswitch_0
    instance-of p1, p1, Ljava/lang/Boolean;

    return p1

    .line 290
    :pswitch_1
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/math/Duration;

    invoke-virtual {p1}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object p1

    sget-object v0, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 287
    :pswitch_2
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_1

    check-cast p1, Lgnu/math/Duration;

    invoke-virtual {p1}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object p1

    sget-object v0, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 285
    :pswitch_3
    instance-of p1, p1, Lgnu/math/Duration;

    return p1

    .line 267
    :cond_2
    instance-of p1, p1, Ljava/lang/CharSequence;

    return p1

    .line 272
    :cond_3
    instance-of p1, p1, Lgnu/kawa/xml/UntypedAtomic;

    return p1

    :cond_4
    return v3

    .line 274
    :cond_5
    instance-of p1, p1, Lgnu/text/Path;

    return p1

    .line 280
    :cond_6
    instance-of p1, p1, Ljava/lang/Double;

    return p1

    .line 278
    :cond_7
    instance-of p1, p1, Ljava/lang/Float;

    return p1

    .line 282
    :cond_8
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-nez v0, :cond_9

    instance-of p1, p1, Lgnu/math/IntNum;

    if-eqz p1, :cond_a

    :cond_9
    const/4 v2, 0x1

    :cond_a
    return v2

    .line 264
    :cond_b
    instance-of v0, p1, Lgnu/mapping/Values;

    if-nez v0, :cond_c

    instance-of p1, p1, Lgnu/lists/SeqPosition;

    if-nez p1, :cond_c

    const/4 v2, 0x1

    :cond_c
    return v2

    .line 258
    :cond_d
    instance-of v0, p1, Lgnu/lists/SeqPosition;

    if-nez v0, :cond_f

    instance-of p1, p1, Lgnu/kawa/xml/Nodes;

    if-eqz p1, :cond_e

    goto :goto_0

    :cond_e
    return v3

    :cond_f
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public print(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 1

    .line 311
    instance-of v0, p1, Lgnu/text/Printable;

    if-eqz v0, :cond_0

    .line 312
    check-cast p1, Lgnu/text/Printable;

    invoke-interface {p1, p2}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XDataType;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 478
    iget v0, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    const/4 v1, 0x4

    const-string v2, "\'"

    if-eq v0, v1, :cond_a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v3, 0x13

    if-eq v0, v3, :cond_6

    const/16 v1, 0x25

    if-eq v0, v1, :cond_5

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 522
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "valueOf not implemented for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/kawa/xml/XDataType;->name:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 520
    :pswitch_0
    invoke-static {p1}, Lgnu/kawa/xml/HexBinary;->valueOf(Ljava/lang/String;)Lgnu/kawa/xml/HexBinary;

    move-result-object p1

    return-object p1

    .line 518
    :pswitch_1
    invoke-static {p1}, Lgnu/kawa/xml/Base64Binary;->valueOf(Ljava/lang/String;)Lgnu/kawa/xml/Base64Binary;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 v0, 0x1

    .line 485
    invoke-static {p1, v0}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object p1

    return-object p1

    .line 487
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    .line 488
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "false"

    .line 490
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 492
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a valid boolean: \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_2
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 489
    :cond_3
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 516
    :pswitch_4
    invoke-static {p1}, Lgnu/math/Duration;->parseDayTimeDuration(Ljava/lang/String;)Lgnu/math/Duration;

    move-result-object p1

    return-object p1

    .line 514
    :pswitch_5
    invoke-static {p1}, Lgnu/math/Duration;->parseYearMonthDuration(Ljava/lang/String;)Lgnu/math/Duration;

    move-result-object p1

    return-object p1

    .line 512
    :pswitch_6
    invoke-static {p1}, Lgnu/math/Duration;->parseDuration(Ljava/lang/String;)Lgnu/math/Duration;

    move-result-object p1

    :cond_4
    return-object p1

    .line 483
    :cond_5
    new-instance v0, Lgnu/kawa/xml/UntypedAtomic;

    invoke-direct {v0, p1}, Lgnu/kawa/xml/UntypedAtomic;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 495
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "INF"

    .line 496
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "Infinity"

    goto :goto_2

    :cond_7
    const-string v0, "-INF"

    .line 497
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "-Infinity"

    .line 498
    :cond_8
    :goto_2
    iget v0, p0, Lgnu/kawa/xml/XDataType;->typeCode:I

    if-ne v0, v1, :cond_9

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto :goto_3

    :cond_9
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    :goto_3
    return-object p1

    .line 501
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 504
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_c

    .line 506
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x65

    if-eq v1, v3, :cond_b

    const/16 v3, 0x45

    if-eq v1, v3, :cond_b

    goto :goto_4

    .line 508
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a valid decimal: \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_c
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
