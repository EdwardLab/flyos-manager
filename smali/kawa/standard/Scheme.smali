.class public Lkawa/standard/Scheme;
.super Lgnu/kawa/lispexpr/LispLanguage;
.source "Scheme.java"


# static fields
.field public static final apply:Lgnu/kawa/functions/Apply;

.field static final applyFieldDecl:Lgnu/expr/Declaration;

.field public static final applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

.field public static booleanType:Lgnu/kawa/lispexpr/LangPrimType;

.field public static final displayFormat:Lgnu/lists/AbstractFormat;

.field public static final forEach:Lgnu/kawa/functions/Map;

.field public static final instance:Lkawa/standard/Scheme;

.field public static final instanceOf:Lgnu/kawa/reflect/InstanceOf;

.field public static final isEq:Lgnu/kawa/functions/IsEq;

.field public static final isEqual:Lgnu/kawa/functions/IsEqual;

.field public static final isEqv:Lgnu/kawa/functions/IsEqv;

.field public static final isEven:Lgnu/kawa/functions/NumberPredicate;

.field public static final isOdd:Lgnu/kawa/functions/NumberPredicate;

.field protected static final kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

.field public static final map:Lgnu/kawa/functions/Map;

.field public static final not:Lgnu/kawa/functions/Not;

.field public static final nullEnvironment:Lgnu/mapping/Environment;

.field public static final numEqu:Lgnu/kawa/functions/NumberCompare;

.field public static final numGEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numGrt:Lgnu/kawa/functions/NumberCompare;

.field public static final numLEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numLss:Lgnu/kawa/functions/NumberCompare;

.field public static final r4Environment:Lgnu/mapping/Environment;

.field public static final r5Environment:Lgnu/mapping/Environment;

.field static typeToStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lgnu/bytecode/Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static types:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgnu/bytecode/Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final unitNamespace:Lgnu/mapping/Namespace;

.field public static final writeFormat:Lgnu/lists/AbstractFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "null-environment"

    .line 54
    invoke-static {v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    const-string v1, "r4rs-environment"

    .line 55
    invoke-static {v1, v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    const-string v1, "r5rs-environment"

    .line 56
    invoke-static {v1, v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    const-string v1, "kawa-environment"

    .line 57
    invoke-static {v1, v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    .line 59
    new-instance v1, Lkawa/standard/Scheme;

    invoke-direct {v1, v0}, Lkawa/standard/Scheme;-><init>(Lgnu/mapping/Environment;)V

    sput-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    .line 60
    new-instance v0, Lgnu/kawa/reflect/InstanceOf;

    const-string v2, "instance?"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    .line 61
    new-instance v0, Lgnu/kawa/functions/Not;

    const-string v2, "not"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/Not;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/Scheme;->not:Lgnu/kawa/functions/Not;

    .line 62
    new-instance v0, Lgnu/kawa/functions/ApplyToArgs;

    const-string v2, "apply-to-args"

    invoke-direct {v0, v2, v1}, Lgnu/kawa/functions/ApplyToArgs;-><init>(Ljava/lang/String;Lgnu/expr/Language;)V

    sput-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    const-string v2, "kawa.standard.Scheme"

    const-string v3, "applyToArgs"

    .line 63
    invoke-static {v2, v3}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v2

    sput-object v2, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    .line 66
    new-instance v3, Lgnu/kawa/functions/Apply;

    const-string v4, "apply"

    invoke-direct {v3, v4, v0}, Lgnu/kawa/functions/Apply;-><init>(Ljava/lang/String;Lgnu/kawa/functions/ApplyToArgs;)V

    sput-object v3, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 67
    new-instance v3, Lgnu/kawa/functions/IsEq;

    const-string v4, "eq?"

    invoke-direct {v3, v1, v4}, Lgnu/kawa/functions/IsEq;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v3, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    .line 68
    new-instance v4, Lgnu/kawa/functions/IsEqv;

    const-string v5, "eqv?"

    invoke-direct {v4, v1, v5, v3}, Lgnu/kawa/functions/IsEqv;-><init>(Lgnu/expr/Language;Ljava/lang/String;Lgnu/kawa/functions/IsEq;)V

    sput-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 69
    new-instance v4, Lgnu/kawa/functions/IsEqual;

    const-string v5, "equal?"

    invoke-direct {v4, v1, v5}, Lgnu/kawa/functions/IsEqual;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v4, Lkawa/standard/Scheme;->isEqual:Lgnu/kawa/functions/IsEqual;

    .line 70
    new-instance v4, Lgnu/kawa/functions/Map;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0, v2, v3}, Lgnu/kawa/functions/Map;-><init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V

    sput-object v4, Lkawa/standard/Scheme;->map:Lgnu/kawa/functions/Map;

    .line 71
    new-instance v4, Lgnu/kawa/functions/Map;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v0, v2, v3}, Lgnu/kawa/functions/Map;-><init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V

    sput-object v4, Lkawa/standard/Scheme;->forEach:Lgnu/kawa/functions/Map;

    const-string v0, "="

    const/16 v2, 0x8

    .line 72
    invoke-static {v1, v0, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    const-string v0, ">"

    const/16 v2, 0x10

    .line 74
    invoke-static {v1, v0, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    const-string v0, ">="

    const/16 v2, 0x18

    .line 76
    invoke-static {v1, v0, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    const-string v0, "<"

    const/4 v2, 0x4

    .line 78
    invoke-static {v1, v0, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    const-string v0, "<="

    const/16 v2, 0xc

    .line 80
    invoke-static {v1, v0, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 82
    new-instance v0, Lgnu/kawa/functions/NumberPredicate;

    const-string v2, "odd?"

    invoke-direct {v0, v1, v2, v5}, Lgnu/kawa/functions/NumberPredicate;-><init>(Lgnu/expr/Language;Ljava/lang/String;I)V

    sput-object v0, Lkawa/standard/Scheme;->isOdd:Lgnu/kawa/functions/NumberPredicate;

    .line 83
    new-instance v0, Lgnu/kawa/functions/NumberPredicate;

    const-string v2, "even?"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/functions/NumberPredicate;-><init>(Lgnu/expr/Language;Ljava/lang/String;I)V

    sput-object v0, Lkawa/standard/Scheme;->isEven:Lgnu/kawa/functions/NumberPredicate;

    .line 85
    invoke-direct {v1}, Lkawa/standard/Scheme;->initScheme()V

    .line 87
    sget v0, Lgnu/kawa/servlet/HttpRequestContext;->importServletDefinitions:I

    if-lez v0, :cond_1

    if-le v0, v5, :cond_0

    :try_start_0
    const-string v0, "gnu.kawa.servlet.servlets"

    goto :goto_0

    :cond_0
    const-string v0, "gnu.kawa.servlet.HTTP"

    .line 92
    :goto_0
    invoke-virtual {v1, v0}, Lkawa/standard/Scheme;->loadClass(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    :catchall_0
    :cond_1
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/16 v1, 0x53

    invoke-direct {v0, v5, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v0, Lkawa/standard/Scheme;->writeFormat:Lgnu/lists/AbstractFormat;

    .line 935
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    invoke-direct {v0, v6, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v0, Lkawa/standard/Scheme;->displayFormat:Lgnu/lists/AbstractFormat;

    const-string v0, "http://kawa.gnu.org/unit"

    const-string v1, "unit"

    .line 1134
    invoke-static {v0, v1}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 844
    invoke-direct {p0}, Lgnu/kawa/lispexpr/LispLanguage;-><init>()V

    .line 845
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 846
    invoke-virtual {p0}, Lkawa/standard/Scheme;->getNewEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    iput-object v0, p0, Lkawa/standard/Scheme;->userEnv:Lgnu/mapping/Environment;

    return-void
.end method

.method protected constructor <init>(Lgnu/mapping/Environment;)V
    .locals 0

    .line 850
    invoke-direct {p0}, Lgnu/kawa/lispexpr/LispLanguage;-><init>()V

    .line 851
    iput-object p1, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    return-void
.end method

.method public static builtin()Lgnu/mapping/Environment;
    .locals 1

    .line 108
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    return-object v0
.end method

.method public static eval(Lgnu/mapping/InPort;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 4

    .line 874
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 877
    :try_start_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object p0

    check-cast p0, Lgnu/kawa/lispexpr/LispReader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 879
    invoke-static {p0, v1, v2, v3}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object p0

    .line 880
    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    invoke-static {p0, p1, v0}, Lkawa/lang/Eval;->evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 881
    :cond_0
    new-instance p0, Lgnu/text/SyntaxException;

    invoke-direct {p0, v0}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw p0
    :try_end_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 906
    new-instance p1, Lgnu/mapping/WrappedException;

    invoke-direct {p1, p0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception p0

    .line 902
    throw p0

    :catch_1
    move-exception p0

    .line 898
    throw p0

    :catch_2
    move-exception p0

    .line 893
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eval: I/O exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p0

    .line 888
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eval: errors while compiling:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p0

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 0

    .line 918
    :try_start_0
    invoke-static {p0, p1}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 930
    new-instance p1, Lgnu/mapping/WrappedException;

    invoke-direct {p1, p0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception p0

    .line 926
    throw p0

    :catch_1
    move-exception p0

    .line 922
    throw p0
.end method

.method public static eval(Ljava/lang/String;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 1

    .line 865
    new-instance v0, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v0, p0}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkawa/standard/Scheme;->eval(Lgnu/mapping/InPort;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static exp2Type(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1

    .line 1131
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkawa/standard/Scheme;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lkawa/standard/Scheme;
    .locals 1

    .line 103
    sget-object v0, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    return-object v0
.end method

.method public static getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 4

    .line 1024
    invoke-static {}, Lkawa/standard/Scheme;->getTypeMap()Ljava/util/HashMap;

    .line 1025
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    if-nez v0, :cond_2

    const-string v1, "elisp:"

    .line 1026
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "clisp:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/16 v0, 0x3a

    .line 1029
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 1030
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 1031
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1032
    invoke-static {v0}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1037
    invoke-virtual {v2, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1039
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1034
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' - unknown language \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method static declared-synchronized getTypeMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgnu/bytecode/Type;",
            ">;"
        }
    .end annotation

    const-class v0, Lkawa/standard/Scheme;

    monitor-enter v0

    .line 957
    :try_start_0
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 959
    new-instance v1, Lgnu/kawa/lispexpr/LangPrimType;

    sget-object v2, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;Lgnu/expr/Language;)V

    sput-object v1, Lkawa/standard/Scheme;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    .line 961
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "void"

    .line 962
    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->voidType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "int"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "char"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->charType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "boolean"

    sget-object v3, Lkawa/standard/Scheme;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "byte"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "short"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "long"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "float"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "double"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "never-returns"

    sget-object v3, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "Object"

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "String"

    sget-object v3, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "object"

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "number"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "quantity"

    const-string v3, "gnu.math.Quantity"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "complex"

    const-string v3, "gnu.math.Complex"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "real"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "rational"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "integer"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "symbol"

    const-string v3, "gnu.mapping.Symbol"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "namespace"

    const-string v3, "gnu.mapping.Namespace"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "keyword"

    const-string v3, "gnu.expr.Keyword"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "pair"

    const-string v3, "gnu.lists.Pair"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "pair-with-position"

    const-string v3, "gnu.lists.PairWithPosition"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "constant-string"

    const-string v3, "java.lang.String"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "abstract-string"

    const-string v3, "gnu.lists.CharSeq"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "character"

    const-string v3, "gnu.text.Char"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "vector"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->vectorType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "string"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->stringType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "list"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "function"

    const-string v3, "gnu.mapping.Procedure"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "procedure"

    const-string v3, "gnu.mapping.Procedure"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "input-port"

    const-string v3, "gnu.mapping.InPort"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "output-port"

    const-string v3, "gnu.mapping.OutPort"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "string-output-port"

    const-string v3, "gnu.mapping.CharArrayOutPort"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "record"

    const-string v3, "kawa.lang.Record"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "type"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "class-type"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "class"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s8vector"

    const-string v3, "gnu.lists.S8Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u8vector"

    const-string v3, "gnu.lists.U8Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s16vector"

    const-string v3, "gnu.lists.S16Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u16vector"

    const-string v3, "gnu.lists.U16Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s32vector"

    const-string v3, "gnu.lists.S32Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u32vector"

    const-string v3, "gnu.lists.U32Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s64vector"

    const-string v3, "gnu.lists.S64Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u64vector"

    const-string v3, "gnu.lists.U64Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "f32vector"

    const-string v3, "gnu.lists.F32Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "f64vector"

    const-string v3, "gnu.lists.F64Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "document"

    const-string v3, "gnu.kawa.xml.KDocument"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "readtable"

    const-string v3, "gnu.kawa.lispexpr.ReadTable"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    :cond_0
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getTypeValue(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1

    .line 949
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkawa/standard/Scheme;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object p0

    return-object p0
.end method

.method private initScheme()V
    .locals 12

    .line 113
    sget-object v0, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 115
    iget-object v1, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    sget-object v2, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    sget-object v3, Lkawa/standard/Scheme;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    const-string v1, "lambda"

    const-string v2, "kawa.standard.SchemeCompilation"

    const-string v3, "lambda"

    .line 117
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "quote"

    const-string v2, "kawa.lang.Quote"

    const-string v3, "plainQuote"

    .line 120
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "%define"

    const-string v2, "kawa.standard.define"

    const-string v3, "defineRaw"

    .line 121
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define"

    const-string v2, "kawa.lib.prim_syntax"

    .line 122
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "if"

    .line 124
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set!"

    const-string v3, "kawa.standard.set_b"

    const-string v4, "set"

    .line 125
    invoke-virtual {p0, v1, v3, v4}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cond"

    const-string v3, "kawa.lib.std_syntax"

    .line 128
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "case"

    .line 129
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "and"

    .line 130
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "or"

    .line 131
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "%let"

    const-string v4, "kawa.standard.let"

    const-string v5, "let"

    .line 132
    invoke-virtual {p0, v1, v4, v5}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "let"

    .line 133
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "let*"

    .line 134
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "letrec"

    .line 135
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "begin"

    const-string v4, "kawa.standard.begin"

    const-string v5, "begin"

    .line 137
    invoke-virtual {p0, v1, v4, v5}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "do"

    .line 138
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delay"

    .line 139
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "%make-promise"

    .line 140
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "quasiquote"

    const-string v4, "kawa.lang.Quote"

    const-string v5, "quasiQuote"

    .line 141
    invoke-virtual {p0, v1, v4, v5}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-syntax"

    .line 146
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "let-syntax"

    const-string v4, "kawa.standard.let_syntax"

    const-string v5, "let_syntax"

    .line 147
    invoke-virtual {p0, v1, v4, v5}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "letrec-syntax"

    const-string v4, "kawa.standard.let_syntax"

    const-string v5, "letrec_syntax"

    .line 148
    invoke-virtual {p0, v1, v4, v5}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syntax-rules"

    const-string v4, "kawa.standard.syntax_rules"

    const-string v5, "syntax_rules"

    .line 150
    invoke-virtual {p0, v1, v4, v5}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lgnu/mapping/Environment;->setLocked()V

    .line 154
    sget-object v0, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    const-string v1, "not"

    const-string v4, "kawa.standard.Scheme"

    .line 157
    invoke-virtual {p0, v1, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "boolean?"

    const-string v5, "kawa.lib.misc"

    .line 158
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "eq?"

    const-string v6, "isEq"

    .line 161
    invoke-virtual {p0, v1, v4, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "eqv?"

    const-string v6, "isEqv"

    .line 162
    invoke-virtual {p0, v1, v4, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "equal?"

    const-string v6, "isEqual"

    .line 163
    invoke-virtual {p0, v1, v4, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pair?"

    const-string v6, "kawa.lib.lists"

    .line 166
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cons"

    .line 167
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "car"

    .line 168
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cdr"

    .line 169
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set-car!"

    .line 170
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set-cdr!"

    .line 171
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "caar"

    .line 173
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cadr"

    .line 174
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cdar"

    .line 175
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cddr"

    .line 176
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "caaar"

    .line 177
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "caadr"

    .line 178
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cadar"

    .line 179
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "caddr"

    .line 180
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cdaar"

    .line 181
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cdadr"

    .line 182
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cddar"

    .line 183
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cdddr"

    .line 184
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "caaaar"

    .line 185
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "caaadr"

    .line 186
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "caadar"

    .line 187
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "caaddr"

    .line 188
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cadaar"

    .line 189
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cadadr"

    .line 190
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "caddar"

    .line 191
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cadddr"

    .line 192
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cdaaar"

    .line 193
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cdaadr"

    .line 194
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cdadar"

    .line 195
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cdaddr"

    .line 196
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cddaar"

    .line 197
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cddadr"

    .line 198
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cdddar"

    .line 199
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cddddr"

    .line 200
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "null?"

    .line 201
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list?"

    .line 202
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "length"

    .line 203
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "append"

    const-string v7, "kawa.standard.append"

    const-string v8, "append"

    .line 204
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reverse"

    .line 205
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reverse!"

    .line 206
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list-tail"

    .line 207
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list-ref"

    .line 208
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "memq"

    .line 210
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "memv"

    .line 211
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "member"

    .line 212
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "assq"

    .line 213
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "assv"

    .line 214
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "assoc"

    .line 215
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "symbol?"

    .line 219
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "symbol->string"

    .line 220
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string->symbol"

    .line 221
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "symbol=?"

    .line 222
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "symbol-local-name"

    .line 223
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "symbol-namespace"

    .line 224
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "symbol-namespace-uri"

    .line 225
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "symbol-prefix"

    .line 226
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "namespace-uri"

    .line 227
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "namespace-prefix"

    .line 228
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "number?"

    const-string v6, "kawa.lib.numbers"

    .line 231
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "quantity?"

    .line 232
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "complex?"

    .line 233
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "real?"

    .line 234
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rational?"

    .line 235
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "integer?"

    .line 236
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exact?"

    .line 237
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "inexact?"

    .line 238
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "="

    const-string v7, "numEqu"

    .line 239
    invoke-virtual {p0, v1, v4, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "<"

    const-string v7, "numLss"

    .line 240
    invoke-virtual {p0, v1, v4, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ">"

    const-string v7, "numGrt"

    .line 241
    invoke-virtual {p0, v1, v4, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "<="

    const-string v7, "numLEq"

    .line 242
    invoke-virtual {p0, v1, v4, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ">="

    const-string v7, "numGEq"

    .line 243
    invoke-virtual {p0, v1, v4, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "zero?"

    .line 244
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "positive?"

    .line 245
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "negative?"

    .line 246
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "odd?"

    const-string v7, "isOdd"

    .line 247
    invoke-virtual {p0, v1, v4, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "even?"

    const-string v7, "isEven"

    .line 248
    invoke-virtual {p0, v1, v4, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "max"

    .line 249
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "min"

    .line 250
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "+"

    const-string v7, "gnu.kawa.functions.AddOp"

    const-string v8, "$Pl"

    .line 251
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "-"

    const-string v7, "gnu.kawa.functions.AddOp"

    const-string v8, "$Mn"

    .line 252
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "*"

    const-string v7, "gnu.kawa.functions.MultiplyOp"

    const-string v8, "$St"

    .line 253
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/"

    const-string v7, "gnu.kawa.functions.DivideOp"

    const-string v8, "$Sl"

    .line 254
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "abs"

    .line 255
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "quotient"

    const-string v8, "quotient"

    .line 256
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "remainder"

    const-string v8, "remainder"

    .line 257
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "modulo"

    const-string v8, "modulo"

    .line 258
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "div"

    const-string v8, "div"

    .line 259
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mod"

    const-string v8, "mod"

    .line 260
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "div0"

    const-string v8, "div0"

    .line 261
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mod0"

    const-string v8, "mod0"

    .line 262
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "div-and-mod"

    .line 263
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "div0-and-mod0"

    .line 264
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gcd"

    .line 265
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lcm"

    .line 266
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "numerator"

    .line 267
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "denominator"

    .line 268
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "floor"

    .line 269
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ceiling"

    .line 270
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "truncate"

    .line 271
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "round"

    .line 272
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rationalize"

    .line 273
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exp"

    .line 274
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "log"

    .line 275
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sin"

    .line 276
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cos"

    .line 277
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tan"

    .line 278
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "asin"

    .line 279
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "acos"

    .line 280
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "atan"

    .line 281
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sqrt"

    .line 282
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "expt"

    const-string v7, "kawa.standard.expt"

    .line 283
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-rectangular"

    .line 284
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-polar"

    .line 285
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "real-part"

    .line 286
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imag-part"

    .line 287
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "magnitude"

    .line 288
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "angle"

    .line 289
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "inexact"

    .line 290
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exact"

    .line 291
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exact->inexact"

    .line 292
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "inexact->exact"

    .line 293
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "number->string"

    .line 294
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string->number"

    .line 295
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char?"

    const-string v7, "kawa.lib.characters"

    .line 298
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char=?"

    .line 299
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char<?"

    .line 300
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char>?"

    .line 301
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char<=?"

    .line 302
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char>=?"

    .line 303
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-ci=?"

    const-string v8, "kawa.lib.rnrs.unicode"

    .line 304
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-ci<?"

    .line 305
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-ci>?"

    .line 306
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-ci<=?"

    .line 307
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-ci>=?"

    .line 308
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-alphabetic?"

    .line 309
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-numeric?"

    .line 310
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-whitespace?"

    .line 311
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-upper-case?"

    .line 312
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-lower-case?"

    .line 313
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-title-case?"

    .line 314
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char->integer"

    .line 315
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "integer->char"

    .line 316
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-upcase"

    .line 317
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-downcase"

    .line 318
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-titlecase"

    .line 319
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-foldcase"

    .line 320
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-general-category"

    .line 321
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string?"

    const-string v7, "kawa.lib.strings"

    .line 324
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-string"

    .line 325
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-length"

    .line 326
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-ref"

    .line 327
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-set!"

    .line 328
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string=?"

    .line 330
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string<?"

    .line 331
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string>?"

    .line 332
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string<=?"

    .line 333
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string>=?"

    .line 334
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-ci=?"

    .line 336
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-ci<?"

    .line 337
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-ci>?"

    .line 338
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-ci<=?"

    .line 339
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-ci>=?"

    .line 340
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-normalize-nfd"

    .line 341
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-normalize-nfkd"

    .line 342
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-normalize-nfc"

    .line 343
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-normalize-nfkc"

    .line 344
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "substring"

    .line 346
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-append"

    .line 347
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-append/shared"

    .line 348
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string->list"

    .line 349
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list->string"

    .line 350
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-copy"

    .line 351
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-fill!"

    .line 352
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vector?"

    const-string v9, "kawa.lib.vectors"

    .line 355
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-vector"

    .line 356
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vector-length"

    .line 357
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vector-ref"

    .line 358
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vector-set!"

    .line 359
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list->vector"

    .line 360
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vector->list"

    .line 361
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vector-fill!"

    .line 362
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vector-append"

    const-string v9, "kawa.standard.vector_append"

    const-string v10, "vectorAppend"

    .line 364
    invoke-virtual {p0, v1, v9, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "values-append"

    const-string v9, "gnu.kawa.functions.AppendValues"

    const-string v10, "appendValues"

    .line 365
    invoke-virtual {p0, v1, v9, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "procedure?"

    .line 369
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apply"

    const-string v9, "apply"

    .line 370
    invoke-virtual {p0, v1, v4, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "map"

    const-string v9, "map"

    .line 371
    invoke-virtual {p0, v1, v4, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "for-each"

    const-string v9, "forEach"

    .line 372
    invoke-virtual {p0, v1, v4, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "call-with-current-continuation"

    const-string v9, "gnu.kawa.functions.CallCC"

    const-string v10, "callcc"

    .line 373
    invoke-virtual {p0, v1, v9, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "call/cc"

    const-string v9, "kawa.standard.callcc"

    const-string v10, "callcc"

    .line 375
    invoke-virtual {p0, v1, v9, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "force"

    .line 376
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "call-with-input-file"

    const-string v9, "kawa.lib.ports"

    .line 379
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "call-with-output-file"

    .line 380
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "input-port?"

    .line 381
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "output-port?"

    .line 382
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "current-input-port"

    .line 383
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "current-output-port"

    .line 384
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "with-input-from-file"

    .line 385
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "with-output-to-file"

    .line 386
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "open-input-file"

    .line 387
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "open-output-file"

    .line 388
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "close-input-port"

    .line 389
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "close-output-port"

    .line 390
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "read"

    .line 391
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "read-line"

    .line 392
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "read-char"

    const-string v10, "kawa.standard.readchar"

    const-string v11, "readChar"

    .line 393
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "peek-char"

    const-string v10, "kawa.standard.readchar"

    const-string v11, "peekChar"

    .line 394
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "eof-object?"

    .line 395
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "char-ready?"

    .line 396
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "write"

    .line 397
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "display"

    .line 398
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "print-as-xml"

    const-string v10, "gnu.xquery.lang.XQuery"

    const-string v11, "writeFormat"

    .line 399
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "write-char"

    .line 400
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "newline"

    .line 401
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "load"

    const-string v10, "kawa.standard.load"

    const-string v11, "load"

    .line 402
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "load-relative"

    const-string v10, "kawa.standard.load"

    const-string v11, "loadRelative"

    .line 403
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "transcript-off"

    .line 404
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "transcript-on"

    .line 405
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "call-with-input-string"

    .line 406
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "open-input-string"

    .line 407
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "open-output-string"

    .line 408
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "get-output-string"

    .line 409
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "call-with-output-string"

    .line 410
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "force-output"

    .line 411
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "port-line"

    .line 413
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set-port-line!"

    .line 414
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "port-column"

    .line 415
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "current-error-port"

    .line 416
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "input-port-line-number"

    .line 417
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set-input-port-line-number!"

    .line 418
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "input-port-column-number"

    .line 419
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "input-port-read-state"

    .line 420
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "default-prompter"

    .line 421
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "input-port-prompter"

    .line 422
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set-input-port-prompter!"

    .line 423
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "base-uri"

    .line 424
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "%syntax-error"

    const-string v9, "kawa.standard.syntax_error"

    const-string v10, "syntax_error"

    .line 426
    invoke-virtual {p0, v1, v9, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syntax-error"

    .line 428
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Lgnu/mapping/Environment;->setLocked()V

    .line 431
    sget-object v0, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    const-string v1, "values"

    .line 433
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "call-with-values"

    const-string v9, "kawa.standard.call_with_values"

    const-string v10, "callWithValues"

    .line 434
    invoke-virtual {p0, v1, v9, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "let-values"

    const-string v9, "kawa.lib.syntax"

    .line 436
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "let*-values"

    .line 437
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "case-lambda"

    .line 438
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "receive"

    .line 439
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "eval"

    const-string v10, "kawa.lang.Eval"

    .line 440
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "repl"

    const-string v10, "kawa.standard.SchemeCompilation"

    const-string v11, "repl"

    .line 441
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scheme-report-environment"

    .line 442
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "null-environment"

    .line 443
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "interaction-environment"

    .line 444
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dynamic-wind"

    .line 445
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Lgnu/mapping/Environment;->setLocked()V

    .line 448
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    const-string v1, "define-private"

    .line 450
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-constant"

    .line 451
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-autoload"

    const-string v10, "kawa.standard.define_autoload"

    const-string v11, "define_autoload"

    .line 453
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-autoloads-from-file"

    const-string v10, "kawa.standard.define_autoload"

    const-string v11, "define_autoloads_from_file"

    .line 455
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exit"

    const-string v10, "kawa.lib.rnrs.programs"

    .line 459
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "command-line"

    const-string v10, "kawa.lib.rnrs.programs"

    .line 460
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-arithmetic-shift"

    const-string v10, "gnu.kawa.functions.BitwiseOp"

    const-string v11, "ashift"

    .line 462
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "arithmetic-shift"

    const-string v11, "ashift"

    .line 464
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ash"

    const-string v11, "ashift"

    .line 466
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-arithmetic-shift-left"

    const-string v11, "ashiftl"

    .line 468
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-arithmetic-shift-right"

    const-string v11, "ashiftr"

    .line 470
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-and"

    const-string v11, "and"

    .line 472
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logand"

    const-string v11, "and"

    .line 473
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-ior"

    const-string v11, "ior"

    .line 474
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logior"

    const-string v11, "ior"

    .line 475
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-xor"

    const-string v11, "xor"

    .line 476
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logxor"

    const-string v11, "xor"

    .line 477
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-if"

    .line 478
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-not"

    const-string v11, "not"

    .line 479
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lognot"

    const-string v11, "not"

    .line 480
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logop"

    .line 481
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-bit-set?"

    .line 482
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-bit-set?"

    .line 483
    invoke-static {v1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "logbit?"

    invoke-virtual {p0, v10, v6, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logtest"

    .line 485
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-bit-count"

    .line 486
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logcount"

    .line 487
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-copy-bit"

    .line 488
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-copy-bit-field"

    .line 489
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-bit-field"

    .line 490
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-bit-field"

    .line 491
    invoke-static {v1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "bit-extract"

    invoke-virtual {p0, v10, v6, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-length"

    .line 493
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "integer-length"

    const-string v10, "bitwise$Mnlength"

    .line 494
    invoke-virtual {p0, v1, v6, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-first-bit-set"

    .line 495
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-rotate-bit-field"

    .line 496
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitwise-reverse-bit-field"

    .line 497
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-upcase!"

    .line 500
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-downcase!"

    .line 501
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-capitalize!"

    .line 502
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-upcase"

    .line 503
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-downcase"

    .line 504
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-titlecase"

    .line 505
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-foldcase"

    .line 506
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string-capitalize"

    .line 507
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-virtual-method"

    const-string v7, "kawa.standard.prim_method"

    const-string v8, "virtual_method"

    .line 508
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-static-method"

    const-string v8, "static_method"

    .line 510
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-interface-method"

    const-string v8, "interface_method"

    .line 512
    invoke-virtual {p0, v1, v7, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-constructor"

    const-string v8, "kawa.lib.reflection"

    .line 514
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-op1"

    const-string v10, "op1"

    .line 515
    invoke-virtual {p0, v1, v7, v10}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-get-field"

    .line 517
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-set-field"

    .line 518
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-get-static"

    .line 519
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-set-static"

    .line 520
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-array-new"

    .line 521
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-array-get"

    .line 522
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-array-set"

    .line 523
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-array-length"

    .line 524
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subtype?"

    .line 525
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primitive-throw"

    const-string v7, "kawa.standard.prim_throw"

    const-string v10, "primitiveThrow"

    .line 526
    invoke-virtual {p0, v1, v7, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "try-finally"

    .line 527
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "try-catch"

    .line 528
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "throw"

    const-string v7, "kawa.standard.throw_name"

    const-string v10, "throwName"

    .line 529
    invoke-virtual {p0, v1, v7, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "catch"

    const-string v7, "kawa.lib.system"

    .line 530
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "error"

    .line 531
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "as"

    const-string v10, "gnu.kawa.functions.Convert"

    const-string v11, "as"

    .line 532
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "instance?"

    const-string v10, "instanceOf"

    .line 533
    invoke-virtual {p0, v1, v4, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "synchronized"

    .line 534
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "object"

    const-string v10, "kawa.standard.object"

    const-string v11, "objectSyntax"

    .line 535
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-class"

    const-string v10, "kawa.standard.define_class"

    const-string v11, "define_class"

    .line 536
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-simple-class"

    const-string v10, "kawa.standard.define_class"

    const-string v11, "define_simple_class"

    .line 538
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "this"

    const-string v10, "kawa.standard.thisRef"

    const-string v11, "thisSyntax"

    .line 540
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make"

    const-string v10, "gnu.kawa.reflect.Invoke"

    const-string v11, "make"

    .line 541
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "slot-ref"

    const-string v10, "gnu.kawa.reflect.SlotGet"

    const-string v11, "slotRef"

    .line 542
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "slot-set!"

    const-string v10, "gnu.kawa.reflect.SlotSet"

    const-string v11, "set$Mnfield$Ex"

    .line 543
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "field"

    const-string v10, "gnu.kawa.reflect.SlotGet"

    .line 544
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "class-methods"

    const-string v10, "gnu.kawa.reflect.ClassMethods"

    const-string v11, "classMethods"

    .line 545
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "static-field"

    const-string v10, "gnu.kawa.reflect.SlotGet"

    const-string v11, "staticField"

    .line 547
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "invoke"

    const-string v10, "gnu.kawa.reflect.Invoke"

    const-string v11, "invoke"

    .line 549
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "invoke-static"

    const-string v10, "gnu.kawa.reflect.Invoke"

    const-string v11, "invokeStatic"

    .line 551
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "invoke-special"

    const-string v10, "gnu.kawa.reflect.Invoke"

    const-string v11, "invokeSpecial"

    .line 552
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-macro"

    .line 554
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "%define-macro"

    const-string v10, "kawa.standard.define_syntax"

    const-string v11, "define_macro"

    .line 555
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-syntax-case"

    .line 557
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syntax-case"

    const-string v10, "kawa.standard.syntax_case"

    const-string v11, "syntax_case"

    .line 558
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "%define-syntax"

    const-string v10, "kawa.standard.define_syntax"

    const-string v11, "define_syntax"

    .line 559
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syntax"

    const-string v10, "kawa.standard.syntax"

    const-string v11, "syntax"

    .line 561
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "quasisyntax"

    const-string v10, "kawa.standard.syntax"

    const-string v11, "quasiSyntax"

    .line 562
    invoke-virtual {p0, v1, v10, v11}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syntax-object->datum"

    .line 563
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "datum->syntax-object"

    .line 564
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syntax->expression"

    .line 565
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syntax-body->expression"

    .line 566
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "generate-temporaries"

    .line 567
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "with-syntax"

    .line 568
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "identifier?"

    .line 569
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "free-identifier=?"

    .line 570
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syntax-source"

    .line 571
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syntax-line"

    .line 572
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syntax-column"

    .line 573
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "begin-for-syntax"

    .line 574
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-for-syntax"

    .line 575
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "include"

    const-string v2, "kawa.lib.misc_syntax"

    .line 576
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "include-relative"

    .line 577
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file-exists?"

    const-string v10, "kawa.lib.files"

    .line 579
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file-directory?"

    .line 580
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file-readable?"

    .line 581
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file-writable?"

    .line 582
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delete-file"

    .line 583
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "system-tmpdir"

    .line 584
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-temporary-file"

    .line 585
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rename-file"

    .line 586
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "copy-file"

    .line 587
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "create-directory"

    .line 588
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "->pathname"

    .line 589
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v11, "port-char-encoding"

    invoke-virtual {p0, v11, v1}, Lkawa/standard/Scheme;->define(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "symbol-read-case"

    const-string v11, "P"

    .line 591
    invoke-virtual {p0, v1, v11}, Lkawa/standard/Scheme;->define(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "system"

    .line 593
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-process"

    .line 594
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tokenize-string-to-string-array"

    .line 595
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tokenize-string-using-shell"

    .line 596
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "command-parse"

    .line 597
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "process-command-line-assignments"

    .line 598
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "record-accessor"

    .line 600
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "record-modifier"

    .line 601
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "record-predicate"

    .line 602
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "record-constructor"

    .line 603
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-record-type"

    .line 604
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "record-type-descriptor"

    .line 605
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "record-type-name"

    .line 606
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "record-type-field-names"

    .line 607
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "record?"

    .line 608
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-record-type"

    const-string v8, "gnu.kawa.slib.DefineRecordType"

    .line 609
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "when"

    .line 611
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unless"

    .line 612
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fluid-let"

    const-string v8, "kawa.standard.fluid_let"

    const-string v11, "fluid_let"

    .line 613
    invoke-virtual {p0, v1, v8, v11}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "constant-fold"

    const-string v8, "kawa.standard.constant_fold"

    const-string v11, "constant_fold"

    .line 614
    invoke-virtual {p0, v1, v8, v11}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-parameter"

    const-string v8, "kawa.lib.parameters"

    .line 616
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "parameterize"

    const-string v8, "kawa.lib.parameters"

    .line 617
    invoke-virtual {p0, v1, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "compile-file"

    .line 619
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "environment-bound?"

    .line 620
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scheme-implementation-version"

    .line 621
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scheme-window"

    const-string v7, "kawa.lib.windows"

    .line 622
    invoke-virtual {p0, v1, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-procedure"

    .line 623
    invoke-virtual {p0, v1, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "add-procedure-properties"

    .line 624
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-procedure"

    const-string v3, "gnu.kawa.functions.MakeProcedure"

    const-string v7, "makeProcedure"

    .line 625
    invoke-virtual {p0, v1, v3, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "procedure-property"

    .line 627
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set-procedure-property!"

    .line 628
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "provide"

    .line 629
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "test-begin"

    .line 630
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "quantity->number"

    .line 632
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "quantity->unit"

    .line 633
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-quantity"

    .line 634
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-namespace"

    const-string v3, "gnu.kawa.lispexpr.DefineNamespace"

    const-string v7, "define_namespace"

    .line 635
    invoke-virtual {p0, v1, v3, v7}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-xml-namespace"

    const-string v3, "gnu.kawa.lispexpr.DefineNamespace"

    const-string v7, "define_xml_namespace"

    .line 637
    invoke-virtual {p0, v1, v3, v7}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-private-namespace"

    const-string v3, "gnu.kawa.lispexpr.DefineNamespace"

    const-string v7, "define_private_namespace"

    .line 639
    invoke-virtual {p0, v1, v3, v7}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-unit"

    const-string v3, "kawa.standard.define_unit"

    const-string v7, "define_unit"

    .line 641
    invoke-virtual {p0, v1, v3, v7}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-base-unit"

    const-string v3, "kawa.standard.define_unit"

    const-string v7, "define_base_unit"

    .line 642
    invoke-virtual {p0, v1, v3, v7}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "duration"

    .line 644
    invoke-virtual {p0, v1, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gentemp"

    .line 646
    invoke-virtual {p0, v1, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "defmacro"

    .line 647
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "setter"

    const-string v3, "gnu.kawa.functions.Setter"

    const-string v5, "setter"

    .line 648
    invoke-virtual {p0, v1, v3, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resource-url"

    .line 650
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "module-uri"

    .line 651
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "future"

    const-string v2, "kawa.lib.thread"

    .line 653
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sleep"

    const-string v2, "kawa.lib.thread"

    .line 654
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "runnable"

    const-string v2, "kawa.lib.thread"

    .line 655
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "trace"

    const-string v2, "kawa.lib.trace"

    .line 657
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "untrace"

    const-string v2, "kawa.lib.trace"

    .line 658
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "disassemble"

    const-string v2, "kawa.lib.trace"

    .line 659
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "format"

    const-string v2, "gnu.kawa.functions.Format"

    .line 661
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "parse-format"

    const-string v2, "gnu.kawa.functions.ParseFormat"

    const-string v3, "parseFormat"

    .line 662
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-element"

    const-string v2, "gnu.kawa.xml.MakeElement"

    const-string v3, "makeElement"

    .line 664
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-attribute"

    const-string v2, "gnu.kawa.xml.MakeAttribute"

    const-string v3, "makeAttribute"

    .line 665
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "map-values"

    const-string v2, "gnu.kawa.functions.ValuesMap"

    const-string v3, "valuesMap"

    .line 666
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "children"

    const-string v2, "gnu.kawa.xml.Children"

    const-string v3, "children"

    .line 667
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "attributes"

    const-string v2, "gnu.kawa.xml.Attributes"

    .line 668
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unescaped-data"

    const-string v2, "gnu.kawa.xml.MakeUnescapedData"

    const-string v3, "unescapedData"

    .line 669
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "keyword?"

    const-string v2, "kawa.lib.keywords"

    .line 671
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "keyword->string"

    const-string v2, "kawa.lib.keywords"

    .line 672
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string->keyword"

    const-string v2, "kawa.lib.keywords"

    .line 673
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "location"

    const-string v2, "kawa.standard.location"

    const-string v3, "location"

    .line 674
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-alias"

    const-string v2, "kawa.standard.define_alias"

    const-string v3, "define_alias"

    .line 675
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-variable"

    const-string v2, "kawa.standard.define_variable"

    const-string v3, "define_variable"

    .line 677
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-member-alias"

    const-string v2, "kawa.standard.define_member_alias"

    const-string v3, "define_member_alias"

    .line 679
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "define-enum"

    const-string v2, "gnu.kawa.slib.enums"

    .line 681
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "import"

    .line 682
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "require"

    const-string v2, "kawa.standard.require"

    const-string v3, "require"

    .line 683
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "module-name"

    const-string v2, "kawa.standard.module_name"

    const-string v3, "module_name"

    .line 684
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "module-extends"

    const-string v2, "kawa.standard.module_extends"

    const-string v3, "module_extends"

    .line 686
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "module-implements"

    const-string v2, "kawa.standard.module_implements"

    const-string v3, "module_implements"

    .line 688
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "module-static"

    const-string v2, "kawa.standard.module_static"

    const-string v3, "module_static"

    .line 690
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "module-export"

    const-string v2, "kawa.standard.export"

    const-string v3, "module_export"

    .line 692
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "export"

    const-string v2, "kawa.standard.export"

    const-string v3, "export"

    .line 693
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "module-compile-options"

    const-string v2, "kawa.standard.module_compile_options"

    const-string v3, "module_compile_options"

    .line 694
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "with-compile-options"

    const-string v2, "kawa.standard.with_compile_options"

    const-string v3, "with_compile_options"

    .line 697
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "array?"

    const-string v2, "kawa.lib.arrays"

    .line 701
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "array-rank"

    .line 702
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-array"

    .line 703
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "array"

    .line 704
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "array-start"

    .line 705
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "array-end"

    .line 706
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "shape"

    .line 707
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "array-ref"

    const-string v3, "gnu.kawa.functions.ArrayRef"

    const-string v5, "arrayRef"

    .line 708
    invoke-virtual {p0, v1, v3, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "array-set!"

    const-string v3, "gnu.kawa.functions.ArraySet"

    const-string v5, "arraySet"

    .line 709
    invoke-virtual {p0, v1, v3, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "share-array"

    .line 710
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s8vector?"

    const-string v2, "kawa.lib.uniform"

    .line 712
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-s8vector"

    .line 713
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s8vector"

    .line 714
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s8vector-length"

    .line 715
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s8vector-ref"

    .line 716
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s8vector-set!"

    .line 717
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s8vector->list"

    .line 718
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list->s8vector"

    .line 719
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u8vector?"

    .line 720
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-u8vector"

    .line 721
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u8vector"

    .line 722
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u8vector-length"

    .line 723
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u8vector-ref"

    .line 724
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u8vector-set!"

    .line 725
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u8vector->list"

    .line 726
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list->u8vector"

    .line 727
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s16vector?"

    .line 729
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-s16vector"

    .line 730
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s16vector"

    .line 731
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s16vector-length"

    .line 732
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s16vector-ref"

    .line 733
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s16vector-set!"

    .line 734
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s16vector->list"

    .line 735
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list->s16vector"

    .line 736
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u16vector?"

    .line 737
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-u16vector"

    .line 738
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u16vector"

    .line 739
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u16vector-length"

    .line 740
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u16vector-ref"

    .line 741
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u16vector-set!"

    .line 742
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u16vector->list"

    .line 743
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list->u16vector"

    .line 744
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s32vector?"

    .line 746
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-s32vector"

    .line 747
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s32vector"

    .line 748
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s32vector-length"

    .line 749
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s32vector-ref"

    .line 750
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s32vector-set!"

    .line 751
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s32vector->list"

    .line 752
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list->s32vector"

    .line 753
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u32vector?"

    .line 754
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-u32vector"

    .line 755
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u32vector"

    .line 756
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u32vector-length"

    .line 757
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u32vector-ref"

    .line 758
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u32vector-set!"

    .line 759
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u32vector->list"

    .line 760
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list->u32vector"

    .line 761
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s64vector?"

    .line 763
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-s64vector"

    .line 764
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s64vector"

    .line 765
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s64vector-length"

    .line 766
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s64vector-ref"

    .line 767
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s64vector-set!"

    .line 768
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s64vector->list"

    .line 769
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list->s64vector"

    .line 770
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u64vector?"

    .line 771
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-u64vector"

    .line 772
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u64vector"

    .line 773
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u64vector-length"

    .line 774
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u64vector-ref"

    .line 775
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u64vector-set!"

    .line 776
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u64vector->list"

    .line 777
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list->u64vector"

    .line 778
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f32vector?"

    .line 780
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-f32vector"

    .line 781
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f32vector"

    .line 782
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f32vector-length"

    .line 783
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f32vector-ref"

    .line 784
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f32vector-set!"

    .line 785
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f32vector->list"

    .line 786
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list->f32vector"

    .line 787
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f64vector?"

    .line 788
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "make-f64vector"

    .line 789
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f64vector"

    .line 790
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f64vector-length"

    .line 791
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f64vector-ref"

    .line 792
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f64vector-set!"

    .line 793
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f64vector->list"

    .line 794
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list->f64vector"

    .line 795
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cut"

    const-string v2, "gnu.kawa.slib.cut"

    .line 797
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cute"

    const-string v2, "gnu.kawa.slib.cut"

    .line 798
    invoke-virtual {p0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cond-expand"

    .line 800
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "%cond-expand"

    .line 801
    invoke-virtual {p0, v1, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "*print-base*"

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    const-string v3, "outBase"

    .line 803
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "*print-radix*"

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    const-string v3, "outRadix"

    .line 805
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "*print-right-margin*"

    const-string v2, "gnu.text.PrettyWriter"

    const-string v3, "lineLengthLoc"

    .line 807
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "*print-miser-width*"

    const-string v2, "gnu.text.PrettyWriter"

    const-string v3, "miserWidthLoc"

    .line 809
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "html"

    const-string v2, "gnu.kawa.xml.XmlNamespace"

    const-string v3, "HTML"

    .line 811
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unit"

    const-string v2, "unitNamespace"

    .line 812
    invoke-virtual {p0, v1, v4, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path"

    const-string v2, "gnu.kawa.lispexpr.LangObjType"

    const-string v3, "pathType"

    .line 814
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "filepath"

    const-string v3, "filepathType"

    .line 815
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "URI"

    const-string v3, "URIType"

    .line 816
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resolve-uri"

    .line 817
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vector"

    const-string v3, "vectorType"

    .line 819
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "string"

    const-string v3, "stringType"

    .line 820
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list"

    const-string v3, "listType"

    .line 821
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "regex"

    const-string v3, "regexType"

    .line 822
    invoke-virtual {p0, v1, v2, v3}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path?"

    .line 823
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "filepath?"

    .line 824
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "URI?"

    .line 825
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "absolute-path?"

    .line 826
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path-scheme"

    .line 827
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path-authority"

    .line 828
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path-user-info"

    .line 829
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path-host"

    .line 830
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path-port"

    .line 831
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path-file"

    .line 832
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path-parent"

    .line 833
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path-directory"

    .line 834
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path-last"

    .line 835
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path-extension"

    .line 836
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path-fragment"

    .line 837
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path-query"

    .line 838
    invoke-virtual {p0, v1, v10}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0}, Lgnu/mapping/SimpleEnvironment;->setLocked()V

    return-void
.end method

.method public static registerEnvironment()V
    .locals 1

    .line 1448
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    return-void
.end method

.method public static string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 2

    const-string v0, "[]"

    .line 1105
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1109
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v0

    goto :goto_0

    .line 1112
    :cond_0
    invoke-static {p0}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    .line 1115
    :cond_2
    invoke-static {p0}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1117
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method


# virtual methods
.method public asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 1

    .line 1424
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 19

    move-object/from16 v0, p2

    .line 1146
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v1

    .line 1147
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    .line 1148
    instance-of v3, v1, Lgnu/kawa/xml/XmlNamespace;

    if-eqz v3, :cond_0

    .line 1149
    check-cast v1, Lgnu/kawa/xml/XmlNamespace;

    invoke-virtual {v1, v2}, Lgnu/kawa/xml/XmlNamespace;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    .line 1150
    :cond_0
    invoke-virtual {v1}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v4}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 1152
    invoke-static {v2}, Lgnu/math/Unit;->lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1154
    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    .line 1156
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1157
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    return-object v5

    :cond_2
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v4, v8, :cond_6

    add-int/lit8 v9, v4, -0x1

    .line 1160
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3f

    if-ne v9, v10, :cond_6

    .line 1162
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v8, :cond_6

    sub-int/2addr v9, v8

    .line 1165
    invoke-virtual {v2, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 1166
    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 1167
    invoke-virtual {v0, v2, v7}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v2

    .line 1168
    instance-of v9, v2, Lgnu/expr/ReferenceExp;

    if-eqz v9, :cond_3

    .line 1170
    move-object v9, v2

    check-cast v9, Lgnu/expr/ReferenceExp;

    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v9

    if-eqz v9, :cond_4

    const-wide/32 v10, 0x10000

    .line 1171
    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_0

    .line 1174
    :cond_3
    instance-of v9, v2, Lgnu/expr/QuoteExp;

    if-nez v9, :cond_5

    :cond_4
    :goto_0
    move-object v2, v5

    :cond_5
    if-eqz v2, :cond_6

    .line 1178
    new-instance v0, Lgnu/expr/LambdaExp;

    invoke-direct {v0, v8}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object/from16 v1, p1

    .line 1179
    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 1180
    move-object v1, v5

    check-cast v1, Ljava/lang/Object;

    invoke-virtual {v0, v5}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 1181
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    new-array v5, v6, [Lgnu/expr/Expression;

    new-instance v6, Lgnu/expr/ReferenceExp;

    invoke-direct {v6, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    iput-object v3, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    return-object v0

    .line 1188
    :cond_6
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v9, 0x2e

    const/16 v10, 0x2b

    const/16 v11, 0x2d

    const/16 v12, 0xa

    if-eq v2, v11, :cond_7

    if-eq v2, v10, :cond_7

    .line 1191
    invoke-static {v2, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    if-ltz v13, :cond_2b

    :cond_7
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v13, v4, :cond_14

    .line 1202
    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 1203
    invoke-static {v15, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v16

    const/4 v5, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x3

    if-ltz v16, :cond_a

    if-ge v14, v8, :cond_8

    const/4 v5, 0x2

    goto :goto_2

    :cond_8
    if-ge v14, v7, :cond_9

    goto :goto_2

    :cond_9
    const/4 v5, 0x5

    :goto_2
    move v14, v5

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    if-eq v15, v10, :cond_b

    if-ne v15, v11, :cond_c

    :cond_b
    if-nez v14, :cond_c

    const/4 v8, 0x1

    const/4 v14, 0x1

    goto :goto_5

    :cond_c
    if-ne v15, v9, :cond_d

    if-ge v14, v8, :cond_d

    const/4 v8, 0x1

    const/4 v14, 0x3

    goto :goto_5

    :cond_d
    const/16 v8, 0x65

    if-eq v15, v8, :cond_f

    const/16 v8, 0x45

    if-ne v15, v8, :cond_e

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v8, 0x1

    goto :goto_6

    :cond_f
    :goto_4
    if-eq v14, v6, :cond_10

    if-ne v14, v5, :cond_e

    :cond_10
    add-int/lit8 v5, v13, 0x1

    if-ge v5, v4, :cond_e

    .line 1213
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v11, :cond_11

    if-ne v8, v10, :cond_12

    :cond_11
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v4, :cond_12

    .line 1215
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1216
    :cond_12
    invoke-static {v8, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-gez v8, :cond_13

    goto :goto_3

    :cond_13
    const/4 v8, 0x1

    add-int/lit8 v13, v5, 0x1

    const/4 v14, 0x5

    :goto_5
    add-int/2addr v13, v8

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_14
    :goto_6
    if-ge v13, v4, :cond_2b

    if-le v14, v8, :cond_2b

    .line 1227
    new-instance v5, Lgnu/math/DFloNum;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lgnu/math/DFloNum;-><init>(Ljava/lang/String;)V

    .line 1229
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    const/4 v8, 0x0

    :goto_7
    if-ge v13, v4, :cond_27

    add-int/lit8 v14, v13, 0x1

    .line 1232
    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x2a

    if-ne v13, v15, :cond_16

    if-ne v14, v4, :cond_15

    goto/16 :goto_13

    :cond_15
    add-int/lit8 v13, v14, 0x1

    .line 1236
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v18, v14

    move v14, v13

    move/from16 v13, v18

    goto :goto_8

    :cond_16
    const/16 v15, 0x2f

    if-ne v13, v15, :cond_18

    if-eq v14, v4, :cond_2b

    if-eqz v8, :cond_17

    goto/16 :goto_13

    :cond_17
    add-int/lit8 v8, v14, 0x1

    .line 1242
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v14, v8

    const/4 v8, 0x1

    :cond_18
    :goto_8
    add-int/lit8 v15, v14, -0x1

    .line 1248
    :goto_9
    invoke-static {v13}, Ljava/lang/Character;->isLetter(C)Z

    move-result v16

    if-nez v16, :cond_19

    add-int/lit8 v9, v14, -0x1

    if-ne v9, v15, :cond_1a

    goto/16 :goto_13

    :cond_19
    if-ne v14, v4, :cond_26

    const/16 v13, 0x31

    move v9, v14

    .line 1263
    :cond_1a
    invoke-virtual {v3, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v9, 0x5e

    if-ne v13, v9, :cond_1c

    if-ne v14, v4, :cond_1b

    goto/16 :goto_13

    :cond_1b
    add-int/lit8 v9, v14, 0x1

    .line 1269
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v14, v9

    const/4 v9, 0x1

    goto :goto_a

    :cond_1c
    const/4 v9, 0x0

    :goto_a
    if-ne v13, v10, :cond_1e

    if-ne v14, v4, :cond_1d

    goto/16 :goto_13

    :cond_1d
    add-int/lit8 v9, v14, 0x1

    .line 1276
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v14, v9

    const/16 v16, 0x1

    goto :goto_b

    :cond_1e
    if-ne v13, v11, :cond_20

    if-ne v14, v4, :cond_1f

    goto/16 :goto_13

    :cond_1f
    add-int/lit8 v9, v14, 0x1

    .line 1282
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    xor-int/lit8 v14, v8, 0x1

    const/16 v16, 0x1

    move/from16 v18, v14

    move v14, v9

    move/from16 v9, v18

    goto :goto_c

    :cond_20
    move/from16 v16, v9

    :goto_b
    move v9, v8

    :goto_c
    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 1289
    :goto_d
    invoke-static {v13, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    if-gtz v13, :cond_21

    add-int/lit8 v14, v14, -0x1

    :goto_e
    move v13, v14

    goto :goto_f

    :cond_21
    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v15, v13

    add-int/lit8 v17, v17, 0x1

    if-ne v14, v4, :cond_25

    goto :goto_e

    :goto_f
    if-nez v17, :cond_23

    if-eqz v16, :cond_22

    goto/16 :goto_13

    :cond_22
    const/4 v15, 0x1

    :cond_23
    if-eqz v9, :cond_24

    neg-int v15, v15

    .line 1309
    :cond_24
    invoke-static {v15}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v9, 0x2e

    goto/16 :goto_7

    :cond_25
    add-int/lit8 v13, v14, 0x1

    .line 1299
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v18, v14

    move v14, v13

    move/from16 v13, v18

    goto :goto_d

    :cond_26
    add-int/lit8 v9, v14, 0x1

    .line 1261
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v14, v9

    const/16 v9, 0x2e

    goto/16 :goto_9

    :cond_27
    if-ne v13, v4, :cond_2b

    .line 1313
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    .line 1314
    new-array v2, v1, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_29

    mul-int/lit8 v4, v3, 0x2

    .line 1317
    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1318
    sget-object v9, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    .line 1319
    invoke-virtual {v0, v8}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v8

    const/4 v9, 0x1

    add-int/2addr v4, v9

    .line 1320
    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/math/IntNum;

    .line 1321
    invoke-virtual {v4}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x1

    cmp-long v13, v9, v11

    if-eqz v13, :cond_28

    .line 1322
    new-instance v9, Lgnu/expr/ApplyExp;

    sget-object v10, Lkawa/standard/expt;->expt:Lkawa/standard/expt;

    new-array v11, v6, [Lgnu/expr/Expression;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    const/4 v13, 0x1

    aput-object v4, v11, v13

    invoke-direct {v9, v10, v11}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v8, v9

    goto :goto_11

    :cond_28
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 1324
    :goto_11
    aput-object v8, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_29
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v1, v13, :cond_2a

    .line 1328
    aget-object v0, v2, v12

    goto :goto_12

    .line 1330
    :cond_2a
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 1331
    :goto_12
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    new-array v3, v6, [Lgnu/expr/Expression;

    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    aput-object v4, v3, v12

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v1

    :cond_2b
    :goto_13
    if-le v4, v6, :cond_2c

    const/16 v5, 0x3c

    if-ne v2, v5, :cond_2c

    add-int/lit8 v2, v4, -0x1

    .line 1339
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x3e

    if-ne v5, v7, :cond_2c

    const/4 v5, 0x1

    .line 1341
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, -0x2

    const/4 v8, 0x1

    goto :goto_14

    :cond_2c
    const/4 v8, 0x0

    :goto_14
    const/4 v7, 0x0

    :goto_15
    if-le v4, v6, :cond_2d

    add-int/lit8 v2, v4, -0x2

    .line 1348
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x5b

    if-ne v2, v5, :cond_2d

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x5d

    if-ne v2, v5, :cond_2d

    add-int/lit8 v4, v4, -0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_2d
    if-eqz v7, :cond_2e

    const/4 v2, 0x0

    .line 1356
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_16

    :cond_2e
    move-object v4, v3

    .line 1360
    :goto_16
    :try_start_0
    invoke-static {v4}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    if-lez v7, :cond_30

    if-eqz v8, :cond_2f

    if-nez v2, :cond_30

    .line 1363
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    const/4 v5, 0x0

    .line 1364
    invoke-virtual {v0, v1, v5}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 1365
    invoke-static {v1, v0}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v1

    .line 1366
    instance-of v5, v1, Lgnu/expr/ErrorExp;

    if-nez v5, :cond_30

    .line 1367
    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-virtual {v2, v1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v2

    :cond_30
    if-eqz v2, :cond_32

    :goto_17
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_31

    .line 1374
    invoke-static {v2}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v2

    goto :goto_17

    .line 1375
    :cond_31
    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    .line 1379
    :cond_32
    invoke-static {v4}, Lgnu/bytecode/Type;->lookupType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 1380
    instance-of v2, v1, Lgnu/bytecode/PrimType;

    if-eqz v2, :cond_33

    .line 1381
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_18

    :cond_33
    const/16 v1, 0x2e

    .line 1384
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_34

    .line 1385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1387
    :cond_34
    invoke-static {v4}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_18
    if-eqz v0, :cond_37

    if-lez v7, :cond_36

    .line 1394
    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    :goto_19
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_35

    .line 1396
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v0

    goto :goto_19

    .line 1397
    :cond_35
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 1399
    :cond_36
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_37
    const/4 v0, 0x0

    goto :goto_1a

    :catch_0
    nop

    .line 1404
    invoke-static {v3}, Lgnu/bytecode/ArrayClassLoader;->getContextPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1406
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    :goto_1a
    return-object v0
.end method

.method public createReadTable()Lgnu/kawa/lispexpr/ReadTable;
    .locals 4

    .line 1429
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->createInitial()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    const/16 v1, 0x3a

    .line 1430
    iput-char v1, v0, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    const/16 v1, 0x23

    .line 1431
    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v1

    check-cast v1, Lgnu/kawa/lispexpr/ReaderDispatch;

    .line 1432
    new-instance v2, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v3, "syntax"

    invoke-virtual {p0, v3}, Lkawa/standard/Scheme;->asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x27

    invoke-virtual {v1, v3, v2}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 1433
    new-instance v2, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v3, "quasisyntax"

    invoke-virtual {p0, v3}, Lkawa/standard/Scheme;->asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x60

    invoke-virtual {v1, v3, v2}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 1434
    invoke-static {}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v1, v3, v2}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const-string v1, "path"

    const-string v2, "gnu.kawa.lispexpr.LangObjType"

    const-string v3, "pathType"

    .line 1435
    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "filepath"

    const-string v3, "filepathType"

    .line 1436
    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "URI"

    const-string v3, "URIType"

    .line 1437
    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gnu.mapping.Symbol"

    .line 1438
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "symbol"

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/bytecode/Type;)V

    const-string v1, "gnu.mapping.Namespace"

    .line 1439
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "namespace"

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/bytecode/Type;)V

    const-string v1, "duration"

    const-string v2, "kawa.lib.numbers"

    .line 1440
    invoke-virtual {v0, v1, v2, v1}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1441
    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ReadTable;->setFinalColonIsKeyword(Z)V

    return-object v0
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 4

    .line 1083
    sget-object v0, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1085
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    .line 1086
    invoke-static {}, Lkawa/standard/Scheme;->getTypeMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1088
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1089
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/Type;

    .line 1090
    sget-object v3, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 1093
    sget-object v1, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1096
    :cond_1
    sget-object v0, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    .line 1099
    :cond_2
    invoke-super {p0, p1}, Lgnu/kawa/lispexpr/LispLanguage;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormat(Z)Lgnu/lists/AbstractFormat;
    .locals 0

    if-eqz p1, :cond_0

    .line 938
    sget-object p1, Lkawa/standard/Scheme;->writeFormat:Lgnu/lists/AbstractFormat;

    goto :goto_0

    :cond_0
    sget-object p1, Lkawa/standard/Scheme;->displayFormat:Lgnu/lists/AbstractFormat;

    :goto_0
    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Scheme"

    return-object v0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 0

    const/4 p1, 0x3

    return p1
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 2

    .line 1046
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    invoke-static {v0}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "java.lang.String"

    .line 1049
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1050
    sget-object p1, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    return-object p1

    :cond_1
    const-string v1, "gnu.math.IntNum"

    .line 1051
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1052
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    :cond_2
    const-string v1, "gnu.math.DFloNum"

    .line 1053
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1054
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    :cond_3
    const-string v1, "gnu.math.RatNum"

    .line 1055
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1056
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    :cond_4
    const-string v1, "gnu.math.RealNum"

    .line 1057
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1058
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    :cond_5
    const-string v1, "gnu.math.Numeric"

    .line 1059
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1060
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    :cond_6
    const-string v1, "gnu.lists.FVector"

    .line 1061
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1062
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->vectorType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    :cond_7
    const-string v1, "gnu.lists.LList"

    .line 1063
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1064
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    :cond_8
    const-string v1, "gnu.text.Path"

    .line 1065
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1066
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->pathType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    :cond_9
    const-string v1, "gnu.text.URIPath"

    .line 1067
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1068
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->URIType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    :cond_a
    const-string v1, "gnu.text.FilePath"

    .line 1069
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1070
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->filepathType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    :cond_b
    const-string v1, "java.lang.Class"

    .line 1071
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1072
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    :cond_c
    const-string v1, "gnu.bytecode.Type"

    .line 1073
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1074
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    :cond_d
    const-string v1, "gnu.bytecode.ClassType"

    .line 1075
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1076
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1077
    :cond_e
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 0

    .line 1123
    invoke-static {p1}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method public makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3

    .line 1416
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    .line 1417
    aput-object p1, v0, v2

    .line 1418
    array-length p1, p2

    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1419
    new-instance p1, Lgnu/expr/ApplyExp;

    new-instance p2, Lgnu/expr/ReferenceExp;

    sget-object v1, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    invoke-direct {p2, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {p1, p2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p1
.end method
