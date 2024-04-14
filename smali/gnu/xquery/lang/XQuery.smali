.class public Lgnu/xquery/lang/XQuery;
.super Lgnu/expr/Language;
.source "XQuery.java"


# static fields
.field public static final DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

.field public static final DEFAULT_FUNCTION_PREFIX:Ljava/lang/String; = "(functions)"

.field public static final KAWA_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://kawa.gnu.org/"

.field public static final LOCAL_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/xquery-local-functions"

.field public static final PARSE_WITH_FOCUS:I = 0x10000

.field public static final QEXO_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://qexo.gnu.org/"

.field public static final SCHEMA_INSTANCE_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema-instance"

.field public static final SCHEMA_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final VARIADIC_FUNCTION_NAMESPACE:I = -0x2

.field public static final XHTML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"

.field public static final XQUERY_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions"

.field static charIsInt:Z

.field public static final defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

.field static envCounter:I

.field public static extensionsEnvEnv:Lgnu/mapping/Environment;

.field public static falseExp:Lgnu/expr/QuoteExp;

.field public static final falseFunction:Lgnu/kawa/functions/ConstantFunction0;

.field public static final instance:Lgnu/xquery/lang/XQuery;

.field public static final kawaFunctionNamespace:Lgnu/mapping/Namespace;

.field public static final qexoFunctionNamespace:Lgnu/mapping/Namespace;

.field public static trueExp:Lgnu/expr/QuoteExp;

.field public static final trueFunction:Lgnu/kawa/functions/ConstantFunction0;

.field static typeMap:[Ljava/lang/Object;

.field public static final xqEnvironment:Lgnu/mapping/Environment;

.field public static final xqueryFunctionNamespace:Lgnu/mapping/Namespace;


# instance fields
.field defaultNamespace:Lgnu/mapping/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "http://www.w3.org/2005/xpath-functions"

    .line 41
    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v1

    sput-object v1, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    const-string v2, "http://kawa.gnu.org/"

    .line 43
    invoke-static {v2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v3

    sput-object v3, Lgnu/xquery/lang/XQuery;->kawaFunctionNamespace:Lgnu/mapping/Namespace;

    const-string v4, "http://qexo.gnu.org/"

    .line 45
    invoke-static {v4}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v4

    sput-object v4, Lgnu/xquery/lang/XQuery;->qexoFunctionNamespace:Lgnu/mapping/Namespace;

    const/4 v5, 0x4

    new-array v6, v5, [Lgnu/mapping/Namespace;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v1, v6, v4

    .line 47
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const/4 v8, 0x2

    aput-object v1, v6, v8

    const/4 v1, 0x3

    aput-object v3, v6, v1

    sput-object v6, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    .line 52
    sput-boolean v7, Lgnu/xquery/lang/XQuery;->charIsInt:Z

    const/4 v3, 0x0

    .line 55
    sput-object v3, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    .line 279
    sput v7, Lgnu/xquery/lang/XQuery;->envCounter:I

    .line 282
    invoke-static {v2}, Lgnu/mapping/Environment;->getInstance(Ljava/lang/String;)Lgnu/mapping/Environment;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQuery;->extensionsEnvEnv:Lgnu/mapping/Environment;

    .line 553
    invoke-static {v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    .line 558
    new-instance v0, Lgnu/xquery/lang/XQuery;

    invoke-direct {v0}, Lgnu/xquery/lang/XQuery;-><init>()V

    sput-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    .line 559
    invoke-direct {v0}, Lgnu/xquery/lang/XQuery;->initXQuery()V

    .line 763
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-direct {v0, v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    .line 765
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-direct {v0, v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    .line 768
    new-instance v0, Lgnu/kawa/functions/ConstantFunction0;

    sget-object v2, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    const-string v3, "false"

    invoke-direct {v0, v3, v2}, Lgnu/kawa/functions/ConstantFunction0;-><init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->falseFunction:Lgnu/kawa/functions/ConstantFunction0;

    .line 770
    new-instance v0, Lgnu/kawa/functions/ConstantFunction0;

    sget-object v2, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    const-string v3, "true"

    invoke-direct {v0, v3, v2}, Lgnu/kawa/functions/ConstantFunction0;-><init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->trueFunction:Lgnu/kawa/functions/ConstantFunction0;

    const/16 v0, 0x60

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "string"

    aput-object v2, v0, v7

    .line 778
    sget-object v2, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v4

    const-string v2, "untypedAtomic"

    aput-object v2, v0, v8

    sget-object v2, Lgnu/kawa/xml/XDataType;->untypedAtomicType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const-string v1, "boolean"

    aput-object v1, v0, v5

    sget-object v1, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const-string v2, "integer"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    const-string v2, "long"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->longType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0xa

    const-string v2, "int"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->intType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0xc

    const-string v2, "short"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->shortType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0xe

    const-string v2, "byte"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->byteType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/16 v1, 0x10

    const-string v2, "unsignedLong"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->unsignedLongType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x12

    const-string v2, "unsignedInt"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->unsignedIntType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v1, 0x14

    const-string v2, "unsignedShort"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->unsignedShortType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/16 v1, 0x16

    const-string v2, "unsignedByte"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->unsignedByteType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/16 v1, 0x18

    const-string v2, "positiveInteger"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->positiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const/16 v1, 0x1a

    const-string v2, "nonPositiveInteger"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->nonPositiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const/16 v1, 0x1c

    const-string v2, "negativeInteger"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->negativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const/16 v1, 0x1e

    const-string v2, "nonNegativeInteger"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const/16 v1, 0x20

    const-string v2, "date"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->dateType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const/16 v1, 0x22

    const-string v2, "dateTime"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const/16 v1, 0x24

    const-string v2, "time"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->timeType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const/16 v1, 0x26

    const-string v2, "duration"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->durationType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const/16 v1, 0x28

    const-string v2, "yearMonthDuration"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->yearMonthDurationType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const/16 v1, 0x2a

    const-string v2, "dayTimeDuration"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->dayTimeDurationType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const/16 v1, 0x2c

    const-string v2, "gYearMonth"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->gYearMonthType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const/16 v1, 0x2e

    const-string v2, "gYear"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->gYearType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const/16 v1, 0x30

    const-string v2, "gMonthDay"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->gMonthDayType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const/16 v1, 0x32

    const-string v2, "gDay"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->gDayType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const/16 v1, 0x34

    const-string v2, "gMonth"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->gMonthType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const/16 v1, 0x36

    const-string v2, "decimal"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const/16 v1, 0x38

    const-string v2, "float"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->floatType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const/16 v1, 0x3a

    const-string v2, "double"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const/16 v1, 0x3c

    const-string v2, "anyURI"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->anyURIType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const/16 v1, 0x3e

    const-string v2, "hexBinary"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->hexBinaryType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const/16 v1, 0x40

    const-string v2, "base64Binary"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->base64BinaryType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const/16 v1, 0x42

    const-string v2, "NOTATION"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->NotationType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const/16 v1, 0x44

    const-string v2, "QName"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "gnu.mapping.Symbol"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "normalizedString"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const/16 v1, 0x48

    const-string v2, "token"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const/16 v1, 0x4a

    const-string v2, "language"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->languageType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const/16 v1, 0x4c

    const-string v2, "NMTOKEN"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->NMTOKENType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const/16 v1, 0x4e

    const-string v2, "Name"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->NameType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const/16 v1, 0x50

    const-string v2, "NCName"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const/16 v1, 0x52

    const-string v2, "ID"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->IDType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const/16 v1, 0x54

    const-string v2, "IDREF"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->IDREFType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const/16 v1, 0x56

    const-string v2, "ENTITY"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->ENTITYType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const/16 v1, 0x58

    const-string v2, "anyAtomicType"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const/16 v1, 0x5a

    const-string v2, "anySimpleType"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->anySimpleType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const/16 v1, 0x5c

    const-string v2, "untyped"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->untypedType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const/16 v1, 0x5e

    const-string v2, "anyType"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    sput-object v0, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 562
    invoke-direct {p0}, Lgnu/expr/Language;-><init>()V

    .line 563
    sget-object v0, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lgnu/xquery/lang/XQuery;->environ:Lgnu/mapping/Environment;

    .line 564
    sget-object v0, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    return-void
.end method

.method public static asChar(Ljava/lang/Object;)C
    .locals 1

    .line 75
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_0

    .line 76
    check-cast p0, Lgnu/text/Char;

    invoke-virtual {p0}, Lgnu/text/Char;->charValue()C

    move-result p0

    return p0

    .line 78
    :cond_0
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 79
    check-cast p0, Lgnu/math/Numeric;

    invoke-virtual {p0}, Lgnu/math/Numeric;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    const v0, 0xffff

    if-gt p0, v0, :cond_2

    int-to-char p0, p0

    return p0

    .line 83
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    const-string v0, "not a character value"

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asNumber(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1

    .line 68
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_0

    .line 69
    check-cast p0, Lgnu/text/Char;

    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 70
    :cond_0
    check-cast p0, Lgnu/math/Numeric;

    return-object p0
.end method

.method public static getExternal(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 997
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    const/4 v1, 0x0

    .line 998
    invoke-virtual {v0, p0, v1, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1000
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_5

    if-nez p1, :cond_1

    return-object v2

    .line 1007
    :cond_1
    instance-of v0, p1, Lgnu/kawa/xml/XDataType;

    if-eqz v0, :cond_2

    .line 1008
    check-cast p1, Lgnu/kawa/xml/XDataType;

    invoke-virtual {p1, v2}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1009
    :cond_2
    instance-of v0, p1, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_4

    .line 1011
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gnu.math.IntNum"

    .line 1013
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1014
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "gnu.math.RealNum"

    .line 1015
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1016
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object p0

    return-object p0

    .line 1020
    :cond_4
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {v0, v2}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1024
    :catch_0
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 1004
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbound external "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lgnu/xquery/lang/XQuery;
    .locals 1

    .line 753
    sget-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    return-object v0
.end method

.method public static getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 2

    .line 831
    sget-object v0, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    array-length v0, v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_2

    .line 833
    sget-object v1, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    sget-object p0, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aget-object p0, p0, v0

    .line 836
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 837
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p0

    return-object p0

    .line 839
    :cond_1
    check-cast p0, Lgnu/bytecode/Type;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private initXQuery()V
    .locals 6

    const/4 v0, 0x1

    .line 569
    invoke-static {v0}, Lgnu/expr/ModuleBody;->setMainPrintValues(Z)V

    const-string v0, "unescaped-data"

    const-string v1, "gnu.kawa.xml.MakeUnescapedData"

    const-string v2, "unescapedData"

    .line 571
    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "item-at"

    const-string v1, "gnu.xquery.util.ItemAt"

    const-string v2, "itemAt"

    .line 572
    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "count"

    const-string v1, "gnu.kawa.functions.CountValues"

    const-string v2, "countValues"

    .line 573
    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sum"

    const-string v1, "gnu.xquery.util.Reduce"

    .line 574
    invoke-virtual {p0, v0, v1, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "avg"

    const-string v1, "gnu.xquery.util.Average"

    .line 575
    invoke-virtual {p0, v0, v1, v0}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sublist"

    const-string v1, "gnu.xquery.util.SubList"

    const-string v2, "subList"

    .line 576
    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "subsequence"

    .line 577
    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "empty"

    const-string v1, "gnu.xquery.util.SequenceUtils"

    const-string v2, "isEmptySequence"

    .line 578
    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "exists"

    .line 580
    invoke-virtual {p0, v0, v1, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "insert-before"

    const-string v2, "insertBefore$X"

    .line 582
    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "remove"

    const-string v2, "remove$X"

    .line 584
    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reverse"

    const-string v2, "reverse$X"

    .line 586
    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "false"

    const-string v2, "gnu.xquery.lang.XQuery"

    const-string v3, "falseFunction"

    .line 588
    invoke-virtual {p0, v0, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "true"

    const-string v3, "trueFunction"

    .line 589
    invoke-virtual {p0, v0, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "boolean"

    const-string v2, "gnu.xquery.util.BooleanValue"

    const-string v3, "booleanValue"

    .line 590
    invoke-virtual {p0, v0, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "trace"

    const-string v3, "gnu.xquery.util.Debug"

    .line 592
    invoke-virtual {p0, v0, v3, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "error"

    const-string v3, "gnu.xquery.util.XQException"

    .line 593
    invoke-virtual {p0, v0, v3, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "write-to"

    const-string v3, "gnu.kawa.xml.WriteTo"

    const-string v4, "writeTo"

    .line 595
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "write-to-if-changed"

    const-string v4, "writeToIfChanged"

    .line 596
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iterator-items"

    const-string v3, "gnu.kawa.xml.IteratorItems"

    const-string v4, "iteratorItems"

    .line 598
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "list-items"

    const-string v3, "gnu.kawa.xml.ListItems"

    const-string v4, "listItems"

    .line 600
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "node-name"

    const-string v3, "gnu.xquery.util.NodeUtils"

    const-string v4, "nodeName"

    .line 601
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nilled"

    .line 602
    invoke-virtual {p0, v0, v3, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data"

    const-string v4, "data$X"

    .line 603
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lower-case"

    const-string v4, "gnu.xquery.util.StringUtils"

    const-string v5, "lowerCase"

    .line 604
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "upper-case"

    const-string v5, "upperCase"

    .line 605
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "substring"

    .line 606
    invoke-virtual {p0, v0, v4, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "string-length"

    const-string v5, "stringLength"

    .line 607
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "substring-before"

    const-string v5, "substringBefore"

    .line 609
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "substring-after"

    const-string v5, "substringAfter"

    .line 611
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "translate"

    .line 613
    invoke-virtual {p0, v0, v4, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "encode-for-uri"

    const-string v5, "encodeForUri"

    .line 614
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iri-to-uri"

    const-string v5, "iriToUri"

    .line 616
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "escape-html-uri"

    const-string v5, "escapeHtmlUri"

    .line 617
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contains"

    .line 621
    invoke-virtual {p0, v0, v4, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "starts-with"

    const-string v5, "startsWith"

    .line 622
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ends-with"

    const-string v5, "endsWith"

    .line 623
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "codepoint-equal"

    const-string v5, "codepointEqual"

    .line 624
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "normalize-unicode"

    const-string v5, "normalizeUnicode"

    .line 626
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "string-join"

    const-string v5, "stringJoin"

    .line 628
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "concat"

    const-string v5, "concat$V"

    .line 629
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "matches"

    .line 630
    invoke-virtual {p0, v0, v4, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "replace"

    const-string v5, "replace"

    .line 631
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tokenize"

    const-string v5, "tokenize$X"

    .line 632
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "string-to-codepoints"

    const-string v5, "stringToCodepoints$X"

    .line 633
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "codepoints-to-string"

    const-string v5, "codepointsToString"

    .line 635
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "abs"

    const-string v4, "gnu.xquery.util.NumberValue"

    const-string v5, "abs"

    .line 638
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "floor"

    const-string v5, "floor"

    .line 639
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ceiling"

    const-string v5, "ceiling"

    .line 640
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "round"

    const-string v5, "round"

    .line 641
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "round-half-to-even"

    const-string v5, "roundHalfToEven"

    .line 642
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QName"

    const-string v4, "gnu.xquery.util.QNameUtils"

    const-string v5, "makeQName"

    .line 645
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "resolve-QName"

    const-string v5, "resolveQNameUsingElement"

    .line 646
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "prefix-from-QName"

    const-string v5, "prefixFromQName"

    .line 648
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "local-name-from-QName"

    const-string v5, "localNameFromQName"

    .line 650
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "namespace-uri-from-QName"

    const-string v5, "namespaceURIFromQName"

    .line 652
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "namespace-uri-for-prefix"

    const-string v5, "namespaceURIForPrefix"

    .line 654
    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "in-scope-prefixes"

    const-string v4, "inScopePrefixes$X"

    .line 656
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "document-uri"

    const-string v4, "documentUri"

    .line 658
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "years-from-duration"

    const-string v3, "gnu.xquery.util.TimeUtils"

    const-string v4, "yearsFromDuration"

    .line 660
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "months-from-duration"

    const-string v4, "monthsFromDuration"

    .line 662
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "days-from-duration"

    const-string v4, "daysFromDuration"

    .line 664
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hours-from-duration"

    const-string v4, "hoursFromDuration"

    .line 666
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "minutes-from-duration"

    const-string v4, "minutesFromDuration"

    .line 668
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "seconds-from-duration"

    const-string v4, "secondsFromDuration"

    .line 670
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "year-from-dateTime"

    const-string v4, "yearFromDateTime"

    .line 672
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "month-from-dateTime"

    const-string v4, "monthFromDateTime"

    .line 674
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "day-from-dateTime"

    const-string v4, "dayFromDateTime"

    .line 676
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hours-from-dateTime"

    const-string v4, "hoursFromDateTime"

    .line 678
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "minutes-from-dateTime"

    const-string v4, "minutesFromDateTime"

    .line 680
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "seconds-from-dateTime"

    const-string v4, "secondsFromDateTime"

    .line 682
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timezone-from-dateTime"

    const-string v4, "timezoneFromDateTime"

    .line 684
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "year-from-date"

    const-string v4, "yearFromDate"

    .line 686
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "month-from-date"

    const-string v4, "monthFromDate"

    .line 688
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "day-from-date"

    const-string v4, "dayFromDate"

    .line 690
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timezone-from-date"

    const-string v4, "timezoneFromDate"

    .line 692
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hours-from-time"

    const-string v4, "hoursFromTime"

    .line 694
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "minutes-from-time"

    const-string v4, "minutesFromTime"

    .line 696
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "seconds-from-time"

    const-string v4, "secondsFromTime"

    .line 698
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timezone-from-time"

    const-string v4, "timezoneFromTime"

    .line 700
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adjust-dateTime-to-timezone"

    const-string v4, "adjustDateTimeToTimezone"

    .line 702
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adjust-date-to-timezone"

    const-string v4, "adjustDateToTimezone"

    .line 704
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adjust-time-to-timezone"

    const-string v4, "adjustTimeToTimezone"

    .line 706
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dateTime"

    const-string v4, "dateTime"

    .line 708
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current-dateTime"

    const-string v4, "currentDateTime"

    .line 709
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current-date"

    const-string v4, "currentDate"

    .line 711
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current-time"

    const-string v4, "currentTime"

    .line 713
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "implicit-timezone"

    const-string v4, "implicitTimezone"

    .line 715
    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "zero-or-one"

    const-string v3, "zeroOrOne"

    .line 718
    invoke-virtual {p0, v0, v1, v3}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "one-or-more"

    const-string v3, "oneOrMore"

    .line 719
    invoke-virtual {p0, v0, v1, v3}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "exactly-one"

    const-string v3, "exactlyOne"

    .line 720
    invoke-virtual {p0, v0, v1, v3}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "distinct-nodes"

    const-string v1, "gnu.kawa.xml.SortNodes"

    const-string v3, "sortNodes"

    .line 722
    invoke-virtual {p0, v0, v1, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "children"

    const-string v1, "gnu.kawa.xml.Children"

    const-string v3, "children"

    .line 725
    invoke-virtual {p0, v0, v1, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "not"

    const-string v1, "not"

    .line 726
    invoke-virtual {p0, v0, v2, v1}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    sget-object v0, Lgnu/xquery/lang/XQuery;->qexoFunctionNamespace:Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    const-string v0, "response-header"

    const-string v1, "gnu.kawa.servlet.HTTP"

    .line 729
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "response-content-type"

    .line 730
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "response-status"

    .line 731
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "error-response"

    .line 732
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current-servlet"

    .line 733
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current-servlet-context"

    .line 734
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current-servlet-config"

    .line 735
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "servlet-context-realpath"

    .line 736
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "get-response"

    .line 737
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "get-request"

    .line 738
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request-method"

    .line 739
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request-uri"

    .line 740
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request-url"

    .line 741
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request-path-info"

    .line 742
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request-path-translated"

    .line 743
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request-servlet-path"

    .line 744
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request-query-string"

    .line 745
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request-parameter"

    .line 746
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request-parameters"

    .line 747
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    sget-object v0, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    return-void
.end method

.method public static makeClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 985
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 986
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 988
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 989
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 991
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 992
    :cond_1
    invoke-static {p0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mangle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 978
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 979
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x55

    invoke-static {p0, v2, v1, v0, v3}, Lgnu/xquery/lang/XQuery;->mangle(Ljava/lang/String;IILjava/lang/StringBuffer;C)V

    .line 980
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static mangle(Ljava/lang/String;IILjava/lang/StringBuffer;C)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 929
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_0
    const/16 v8, 0x50

    :goto_0
    if-ge v7, v1, :cond_f

    add-int v9, p1, v7

    .line 933
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v7, v7, 0x1

    .line 935
    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    const/16 v11, 0x4d

    const/16 v12, 0x4f

    const/16 v13, 0x4c

    const/16 v14, 0x44

    const/16 v15, 0x55

    const/16 v16, 0x1

    if-eqz v10, :cond_3

    if-ne v8, v15, :cond_2

    if-ge v7, v1, :cond_1

    add-int v8, p1, v7

    .line 937
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :cond_2
    :goto_1
    const/16 v8, 0x55

    goto :goto_6

    .line 942
    :cond_3
    invoke-static {v9}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v10

    if-eqz v10, :cond_6

    if-ne v8, v13, :cond_5

    if-eq v8, v15, :cond_4

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    :cond_5
    :goto_2
    const/16 v8, 0x4c

    goto :goto_6

    .line 947
    :cond_6
    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_8

    if-eq v8, v12, :cond_7

    goto :goto_3

    :cond_7
    const/16 v16, 0x0

    :goto_3
    const/16 v8, 0x4f

    goto :goto_6

    .line 952
    :cond_8
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_a

    if-eq v8, v14, :cond_9

    goto :goto_4

    :cond_9
    const/16 v16, 0x0

    :goto_4
    const/16 v8, 0x44

    goto :goto_6

    .line 957
    :cond_a
    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eq v8, v14, :cond_b

    if-eq v8, v11, :cond_b

    goto :goto_5

    :cond_b
    const/16 v16, 0x0

    :goto_5
    const/16 v8, 0x4d

    :goto_6
    const/16 v10, 0x5f

    if-nez v16, :cond_c

    if-ne v3, v10, :cond_e

    :cond_c
    if-eqz v16, :cond_d

    if-ne v3, v10, :cond_d

    .line 969
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-le v11, v4, :cond_d

    .line 970
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 971
    :cond_d
    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    .line 973
    :cond_e
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public static namespaceForFunctions(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x2

    or-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static registerEnvironment()V
    .locals 1

    const/4 v0, 0x1

    .line 759
    sput-boolean v0, Lgnu/expr/ApplicationMainSupport;->processCommandLinePropertyAssignments:Z

    .line 760
    sget-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    return-void
.end method


# virtual methods
.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 373
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    .line 377
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 378
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 382
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 383
    throw p1
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 324
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    .line 328
    :try_start_0
    invoke-static {p3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p3

    invoke-static {p4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4, v0}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 329
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 333
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 334
    throw p1
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;IILgnu/lists/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 298
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 299
    invoke-static {p3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p3

    invoke-static {p4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4, v0}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 300
    iget-object p1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 303
    :try_start_0
    iput-object p5, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 304
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    iput-object p1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void

    :catchall_0
    move-exception p2

    iput-object p1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw p2
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 349
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 350
    iget-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 353
    :try_start_0
    iput-object p3, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 354
    invoke-virtual {p0, p1, p2, v0}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void

    :catchall_0
    move-exception p1

    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw p1
.end method

.method public applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 400
    instance-of v0, p2, Lgnu/mapping/Values;

    if-eqz v0, :cond_2

    .line 402
    move-object v0, p2

    check-cast v0, Lgnu/mapping/Values;

    .line 403
    invoke-virtual {v0}, Lgnu/mapping/Values;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 407
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    const/4 v3, 0x1

    .line 410
    :goto_0
    invoke-virtual {v0, p2}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v5

    invoke-virtual {p1, v4, v5, v2, p3}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 411
    invoke-virtual {p3}, Lgnu/mapping/CallContext;->runUntilDone()V

    if-ne v3, v1, :cond_1

    goto :goto_1

    .line 414
    :cond_1
    invoke-virtual {v0, p2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 419
    :cond_2
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    .line 420
    invoke-virtual {p1, p2, v0, v0, p3}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 421
    invoke-virtual {p3}, Lgnu/mapping/CallContext;->runUntilDone()V

    :goto_1
    return-void
.end method

.method public define(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 258
    iget-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    invoke-static {v0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 259
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    iget-object v1, p0, Lgnu/xquery/lang/XQuery;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v1, p1, v0, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    invoke-static {v0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 268
    invoke-static {p2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p2

    const/4 v0, 0x0

    .line 269
    invoke-static {p2, p3, v0, p0}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object p2

    .line 270
    invoke-virtual {p2, p1}, Lgnu/mapping/Procedure;->setSymbol(Ljava/lang/Object;)V

    .line 271
    iget-object p3, p0, Lgnu/xquery/lang/XQuery;->environ:Lgnu/mapping/Environment;

    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {p3, p1, v0, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 452
    instance-of v0, p1, Lgnu/mapping/InPort;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/mapping/InPort;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/mapping/InPort;

    invoke-direct {v0, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    :goto_0
    const v0, 0x10001

    .line 453
    invoke-virtual {p0, p1, p2, v0}, Lgnu/xquery/lang/XQuery;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object p1

    .line 454
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object p2

    .line 455
    invoke-virtual {p2}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v0

    .line 458
    :try_start_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, p1, v2, v2}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    .line 459
    invoke-virtual {p2, v0}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/mapping/Procedure;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 463
    invoke-virtual {p2, v0}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 464
    throw p1
.end method

.method public evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 434
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 435
    new-instance v1, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v1, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object p1

    .line 436
    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 437
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid syntax in eval form:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public evalWithFocus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 491
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public evalWithFocus(Ljava/lang/String;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 505
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public evalWithFocus(Ljava/io/Reader;Lgnu/text/SourceMessages;Ljava/lang/Object;IILgnu/lists/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 521
    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;IILgnu/lists/Consumer;)V

    return-void
.end method

.method public evalWithFocus(Ljava/io/Reader;Lgnu/text/SourceMessages;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 479
    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/lists/Consumer;)V

    return-void
.end method

.method public eval_with_focus$X(Ljava/lang/String;Ljava/lang/Object;IILgnu/mapping/CallContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 549
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object p1

    .line 550
    invoke-static {p3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p3

    invoke-static {p4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4, p5}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public eval_with_focus$X(Ljava/lang/String;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 535
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 2

    .line 856
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gnu.math.IntNum"

    .line 857
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "xs:integer"

    return-object p1

    :cond_0
    const-string v1, "java.lang.String"

    .line 859
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "java.lang.CharSequence"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 862
    :cond_1
    invoke-virtual {p1}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "xs:string"

    return-object p1
.end method

.method public getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;
    .locals 0

    .line 99
    new-instance p1, Lgnu/expr/Compilation;

    invoke-direct {p1, p0, p2, p3}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    return-object p1
.end method

.method public getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
    .locals 1

    .line 94
    new-instance v0, Lgnu/xquery/lang/XQParser;

    invoke-direct {v0, p1, p2, p0}, Lgnu/xquery/lang/XQParser;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "XQuery"

    return-object v0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 3

    .line 210
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getCode()I

    move-result v0

    const/4 v1, -0x2

    if-gez v0, :cond_0

    return v1

    .line 214
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p1

    .line 215
    instance-of v0, p1, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_1

    .line 217
    check-cast p1, Lgnu/expr/LambdaExp;

    .line 218
    iget v0, p1, Lgnu/expr/LambdaExp;->min_args:I

    iget v2, p1, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v0, v2, :cond_3

    .line 219
    iget p1, p1, Lgnu/expr/LambdaExp;->min_args:I

    invoke-static {p1}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result p1

    return p1

    .line 221
    :cond_1
    instance-of v0, p1, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_2

    .line 223
    check-cast p1, Lgnu/expr/QuoteExp;

    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 224
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_3

    .line 226
    check-cast p1, Lgnu/mapping/Procedure;

    .line 227
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->minArgs()I

    move-result v0

    .line 228
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->maxArgs()I

    move-result p1

    if-ne v0, p1, :cond_3

    .line 230
    invoke-static {v0}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result p1

    return p1

    .line 233
    :cond_2
    instance-of v0, p1, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_3

    .line 234
    check-cast p1, Lgnu/expr/ReferenceExp;

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result p1

    return p1

    :cond_3
    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;
    .locals 2

    .line 775
    new-instance v0, Lgnu/xml/XMLPrinter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;Z)V

    return-object v0
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .locals 1

    .line 899
    new-instance v0, Lgnu/xquery/lang/Prompter;

    invoke-direct {v0}, Lgnu/xquery/lang/Prompter;-><init>()V

    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 1

    .line 253
    iget-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    invoke-static {v0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 2

    .line 867
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "boolean"

    .line 870
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    sget-object p1, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    return-object p1

    .line 872
    :cond_0
    invoke-static {p1}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 874
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_9

    .line 876
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String"

    .line 877
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 878
    sget-object p1, Lgnu/kawa/xml/XDataType;->stringStringType:Lgnu/kawa/xml/XDataType;

    return-object p1

    :cond_2
    const-string v1, "gnu.kawa.xml.UntypedAtomic"

    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 880
    sget-object p1, Lgnu/kawa/xml/XDataType;->untypedAtomicType:Lgnu/kawa/xml/XDataType;

    return-object p1

    :cond_3
    const-string v1, "java.lang.Boolean"

    .line 881
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 882
    sget-object p1, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    return-object p1

    :cond_4
    const-string v1, "java.lang.Float"

    .line 883
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 884
    sget-object p1, Lgnu/kawa/xml/XDataType;->floatType:Lgnu/kawa/xml/XDataType;

    return-object p1

    :cond_5
    const-string v1, "java.lang.Double"

    .line 885
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 886
    sget-object p1, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    return-object p1

    :cond_6
    const-string v1, "java.math.BigDecimal"

    .line 887
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 888
    sget-object p1, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    return-object p1

    :cond_7
    const-string v1, "gnu.math.Duration"

    .line 889
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 890
    sget-object p1, Lgnu/kawa/xml/XDataType;->durationType:Lgnu/kawa/xml/XDataType;

    return-object p1

    :cond_8
    const-string v1, "gnu.text.Path"

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 892
    sget-object p1, Lgnu/kawa/xml/XDataType;->anyURIType:Lgnu/kawa/xml/XDataType;

    return-object p1

    .line 894
    :cond_9
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 1

    const-string v0, "xs:"

    .line 847
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "xdt:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 850
    :goto_1
    invoke-static {v0}, Lgnu/xquery/lang/XQuery;->getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 851
    :cond_2
    invoke-static {p1}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public hasNamespace(Lgnu/expr/Declaration;I)Z
    .locals 2

    .line 243
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result p1

    if-eq p1, p2, :cond_2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_2

    :cond_0
    if-ne p2, v0, :cond_1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hasSeparateFunctionNamespace()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTrue(Ljava/lang/Object;)Z
    .locals 0

    .line 89
    invoke-static {p1}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public parse(Lgnu/expr/Compilation;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 108
    iget-object v0, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    const/4 v1, 0x2

    .line 109
    sput v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    .line 110
    invoke-virtual {p1}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 111
    iget-object v1, p1, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    check-cast v1, Lgnu/xquery/lang/XQParser;

    .line 112
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->isInteractive()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {v1, p1}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object p2

    if-nez p2, :cond_0

    return v4

    .line 117
    :cond_0
    iput-object p2, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_2

    :cond_1
    const/high16 v2, 0x10000

    and-int/2addr p2, v2

    if-eqz p2, :cond_2

    .line 121
    new-instance p2, Lgnu/expr/LambdaExp;

    const/4 v2, 0x3

    invoke-direct {p2, v2}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 122
    sget-object v2, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {p2, v2}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    const-wide/32 v4, 0x40000

    .line 123
    invoke-virtual {v2, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    const/4 v4, 0x0

    .line 124
    invoke-virtual {v2, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 125
    sget-object v2, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p2, v2, v4}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 126
    sget-object v2, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p2, v2, v4}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 127
    invoke-virtual {p1, p2}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 128
    invoke-virtual {v1, p1}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v2

    iput-object v2, p2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 129
    invoke-virtual {p1, p2}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 130
    iput-object p2, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto :goto_2

    .line 134
    :cond_2
    new-instance p2, Ljava/util/Vector;

    const/16 v2, 0xa

    invoke-direct {p2, v2}, Ljava/util/Vector;-><init>(I)V

    .line 135
    iget-object v2, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 136
    instance-of v5, v2, Lgnu/expr/BeginExp;

    if-eqz v5, :cond_3

    .line 138
    check-cast v2, Lgnu/expr/BeginExp;

    .line 139
    invoke-virtual {v2}, Lgnu/expr/BeginExp;->getExpressionCount()I

    move-result v5

    .line 140
    invoke-virtual {v2}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    .line 142
    aget-object v7, v2, v6

    invoke-virtual {p2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 144
    sget-object v5, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-eq v2, v5, :cond_4

    .line 146
    invoke-virtual {p2, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 150
    :cond_4
    :goto_1
    invoke-virtual {v1, p1}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v2

    if-nez v2, :cond_8

    .line 153
    iget v2, v1, Lgnu/xquery/lang/XQParser;->parseCount:I

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_5

    const/16 p1, 0x65

    const-string p2, "empty module"

    const-string v0, "XPST0003"

    .line 155
    invoke-virtual {v1, p1, p2, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    return v4

    .line 162
    :cond_5
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 164
    sget-object p2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    iput-object p2, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto :goto_2

    :cond_6
    if-ne v2, v3, :cond_7

    .line 166
    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/expr/Expression;

    iput-object p2, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto :goto_2

    .line 169
    :cond_7
    new-array v2, v2, [Lgnu/expr/Expression;

    .line 170
    invoke-virtual {p2, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 171
    new-instance p2, Lgnu/expr/BeginExp;

    invoke-direct {p2, v2}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    iput-object p2, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 177
    :goto_2
    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 188
    new-instance p2, Lgnu/xquery/lang/XQResolveNames;

    invoke-direct {p2, p1}, Lgnu/xquery/lang/XQResolveNames;-><init>(Lgnu/expr/Compilation;)V

    .line 189
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object v2, p2, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 190
    iput-object v1, p2, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    .line 191
    invoke-virtual {p2, v0}, Lgnu/xquery/lang/XQResolveNames;->resolveModule(Lgnu/expr/ModuleExp;)V

    const/4 p2, 0x4

    .line 192
    invoke-virtual {p1, p2}, Lgnu/expr/Compilation;->setState(I)V

    return v3

    .line 160
    :cond_8
    invoke-virtual {p2, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public resolve(Lgnu/expr/Compilation;)V
    .locals 0

    return-void
.end method
