.class public Lgnu/kawa/lispexpr/LangObjType;
.super Lgnu/bytecode/ObjectType;
.source "LangObjType.java"

# interfaces
.implements Lgnu/expr/TypeValue;


# static fields
.field private static final CLASSTYPE_TYPE_CODE:I = 0x6

.field private static final CLASS_TYPE_CODE:I = 0x4

.field private static final DFLONUM_TYPE_CODE:I = 0xf

.field private static final FILEPATH_TYPE_CODE:I = 0x2

.field private static final INTEGER_TYPE_CODE:I = 0x7

.field private static final LIST_TYPE_CODE:I = 0xb

.field private static final NUMERIC_TYPE_CODE:I = 0xa

.field private static final PATH_TYPE_CODE:I = 0x1

.field private static final RATIONAL_TYPE_CODE:I = 0x8

.field private static final REAL_TYPE_CODE:I = 0x9

.field private static final REGEX_TYPE_CODE:I = 0xe

.field private static final STRING_TYPE_CODE:I = 0xd

.field private static final TYPE_TYPE_CODE:I = 0x5

.field public static final URIType:Lgnu/kawa/lispexpr/LangObjType;

.field private static final URI_TYPE_CODE:I = 0x3

.field static final VARARGS_SUFFIX:Ljava/lang/String; = ""

.field private static final VECTOR_TYPE_CODE:I = 0xc

.field public static final dflonumType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final filepathType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final integerType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final listType:Lgnu/kawa/lispexpr/LangObjType;

.field static makeFilepathProc:Lgnu/expr/PrimProcedure;

.field static makePathProc:Lgnu/expr/PrimProcedure;

.field static makeURIProc:Lgnu/expr/PrimProcedure;

.field public static final numericType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final pathType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final rationalType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final realType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final regexType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final stringType:Lgnu/kawa/lispexpr/LangObjType;

.field static final typeArithmetic:Lgnu/bytecode/ClassType;

.field public static final typeClass:Lgnu/kawa/lispexpr/LangObjType;

.field public static final typeClassType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final typeLangObjType:Lgnu/bytecode/ClassType;

.field public static final typeType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final vectorType:Lgnu/kawa/lispexpr/LangObjType;


# instance fields
.field implementationType:Lgnu/bytecode/ClassType;

.field final typeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 34
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "path"

    const-string v2, "gnu.text.Path"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->pathType:Lgnu/kawa/lispexpr/LangObjType;

    .line 37
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "filepath"

    const-string v4, "gnu.text.FilePath"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->filepathType:Lgnu/kawa/lispexpr/LangObjType;

    .line 40
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "URI"

    const-string v5, "gnu.text.URIPath"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v6}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->URIType:Lgnu/kawa/lispexpr/LangObjType;

    .line 44
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "class"

    const-string v6, "java.lang.Class"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v6, v7}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    .line 47
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "type"

    const-string v6, "gnu.bytecode.Type"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    .line 50
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "class-type"

    const-string v6, "gnu.bytecode.ClassType"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    .line 54
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "number"

    const-string v6, "gnu.math.Numeric"

    const/16 v7, 0xa

    invoke-direct {v0, v1, v6, v7}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    .line 58
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "real"

    const-string v6, "gnu.math.RealNum"

    const/16 v7, 0x9

    invoke-direct {v0, v1, v6, v7}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    .line 62
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "rational"

    const-string v6, "gnu.math.RatNum"

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    .line 66
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "integer"

    const-string v6, "gnu.math.IntNum"

    const/4 v7, 0x7

    invoke-direct {v0, v1, v6, v7}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    .line 70
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "DFloNum"

    const-string v6, "gnu.math.DFloNum"

    const/16 v7, 0xf

    invoke-direct {v0, v1, v6, v7}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    .line 74
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "vector"

    const-string v6, "gnu.lists.FVector"

    const/16 v7, 0xc

    invoke-direct {v0, v1, v6, v7}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->vectorType:Lgnu/kawa/lispexpr/LangObjType;

    .line 78
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "regex"

    const-string v6, "java.util.regex.Pattern"

    const/16 v7, 0xe

    invoke-direct {v0, v1, v6, v7}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->regexType:Lgnu/kawa/lispexpr/LangObjType;

    .line 82
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "string"

    const-string v6, "java.lang.CharSequence"

    const/16 v7, 0xd

    invoke-direct {v0, v1, v6, v7}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->stringType:Lgnu/kawa/lispexpr/LangObjType;

    .line 92
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "list"

    const-string v6, "gnu.lists.LList"

    const/16 v7, 0xb

    invoke-direct {v0, v1, v6, v7}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    const-string v0, "gnu.kawa.functions.Arithmetic"

    .line 96
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeArithmetic:Lgnu/bytecode/ClassType;

    .line 196
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "valueOf"

    invoke-direct {v0, v2, v1, v3}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->makePathProc:Lgnu/expr/PrimProcedure;

    .line 198
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "makeFilePath"

    invoke-direct {v0, v4, v1, v3}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->makeFilepathProc:Lgnu/expr/PrimProcedure;

    .line 200
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "makeURI"

    invoke-direct {v0, v5, v1, v3}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->makeURIProc:Lgnu/expr/PrimProcedure;

    const-string v0, "gnu.kawa.lispexpr.LangObjType"

    .line 597
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-static {p2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    iput-object p1, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    .line 103
    iput p3, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    .line 104
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LangObjType;->setSignature(Ljava/lang/String;)V

    return-void
.end method

.method public static coerceDFloNum(Ljava/lang/Object;)Lgnu/math/DFloNum;
    .locals 3

    .line 239
    invoke-static {p0}, Lgnu/math/DFloNum;->asDFloNumOrNull(Ljava/lang/Object;)Lgnu/math/DFloNum;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x4

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-direct {v0, v1, p0, v2}, Lgnu/mapping/WrongType;-><init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;
    .locals 3

    .line 255
    invoke-static {p0}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x4

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-direct {v0, v1, p0, v2}, Lgnu/mapping/WrongType;-><init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static coerceNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 3

    .line 223
    invoke-static {p0}, Lgnu/math/Numeric;->asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x4

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-direct {v0, v1, p0, v2}, Lgnu/mapping/WrongType;-><init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static coerceRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;
    .locals 3

    .line 247
    invoke-static {p0}, Lgnu/math/RatNum;->asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x4

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-direct {v0, v1, p0, v2}, Lgnu/mapping/WrongType;-><init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    .locals 3

    .line 231
    invoke-static {p0}, Lgnu/math/RealNum;->asRealNumOrNull(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x4

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-direct {v0, v1, p0, v2}, Lgnu/mapping/WrongType;-><init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 3

    .line 277
    invoke-static {p0}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassOrNull(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to type"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static coerceToClassOrNull(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    .line 263
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 264
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 265
    :cond_0
    instance-of v0, p0, Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    .line 267
    instance-of v0, p0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lgnu/expr/PairClassType;

    if-nez v0, :cond_1

    .line 269
    check-cast p0, Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;
    .locals 3

    .line 299
    invoke-static {p0}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to class-type"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;
    .locals 1

    .line 285
    instance-of v0, p0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    .line 286
    check-cast p0, Lgnu/bytecode/ClassType;

    return-object p0

    .line 287
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 289
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 290
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    .line 291
    instance-of v0, p0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_1

    .line 292
    check-cast p0, Lgnu/bytecode/ClassType;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static coerceToType(Ljava/lang/Object;)Lgnu/bytecode/Type;
    .locals 3

    .line 319
    invoke-static {p0}, Lgnu/kawa/lispexpr/LangObjType;->coerceToTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to type"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static coerceToTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/Type;
    .locals 1

    .line 307
    instance-of v0, p0, Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    .line 308
    check-cast p0, Lgnu/bytecode/Type;

    return-object p0

    .line 309
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 311
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 312
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 432
    iget v0, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 461
    invoke-super {p0, p1}, Lgnu/bytecode/ObjectType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 447
    :pswitch_0
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p1

    return-object p1

    .line 449
    :pswitch_1
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object p1

    return-object p1

    .line 451
    :pswitch_2
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p1

    return-object p1

    .line 453
    :pswitch_3
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1

    .line 443
    :pswitch_4
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object p1

    return-object p1

    .line 445
    :pswitch_5
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceToType(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 441
    :pswitch_6
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 439
    :pswitch_7
    invoke-static {p1}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object p1

    return-object p1

    .line 437
    :pswitch_8
    invoke-static {p1}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p1

    return-object p1

    .line 435
    :pswitch_9
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1

    return-object p1

    .line 455
    :cond_0
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceDFloNum(Ljava/lang/Object;)Lgnu/math/DFloNum;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method coercionMethod()Lgnu/bytecode/Method;
    .locals 3

    .line 327
    iget v0, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 351
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangObjType;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object v0

    check-cast v0, Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Lgnu/expr/PrimProcedure;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0

    .line 344
    :pswitch_0
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v2, "coerceDFloNum"

    invoke-virtual {v0, v2, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0

    :pswitch_1
    const/4 v0, 0x0

    return-object v0

    .line 336
    :pswitch_2
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v2, "coerceNumeric"

    invoke-virtual {v0, v2, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0

    .line 338
    :pswitch_3
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v2, "coerceRealNum"

    invoke-virtual {v0, v2, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0

    .line 340
    :pswitch_4
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v2, "coerceRatNum"

    invoke-virtual {v0, v2, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0

    .line 342
    :pswitch_5
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v2, "coerceIntNum"

    invoke-virtual {v0, v2, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0

    .line 332
    :pswitch_6
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v2, "coerceToClassType"

    invoke-virtual {v0, v2, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0

    .line 334
    :pswitch_7
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v2, "coerceToType"

    invoke-virtual {v0, v2, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0

    .line 330
    :pswitch_8
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v2, "coerceToClass"

    invoke-virtual {v0, v2, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method coercionOrNullMethod()Lgnu/bytecode/Method;
    .locals 3

    .line 357
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    .line 359
    iget v1, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v1, "asNumericOrNull"

    goto :goto_0

    :pswitch_1
    const-string v1, "asRealNumOrNull"

    goto :goto_0

    :pswitch_2
    const-string v1, "asRatNumOrNull"

    goto :goto_0

    :pswitch_3
    const-string v1, "asIntNumOrNull"

    goto :goto_0

    .line 375
    :pswitch_4
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v1, "coerceToClassTypeOrNull"

    goto :goto_0

    .line 379
    :pswitch_5
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v1, "coerceToTypeOrNull"

    goto :goto_0

    .line 371
    :pswitch_6
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v1, "coerceToClassOrNull"

    goto :goto_0

    :pswitch_7
    const-string v1, "coerceToURIPathOrNull"

    goto :goto_0

    :pswitch_8
    const-string v1, "coerceToFilePathOrNull"

    goto :goto_0

    :pswitch_9
    const-string v1, "coerceToPathOrNull"

    goto :goto_0

    :cond_0
    const-string v1, "asDFloNumOrNull"

    :goto_0
    const/4 v2, 0x1

    .line 405
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public compare(Lgnu/bytecode/Type;)I
    .locals 4

    .line 111
    iget v0, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    goto/16 :goto_2

    .line 131
    :cond_0
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    const/16 v1, 0x53

    if-eq v0, v1, :cond_1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 142
    :cond_2
    :goto_0
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_a

    .line 144
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_3

    const/16 v1, 0x46

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    return v3

    .line 120
    :cond_4
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    if-eq p1, v0, :cond_8

    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    if-eq p1, v1, :cond_8

    iget-object v0, v0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-eq p1, v0, :cond_8

    iget-object v0, v1, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-ne p1, v0, :cond_5

    goto :goto_1

    .line 125
    :cond_5
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    if-eq p1, v0, :cond_8

    iget-object v0, v0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 127
    :cond_6
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    if-eq p1, v1, :cond_7

    if-ne p1, v0, :cond_a

    :cond_7
    return v2

    :cond_8
    :goto_1
    return v3

    .line 114
    :cond_9
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    if-eq p1, v0, :cond_b

    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    if-eq p1, v1, :cond_b

    iget-object v0, v0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-eq p1, v0, :cond_b

    iget-object v0, v1, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-ne p1, v0, :cond_a

    goto :goto_3

    .line 152
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangObjType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result p1

    return p1

    :cond_b
    :goto_3
    return v2
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4

    .line 539
    iget v0, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangObjType;->coercionMethod()Lgnu/bytecode/Method;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 548
    :cond_1
    new-instance v1, Lgnu/expr/ApplyExp;

    const/4 v2, 0x1

    new-array v2, v2, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v0, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 549
    invoke-virtual {v1, p0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 1

    .line 555
    iget v0, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v0, :pswitch_data_0

    .line 564
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangObjType;->coercionMethod()Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 561
    :pswitch_0
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public emitConvertFromPrimitive(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)V
    .locals 5

    .line 469
    iget v0, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/16 v1, 0xf

    const-string v2, "gnu.math.DFloNum"

    const-string v3, "gnu.math.IntNum"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 494
    :pswitch_0
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_8

    .line 496
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq p1, v0, :cond_4

    sget-object v0, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    if-eq p1, v0, :cond_4

    sget-object v0, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    sget-object v0, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    if-ne p1, v0, :cond_1

    .line 506
    sget-object v4, Lgnu/bytecode/Type;->long_type:Lgnu/bytecode/PrimType;

    goto :goto_1

    .line 508
    :cond_1
    iget v0, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 511
    :cond_2
    sget-object v0, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    if-ne p1, v0, :cond_3

    .line 513
    sget-object p1, Lgnu/bytecode/Type;->float_type:Lgnu/bytecode/PrimType;

    sget-object v0, Lgnu/bytecode/Type;->double_type:Lgnu/bytecode/PrimType;

    invoke-virtual {p2, p1, v0}, Lgnu/bytecode/CodeAttr;->emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    .line 514
    sget-object p1, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    .line 516
    :cond_3
    sget-object v0, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    if-ne p1, v0, :cond_8

    .line 519
    sget-object v4, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    goto :goto_3

    .line 501
    :cond_4
    :goto_0
    sget-object v4, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    :goto_1
    move-object v2, v3

    goto :goto_3

    .line 472
    :cond_5
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_8

    .line 474
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq p1, v0, :cond_6

    sget-object v0, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    if-eq p1, v0, :cond_6

    sget-object v0, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    if-eq p1, v0, :cond_6

    sget-object v0, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    if-eq p1, v0, :cond_6

    sget-object v0, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    if-ne p1, v0, :cond_7

    .line 480
    :cond_6
    sget-object v0, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p2, p1, v0}, Lgnu/bytecode/CodeAttr;->emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    .line 481
    sget-object p1, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    .line 483
    :cond_7
    sget-object v0, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    if-ne p1, v0, :cond_8

    move-object v4, p1

    goto :goto_3

    :cond_8
    :goto_2
    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_9

    .line 527
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/bytecode/Type;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const-string v1, "make"

    .line 529
    invoke-virtual {p1, v1, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_4

    .line 532
    :cond_9
    invoke-super {p0, p1, p2}, Lgnu/bytecode/ObjectType;->emitConvertFromPrimitive(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1

    .line 206
    iget v0, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v0, :pswitch_data_0

    .line 217
    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 212
    :pswitch_0
    iget-object p1, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 213
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 1

    .line 410
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 413
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangObjType;->coercionOrNullMethod()Lgnu/bytecode/Method;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 415
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 418
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 419
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 422
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfNotNull()V

    goto :goto_0

    .line 425
    :cond_3
    iget-object p1, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 426
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    :goto_0
    return-void
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 4

    .line 576
    iget v0, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    .line 591
    :pswitch_0
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v2, "java.util.regex.Pattern"

    const-string v3, "compile"

    invoke-direct {v0, v2, v3, v1}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 589
    :pswitch_1
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v2, "kawa.lib.strings"

    const-string v3, "$make$string$"

    invoke-direct {v0, v2, v3, v1}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 585
    :pswitch_2
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v2, "gnu.lists.FVector"

    const-string v3, "make"

    invoke-direct {v0, v2, v3, v1}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 587
    :pswitch_3
    sget-object v0, Lgnu/kawa/functions/MakeList;->list:Lgnu/kawa/functions/MakeList;

    return-object v0

    .line 583
    :cond_0
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->makeURIProc:Lgnu/expr/PrimProcedure;

    return-object v0

    .line 581
    :cond_1
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->makeFilepathProc:Lgnu/expr/PrimProcedure;

    return-object v0

    .line 579
    :cond_2
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->makePathProc:Lgnu/expr/PrimProcedure;

    return-object v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 1

    .line 167
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    return-object p1
.end method

.method public getField(Ljava/lang/String;I)Lgnu/bytecode/Field;
    .locals 1

    .line 157
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object p1

    return-object p1
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .line 193
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 1

    .line 162
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object p1

    return-object p1
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/Filter;",
            "I",
            "Ljava/util/List<",
            "Lgnu/bytecode/Method;",
            ">;)I"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result p1

    return p1
.end method

.method public getRealType()Lgnu/bytecode/Type;
    .locals 1

    .line 188
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 1

    .line 183
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
