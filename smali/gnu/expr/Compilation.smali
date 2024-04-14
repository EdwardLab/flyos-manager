.class public Lgnu/expr/Compilation;
.super Ljava/lang/Object;
.source "Compilation.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# static fields
.field public static final BODY_PARSED:I = 0x4

.field public static final CALL_WITH_CONSUMER:I = 0x2

.field public static final CALL_WITH_CONTINUATIONS:I = 0x4

.field public static final CALL_WITH_RETURN:I = 0x1

.field public static final CALL_WITH_TAILCALLS:I = 0x3

.field public static final CALL_WITH_UNSPECIFIED:I = 0x0

.field public static final CLASS_WRITTEN:I = 0xe

.field public static final COMPILED:I = 0xc

.field public static final COMPILE_SETUP:I = 0xa

.field public static final ERROR_SEEN:I = 0x64

.field public static final MODULE_NONSTATIC:I = -0x1

.field public static final MODULE_STATIC:I = 0x1

.field public static final MODULE_STATIC_DEFAULT:I = 0x0

.field public static final MODULE_STATIC_RUN:I = 0x2

.field public static final PROLOG_PARSED:I = 0x2

.field public static final PROLOG_PARSING:I = 0x1

.field public static final RESOLVED:I = 0x6

.field public static final WALKED:I = 0x8

.field public static apply0args:[Lgnu/bytecode/Type; = null

.field public static apply0method:Lgnu/bytecode/Method; = null

.field public static apply1args:[Lgnu/bytecode/Type; = null

.field public static apply1method:Lgnu/bytecode/Method; = null

.field public static apply2args:[Lgnu/bytecode/Type; = null

.field public static apply2method:Lgnu/bytecode/Method; = null

.field public static apply3method:Lgnu/bytecode/Method; = null

.field public static apply4method:Lgnu/bytecode/Method; = null

.field private static applyCpsArgs:[Lgnu/bytecode/Type; = null

.field public static applyCpsMethod:Lgnu/bytecode/Method; = null

.field public static applyNargs:[Lgnu/bytecode/Type; = null

.field public static applyNmethod:Lgnu/bytecode/Method; = null

.field public static applymethods:[Lgnu/bytecode/Method; = null

.field public static argsCallContextField:Lgnu/bytecode/Field; = null

.field private static chainUninitialized:Lgnu/expr/Compilation; = null

.field static checkArgCountMethod:Lgnu/bytecode/Method; = null

.field public static classPrefixDefault:Ljava/lang/String; = null

.field private static final current:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lgnu/expr/Compilation;",
            ">;"
        }
    .end annotation
.end field

.field public static debugPrintExpr:Z = false

.field public static debugPrintFinalExpr:Z

.field public static defaultCallConvention:I

.field public static defaultClassFileVersion:I

.field public static emitSourceDebugExtAttr:Z

.field public static final falseConstant:Lgnu/bytecode/Field;

.field public static generateMainDefault:Z

.field public static getCallContextInstanceMethod:Lgnu/bytecode/Method;

.field public static getCurrentEnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocation1EnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocation2EnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocationMethod:Lgnu/bytecode/Method;

.field public static final getProcedureBindingMethod:Lgnu/bytecode/Method;

.field public static final getSymbolProcedureMethod:Lgnu/bytecode/Method;

.field public static final getSymbolValueMethod:Lgnu/bytecode/Method;

.field public static inlineOk:Z

.field public static final int1Args:[Lgnu/bytecode/Type;

.field public static javaStringType:Lgnu/bytecode/ClassType;

.field static makeListMethod:Lgnu/bytecode/Method;

.field public static moduleStatic:I

.field public static noArgsField:Lgnu/bytecode/Field;

.field public static final objArrayType:Lgnu/bytecode/ArrayType;

.field public static options:Lgnu/text/Options;

.field public static pcCallContextField:Lgnu/bytecode/Field;

.field public static procCallContextField:Lgnu/bytecode/Field;

.field public static scmBooleanType:Lgnu/bytecode/ClassType;

.field public static scmKeywordType:Lgnu/bytecode/ClassType;

.field public static scmListType:Lgnu/bytecode/ClassType;

.field public static scmSequenceType:Lgnu/bytecode/ClassType;

.field static final setNameMethod:Lgnu/bytecode/Method;

.field public static final string1Arg:[Lgnu/bytecode/Type;

.field public static final sym1Arg:[Lgnu/bytecode/Type;

.field public static final trueConstant:Lgnu/bytecode/Field;

.field public static typeApplet:Lgnu/bytecode/ClassType;

.field public static typeCallContext:Lgnu/bytecode/ClassType;

.field public static typeClass:Lgnu/bytecode/ClassType;

.field public static typeClassType:Lgnu/bytecode/ClassType;

.field public static final typeConsumer:Lgnu/bytecode/ClassType;

.field public static typeEnvironment:Lgnu/bytecode/ClassType;

.field public static typeLanguage:Lgnu/bytecode/ClassType;

.field public static typeLocation:Lgnu/bytecode/ClassType;

.field public static typeMethodProc:Lgnu/bytecode/ClassType;

.field public static typeModuleBody:Lgnu/bytecode/ClassType;

.field public static typeModuleMethod:Lgnu/bytecode/ClassType;

.field public static typeModuleWithContext:Lgnu/bytecode/ClassType;

.field public static typeObject:Lgnu/bytecode/ClassType;

.field public static typeObjectType:Lgnu/bytecode/ClassType;

.field public static typePair:Lgnu/bytecode/ClassType;

.field public static typeProcedure:Lgnu/bytecode/ClassType;

.field public static typeProcedure0:Lgnu/bytecode/ClassType;

.field public static typeProcedure1:Lgnu/bytecode/ClassType;

.field public static typeProcedure2:Lgnu/bytecode/ClassType;

.field public static typeProcedure3:Lgnu/bytecode/ClassType;

.field public static typeProcedure4:Lgnu/bytecode/ClassType;

.field public static typeProcedureArray:[Lgnu/bytecode/ClassType;

.field public static typeProcedureN:Lgnu/bytecode/ClassType;

.field public static typeRunnable:Lgnu/bytecode/ClassType;

.field public static typeServlet:Lgnu/bytecode/ClassType;

.field public static typeString:Lgnu/bytecode/ClassType;

.field public static typeSymbol:Lgnu/bytecode/ClassType;

.field public static typeType:Lgnu/bytecode/ClassType;

.field public static typeValues:Lgnu/bytecode/ClassType;

.field public static warnAsError:Lgnu/text/Options$OptionInfo;

.field public static warnInvokeUnknownMethod:Lgnu/text/Options$OptionInfo;

.field public static warnUndefinedVariable:Lgnu/text/Options$OptionInfo;

.field public static warnUnknownMember:Lgnu/text/Options$OptionInfo;


# instance fields
.field callContextVar:Lgnu/bytecode/Variable;

.field callContextVarForInit:Lgnu/bytecode/Variable;

.field public classPrefix:Ljava/lang/String;

.field classes:[Lgnu/bytecode/ClassType;

.field clinitChain:Lgnu/expr/Initializer;

.field clinitMethod:Lgnu/bytecode/Method;

.field public curClass:Lgnu/bytecode/ClassType;

.field public curLambda:Lgnu/expr/LambdaExp;

.field public currentOptions:Lgnu/text/Options;

.field protected current_scope:Lgnu/expr/ScopeExp;

.field public explicit:Z

.field public exprStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lgnu/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field forNameHelper:Lgnu/bytecode/Method;

.field fswitch:Lgnu/bytecode/SwitchState;

.field fswitchIndex:Lgnu/bytecode/Field;

.field public generateMain:Z

.field public immediate:Z

.field private keyUninitialized:I

.field langOptions:I

.field protected language:Lgnu/expr/Language;

.field public lexer:Lgnu/text/Lexer;

.field public lexical:Lgnu/expr/NameLookup;

.field litTable:Lgnu/expr/LitTable;

.field loader:Lgnu/bytecode/ArrayClassLoader;

.field localFieldIndex:I

.field public mainClass:Lgnu/bytecode/ClassType;

.field public mainLambda:Lgnu/expr/ModuleExp;

.field maxSelectorValue:I

.field protected messages:Lgnu/text/SourceMessages;

.field public method:Lgnu/bytecode/Method;

.field method_counter:I

.field public minfo:Lgnu/expr/ModuleInfo;

.field public moduleClass:Lgnu/bytecode/ClassType;

.field moduleInstanceMainField:Lgnu/bytecode/Field;

.field moduleInstanceVar:Lgnu/bytecode/Variable;

.field public mustCompile:Z

.field private nextUninitialized:Lgnu/expr/Compilation;

.field numClasses:I

.field pedantic:Z

.field public pendingImports:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field public thisDecl:Lgnu/bytecode/Variable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 112
    new-instance v0, Lgnu/text/Options;

    invoke-direct {v0}, Lgnu/text/Options;-><init>()V

    sput-object v0, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    .line 113
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "warn-undefined-variable"

    const/4 v3, 0x1

    const-string v4, "warn if no compiler-visible binding for a variable"

    invoke-virtual {v0, v2, v3, v1, v4}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    sput-object v0, Lgnu/expr/Compilation;->warnUndefinedVariable:Lgnu/text/Options$OptionInfo;

    .line 117
    sget-object v0, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "warn-unknown-member"

    const-string v4, "warn if referencing an unknown method or field"

    invoke-virtual {v0, v2, v3, v1, v4}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    sput-object v0, Lgnu/expr/Compilation;->warnUnknownMember:Lgnu/text/Options$OptionInfo;

    .line 121
    sget-object v1, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    const-string v2, "warn-invoke-unknown-method"

    const-string v4, "warn if invoke calls an unknown method (subsumed by warn-unknown-member)"

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    sput-object v0, Lgnu/expr/Compilation;->warnInvokeUnknownMethod:Lgnu/text/Options$OptionInfo;

    .line 125
    sget-object v0, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "warn-as-error"

    const-string v4, "Make all warnings into errors"

    invoke-virtual {v0, v2, v3, v1, v4}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v0

    sput-object v0, Lgnu/expr/Compilation;->warnAsError:Lgnu/text/Options$OptionInfo;

    const/high16 v0, 0x310000    # 4.49994E-39f

    .line 160
    sput v0, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    const/4 v0, 0x0

    .line 201
    sput v0, Lgnu/expr/Compilation;->moduleStatic:I

    .line 232
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    sput-object v1, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const-string v1, "java.lang.Boolean"

    .line 233
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    const-string v1, "java.lang.String"

    .line 234
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->typeString:Lgnu/bytecode/ClassType;

    .line 235
    sput-object v1, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    const-string v1, "gnu.expr.Keyword"

    .line 236
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    const-string v1, "gnu.lists.Sequence"

    .line 237
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->scmSequenceType:Lgnu/bytecode/ClassType;

    const-string v1, "gnu.lists.LList"

    .line 238
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v1, "gnu.lists.Pair"

    .line 239
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    .line 240
    sget-object v1, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-static {v1}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    const-string v2, "java.lang.Runnable"

    .line 241
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    const-string v2, "gnu.bytecode.Type"

    .line 242
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string v2, "gnu.bytecode.ObjectType"

    .line 243
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->typeObjectType:Lgnu/bytecode/ClassType;

    .line 245
    sget-object v2, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    sput-object v2, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string v2, "gnu.bytecode.ClassType"

    .line 246
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    const-string v2, "gnu.mapping.Procedure"

    .line 247
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v2, "gnu.expr.Language"

    .line 249
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    const-string v2, "gnu.mapping.Environment"

    .line 251
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string v2, "gnu.mapping.Location"

    .line 253
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v2, "gnu.mapping.Symbol"

    .line 255
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    .line 257
    sget-object v2, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    const-string v4, "getSymbolValue"

    invoke-virtual {v2, v4, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->getSymbolValueMethod:Lgnu/bytecode/Method;

    .line 259
    sget-object v2, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    const-string v4, "getSymbolProcedure"

    invoke-virtual {v2, v4, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->getSymbolProcedureMethod:Lgnu/bytecode/Method;

    .line 261
    sget-object v2, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    sget-object v4, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const-string v6, "get"

    invoke-virtual {v2, v6, v4, v5, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    .line 264
    sget-object v2, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    sget-object v4, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v6, "getProcedure"

    invoke-virtual {v2, v6, v4, v5, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->getProcedureBindingMethod:Lgnu/bytecode/Method;

    .line 267
    sget-object v2, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    const-string v4, "TRUE"

    invoke-virtual {v2, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->trueConstant:Lgnu/bytecode/Field;

    .line 269
    sget-object v2, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    const-string v4, "FALSE"

    invoke-virtual {v2, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->falseConstant:Lgnu/bytecode/Field;

    .line 272
    sget-object v2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v4, "setName"

    invoke-virtual {v2, v4, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->setNameMethod:Lgnu/bytecode/Method;

    new-array v2, v3, [Lgnu/bytecode/Type;

    .line 276
    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v4, v2, v0

    sput-object v2, Lgnu/expr/Compilation;->int1Args:[Lgnu/bytecode/Type;

    new-array v2, v3, [Lgnu/bytecode/Type;

    .line 277
    sget-object v4, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    aput-object v4, v2, v0

    sput-object v2, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    .line 278
    sput-object v2, Lgnu/expr/Compilation;->sym1Arg:[Lgnu/bytecode/Type;

    .line 280
    sget-object v2, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string v4, "getLocation"

    invoke-virtual {v2, v4, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->getLocation1EnvironmentMethod:Lgnu/bytecode/Method;

    const/4 v2, 0x2

    new-array v5, v2, [Lgnu/bytecode/Type;

    .line 284
    sget-object v6, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    aput-object v6, v5, v0

    sget-object v6, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v6, v5, v3

    .line 285
    sget-object v6, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    sget-object v7, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const/16 v8, 0x11

    invoke-virtual {v6, v4, v5, v7, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getLocation2EnvironmentMethod:Lgnu/bytecode/Method;

    new-array v4, v2, [Lgnu/bytecode/Type;

    aput-object v1, v4, v0

    .line 291
    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v5, v4, v3

    .line 292
    sget-object v5, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v6, "makeList"

    const/16 v7, 0x9

    invoke-virtual {v5, v6, v4, v5, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    .line 297
    sget-object v4, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    sget-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string v9, "getCurrent"

    invoke-virtual {v4, v9, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getCurrentEnvironmentMethod:Lgnu/bytecode/Method;

    .line 301
    sget-object v4, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sput-object v4, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    new-array v5, v3, [Lgnu/bytecode/Type;

    .line 302
    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v6, v5, v0

    sput-object v5, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    new-array v5, v2, [Lgnu/bytecode/Type;

    aput-object v6, v5, v0

    aput-object v6, v5, v3

    .line 303
    sput-object v5, Lgnu/expr/Compilation;->apply2args:[Lgnu/bytecode/Type;

    new-array v5, v3, [Lgnu/bytecode/Type;

    aput-object v1, v5, v0

    .line 304
    sput-object v5, Lgnu/expr/Compilation;->applyNargs:[Lgnu/bytecode/Type;

    .line 308
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "apply0"

    invoke-virtual {v1, v5, v4, v6, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->apply0method:Lgnu/bytecode/Method;

    .line 319
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    sget-object v4, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v5, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const-string v6, "apply1"

    invoke-virtual {v1, v6, v4, v5, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->apply1method:Lgnu/bytecode/Method;

    .line 321
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    sget-object v4, Lgnu/expr/Compilation;->apply2args:[Lgnu/bytecode/Type;

    sget-object v5, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const-string v6, "apply2"

    invoke-virtual {v1, v6, v4, v5, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->apply2method:Lgnu/bytecode/Method;

    const/4 v1, 0x3

    new-array v4, v1, [Lgnu/bytecode/Type;

    .line 323
    sget-object v5, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v0

    aput-object v5, v4, v3

    aput-object v5, v4, v2

    .line 324
    sget-object v6, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v8, "apply3"

    invoke-virtual {v6, v8, v4, v5, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->apply3method:Lgnu/bytecode/Method;

    const/4 v4, 0x4

    new-array v5, v4, [Lgnu/bytecode/Type;

    .line 326
    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v6, v5, v0

    aput-object v6, v5, v3

    aput-object v6, v5, v2

    aput-object v6, v5, v1

    .line 327
    sget-object v8, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v9, "apply4"

    invoke-virtual {v8, v9, v5, v6, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->apply4method:Lgnu/bytecode/Method;

    .line 329
    sget-object v5, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    sget-object v6, Lgnu/expr/Compilation;->applyNargs:[Lgnu/bytecode/Type;

    sget-object v8, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const-string v9, "applyN"

    invoke-virtual {v5, v9, v6, v8, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    new-array v5, v2, [Lgnu/bytecode/Type;

    .line 332
    sget-object v6, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    aput-object v6, v5, v0

    .line 333
    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v6, v5, v3

    .line 334
    sget-object v6, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    sget-object v8, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v9, "checkArgCount"

    invoke-virtual {v6, v9, v5, v8, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->checkArgCountMethod:Lgnu/bytecode/Method;

    const/4 v5, 0x6

    new-array v5, v5, [Lgnu/bytecode/Method;

    .line 339
    sget-object v6, Lgnu/expr/Compilation;->apply0method:Lgnu/bytecode/Method;

    aput-object v6, v5, v0

    sget-object v6, Lgnu/expr/Compilation;->apply1method:Lgnu/bytecode/Method;

    aput-object v6, v5, v3

    sget-object v6, Lgnu/expr/Compilation;->apply2method:Lgnu/bytecode/Method;

    aput-object v6, v5, v2

    sget-object v6, Lgnu/expr/Compilation;->apply3method:Lgnu/bytecode/Method;

    aput-object v6, v5, v1

    sget-object v6, Lgnu/expr/Compilation;->apply4method:Lgnu/bytecode/Method;

    aput-object v6, v5, v4

    sget-object v6, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    const/4 v7, 0x5

    aput-object v6, v5, v7

    sput-object v5, Lgnu/expr/Compilation;->applymethods:[Lgnu/bytecode/Method;

    const-string v5, "gnu.mapping.Procedure0"

    .line 343
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeProcedure0:Lgnu/bytecode/ClassType;

    const-string v5, "gnu.mapping.Procedure1"

    .line 345
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeProcedure1:Lgnu/bytecode/ClassType;

    const-string v5, "gnu.mapping.Procedure2"

    .line 347
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeProcedure2:Lgnu/bytecode/ClassType;

    const-string v5, "gnu.mapping.Procedure3"

    .line 349
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeProcedure3:Lgnu/bytecode/ClassType;

    const-string v5, "gnu.mapping.Procedure4"

    .line 351
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeProcedure4:Lgnu/bytecode/ClassType;

    const-string v5, "gnu.mapping.ProcedureN"

    .line 353
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeProcedureN:Lgnu/bytecode/ClassType;

    const-string v5, "gnu.expr.ModuleBody"

    .line 355
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string v5, "gnu.expr.ModuleWithContext"

    .line 357
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    const-string v5, "java.applet.Applet"

    .line 359
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeApplet:Lgnu/bytecode/ClassType;

    const-string v5, "gnu.kawa.servlet.KawaServlet"

    .line 360
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeServlet:Lgnu/bytecode/ClassType;

    const-string v5, "gnu.mapping.CallContext"

    .line 363
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v5, "gnu.lists.Consumer"

    .line 365
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    .line 367
    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v6, "getInstance"

    invoke-virtual {v5, v6, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    const-string v5, "gnu.mapping.Values"

    .line 369
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v6, "noArgs"

    .line 371
    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->noArgsField:Lgnu/bytecode/Field;

    .line 373
    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v6, "pc"

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    const-string v5, "gnu.mapping.MethodProc"

    .line 375
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeMethodProc:Lgnu/bytecode/ClassType;

    const-string v5, "gnu.expr.ModuleMethod"

    .line 377
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 380
    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v6, "values"

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->argsCallContextField:Lgnu/bytecode/Field;

    .line 382
    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v6, "proc"

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->procCallContextField:Lgnu/bytecode/Field;

    new-array v5, v3, [Lgnu/bytecode/Type;

    .line 384
    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v6, v5, v0

    sput-object v5, Lgnu/expr/Compilation;->applyCpsArgs:[Lgnu/bytecode/Type;

    .line 385
    sget-object v6, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    sget-object v8, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v9, "apply"

    invoke-virtual {v6, v9, v5, v8, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v5

    sput-object v5, Lgnu/expr/Compilation;->applyCpsMethod:Lgnu/bytecode/Method;

    new-array v5, v7, [Lgnu/bytecode/ClassType;

    .line 389
    sget-object v6, Lgnu/expr/Compilation;->typeProcedure0:Lgnu/bytecode/ClassType;

    aput-object v6, v5, v0

    sget-object v6, Lgnu/expr/Compilation;->typeProcedure1:Lgnu/bytecode/ClassType;

    aput-object v6, v5, v3

    sget-object v6, Lgnu/expr/Compilation;->typeProcedure2:Lgnu/bytecode/ClassType;

    aput-object v6, v5, v2

    sget-object v2, Lgnu/expr/Compilation;->typeProcedure3:Lgnu/bytecode/ClassType;

    aput-object v2, v5, v1

    sget-object v1, Lgnu/expr/Compilation;->typeProcedure4:Lgnu/bytecode/ClassType;

    aput-object v1, v5, v4

    sput-object v5, Lgnu/expr/Compilation;->typeProcedureArray:[Lgnu/bytecode/ClassType;

    .line 396
    sput-boolean v0, Lgnu/expr/Compilation;->generateMainDefault:Z

    .line 459
    sput-boolean v3, Lgnu/expr/Compilation;->inlineOk:Z

    const-string v0, ""

    .line 620
    sput-object v0, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    .line 1080
    sput-boolean v3, Lgnu/expr/Compilation;->emitSourceDebugExtAttr:Z

    .line 2971
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    sput-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V
    .locals 2

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    iput-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    .line 129
    new-instance v0, Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-direct {v0, v1}, Lgnu/text/Options;-><init>(Lgnu/text/Options;)V

    iput-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    .line 398
    sget-boolean v0, Lgnu/expr/Compilation;->generateMainDefault:Z

    iput-boolean v0, p0, Lgnu/expr/Compilation;->generateMain:Z

    .line 622
    sget-object v0, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    iput-object v0, p0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    .line 977
    iput-object p1, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    .line 978
    iput-object p2, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    .line 979
    iput-object p3, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    return-void
.end method

.method private checkLoop()V
    .locals 2

    .line 2696
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LambdaExp;

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%do%loop"

    if-ne v0, v1, :cond_0

    return-void

    .line 2697
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error - bad loop state"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static demangle2(CC)C
    .locals 0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    const/16 p1, 0x25

    sparse-switch p0, :sswitch_data_0

    const p0, 0xffff

    return p0

    :sswitch_0
    const/16 p0, 0x7c

    return p0

    :sswitch_1
    const/16 p0, 0x5e

    return p0

    :sswitch_2
    const/16 p0, 0x7e

    return p0

    :sswitch_3
    const/16 p0, 0x2a

    return p0

    :sswitch_4
    const/16 p0, 0x5c

    return p0

    :sswitch_5
    const/16 p0, 0x2f

    return p0

    :sswitch_6
    const/16 p0, 0x3b

    return p0

    :sswitch_7
    const/16 p0, 0x29

    return p0

    :sswitch_8
    const/16 p0, 0x7d

    return p0

    :sswitch_9
    const/16 p0, 0x5d

    return p0

    :sswitch_a
    const/16 p0, 0x3f

    return p0

    :sswitch_b
    const/16 p0, 0x2b

    return p0

    :sswitch_c
    return p1

    :sswitch_d
    const/16 p0, 0x23

    return p0

    :sswitch_e
    const/16 p0, 0x2d

    return p0

    :sswitch_f
    return p1

    :sswitch_10
    const/16 p0, 0x3c

    return p0

    :sswitch_11
    const/16 p0, 0x28

    return p0

    :sswitch_12
    const/16 p0, 0x7b

    return p0

    :sswitch_13
    const/16 p0, 0x5b

    return p0

    :sswitch_14
    const/16 p0, 0x3e

    return p0

    :sswitch_15
    const/16 p0, 0x21

    return p0

    :sswitch_16
    const/16 p0, 0x3d

    return p0

    :sswitch_17
    const/16 p0, 0x2e

    return p0

    :sswitch_18
    const/16 p0, 0x22

    return p0

    :sswitch_19
    const/16 p0, 0x2c

    return p0

    :sswitch_1a
    const/16 p0, 0x3a

    return p0

    :sswitch_1b
    const/16 p0, 0x40

    return p0

    :sswitch_1c
    const/16 p0, 0x26

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x41006d -> :sswitch_1c
        0x410074 -> :sswitch_1b
        0x43006c -> :sswitch_1a
        0x43006d -> :sswitch_19
        0x440071 -> :sswitch_18
        0x440074 -> :sswitch_17
        0x450071 -> :sswitch_16
        0x450078 -> :sswitch_15
        0x470072 -> :sswitch_14
        0x4c0042 -> :sswitch_13
        0x4c0043 -> :sswitch_12
        0x4c0050 -> :sswitch_11
        0x4c0073 -> :sswitch_10
        0x4d0063 -> :sswitch_f
        0x4d006e -> :sswitch_e
        0x4e006d -> :sswitch_d
        0x500063 -> :sswitch_c
        0x50006c -> :sswitch_b
        0x510075 -> :sswitch_a
        0x520042 -> :sswitch_9
        0x520043 -> :sswitch_8
        0x520050 -> :sswitch_7
        0x530043 -> :sswitch_6
        0x53006c -> :sswitch_5
        0x530071 -> :sswitch_4
        0x530074 -> :sswitch_3
        0x54006c -> :sswitch_2
        0x550070 -> :sswitch_1
        0x560042 -> :sswitch_0
    .end sparse-switch
.end method

.method public static demangleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 881
    invoke-static {p0, v0}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static demangleName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 886
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 887
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v4, v2, :cond_8

    .line 893
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eqz v6, :cond_0

    if-nez p1, :cond_0

    .line 896
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    const/4 v6, 0x0

    :cond_0
    const/4 v9, 0x1

    if-nez p1, :cond_3

    const/16 v10, 0x69

    if-ne v8, v10, :cond_3

    if-nez v4, :cond_3

    const/4 v10, 0x2

    if-le v2, v10, :cond_3

    add-int/lit8 v10, v4, 0x1

    .line 900
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x73

    if-ne v11, v12, :cond_3

    add-int/lit8 v11, v4, 0x2

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v12

    if-nez v12, :cond_3

    .line 907
    invoke-static {v11}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v11}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v10

    goto :goto_2

    .line 909
    :cond_2
    :goto_1
    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v10, 0x1

    :goto_2
    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    const/16 v10, 0x24

    if-ne v8, v10, :cond_5

    add-int/lit8 v11, v4, 0x2

    if-ge v11, v2, :cond_5

    add-int/lit8 v12, v4, 0x1

    .line 917
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 918
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 919
    invoke-static {v12, v13}, Lgnu/expr/Compilation;->demangle2(CC)C

    move-result v14

    const v15, 0xffff

    if-eq v14, v15, :cond_4

    .line 922
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    move v4, v11

    const/4 v6, 0x1

    :goto_4
    const/4 v7, 0x1

    goto :goto_5

    :cond_4
    const/16 v11, 0x54

    if-ne v12, v11, :cond_7

    const/16 v11, 0x6f

    if-ne v13, v11, :cond_7

    add-int/lit8 v11, v4, 0x3

    if-ge v11, v2, :cond_7

    .line 928
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_7

    const-string v4, "->"

    .line 931
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    if-nez p1, :cond_7

    if-le v4, v9, :cond_7

    .line 938
    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v8}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v7, 0x2d

    .line 942
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 944
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    const/4 v7, 0x1

    .line 946
    :cond_7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    add-int/2addr v4, v9

    goto/16 :goto_0

    :cond_8
    if-eqz v5, :cond_9

    const/16 v2, 0x3f

    .line 949
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    if-eqz v7, :cond_a

    .line 950
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private dumpInitializers(Lgnu/expr/Initializer;)V
    .locals 0

    .line 602
    invoke-static {p1}, Lgnu/expr/Initializer;->reverse(Lgnu/expr/Initializer;)Lgnu/expr/Initializer;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {p1, p0}, Lgnu/expr/Initializer;->emit(Lgnu/expr/Compilation;)V

    .line 603
    iget-object p1, p1, Lgnu/expr/Initializer;->next:Lgnu/expr/Initializer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized findForImmediateLiterals(I)Lgnu/expr/Compilation;
    .locals 6

    const-class v0, Lgnu/expr/Compilation;

    monitor-enter v0

    .line 2947
    :try_start_0
    sget-object v1, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    const/4 v2, 0x0

    move-object v3, v2

    .line 2949
    :goto_0
    iget-object v4, v1, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    .line 2950
    iget v5, v1, Lgnu/expr/Compilation;->keyUninitialized:I

    if-ne v5, p0, :cond_1

    if-nez v3, :cond_0

    .line 2953
    sput-object v4, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    goto :goto_1

    .line 2955
    :cond_0
    iput-object v4, v3, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    .line 2956
    :goto_1
    iput-object v2, v1, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2957
    monitor-exit v0

    return-object v1

    :cond_1
    move-object v3, v1

    move-object v1, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;
    .locals 4

    const-string v0, "<init>"

    const/4 v1, 0x0

    .line 1154
    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 1158
    :cond_0
    instance-of v2, p1, Lgnu/expr/ClassExp;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v2, :cond_1

    new-array v2, v3, [Lgnu/bytecode/Type;

    .line 1161
    iget-object p1, p1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    invoke-virtual {p1}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    aput-object p1, v2, v1

    goto :goto_0

    .line 1164
    :cond_1
    sget-object v2, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    .line 1165
    :goto_0
    sget-object p1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v3, v2, p1}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrent()Lgnu/expr/Compilation;
    .locals 1

    .line 2976
    sget-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Compilation;

    return-object v0
.end method

.method public static isValidJavaName(Ljava/lang/String;)Z
    .locals 3

    .line 720
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 721
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1

    .line 724
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 2791
    new-instance p0, Lgnu/expr/QuoteExp;

    invoke-static {}, Lgnu/kawa/functions/Convert;->getInstance()Lgnu/kawa/functions/Convert;

    move-result-object p1

    invoke-direct {p0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 2792
    new-instance p1, Lgnu/expr/ApplyExp;

    invoke-direct {p1, p0, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p1
.end method

.method public static makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 1

    .line 2803
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object p0

    return-object p0
.end method

.method public static mangleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    .line 707
    invoke-static {p0, v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mangleName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 745
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    const-string v4, "*init*"

    .line 746
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "<init>"

    return-object p0

    .line 748
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v3, :cond_13

    .line 752
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eqz v6, :cond_2

    .line 755
    invoke-static {v7}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v7

    const/4 v6, 0x0

    .line 758
    :cond_2
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v5, :cond_3

    const-string v8, "$N"

    .line 761
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    .line 764
    :cond_4
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-nez v8, :cond_11

    const/16 v8, 0x5f

    if-ne v7, v8, :cond_5

    goto/16 :goto_6

    :cond_5
    const/16 v8, 0x24

    if-ne v7, v8, :cond_7

    if-le p1, v0, :cond_6

    const-string v7, "$$"

    goto :goto_2

    :cond_6
    const-string v7, "$"

    .line 767
    :goto_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :cond_7
    const/16 v9, 0x5b

    if-eq v7, v9, :cond_f

    const/16 v9, 0x5d

    if-eq v7, v9, :cond_e

    const/16 v9, 0x5e

    if-eq v7, v9, :cond_d

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    .line 825
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v8, v7, 0xc

    and-int/lit8 v8, v8, 0xf

    const/16 v9, 0x10

    .line 826
    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v8, v7, 0x8

    and-int/lit8 v8, v8, 0xf

    .line 827
    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v8, v7, 0x4

    and-int/lit8 v8, v8, 0xf

    .line 828
    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v7, v7, 0xf

    .line 829
    invoke-static {v7, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_0
    const-string v7, "$Tl"

    .line 794
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_1
    const-string v7, "$RC"

    .line 803
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_2
    const-string v7, "$VB"

    .line 823
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_3
    const-string v7, "$LC"

    .line 802
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_4
    const-string v7, "$At"

    .line 793
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 809
    :pswitch_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_8

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    if-nez v2, :cond_9

    add-int/lit8 v8, v5, 0x1

    if-ne v8, v3, :cond_9

    .line 810
    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 813
    invoke-static {v7}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v7

    invoke-virtual {v4, v1, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const-string v7, "is"

    .line 814
    invoke-virtual {v4, v1, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :cond_9
    const-string v7, "$Qu"

    .line 817
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_6
    const-string v7, "$Gr"

    .line 792
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_7
    const-string v7, "$Eq"

    .line 790
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_8
    const-string v7, "$Ls"

    .line 791
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_9
    const-string v7, "$SC"

    .line 821
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_a
    const-string v7, "$Cl"

    .line 820
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_b
    const-string v7, "$Sl"

    .line 789
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_c
    const-string v7, "$Dt"

    .line 796
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_d
    const-string v7, "$Mn"

    if-eqz v2, :cond_a

    .line 775
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :cond_a
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v3, :cond_b

    .line 778
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    :goto_4
    const/16 v10, 0x3e

    if-ne v9, v10, :cond_c

    const-string v5, "$To$"

    .line 781
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v8

    goto :goto_5

    .line 784
    :cond_c
    invoke-static {v9}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-nez v8, :cond_10

    .line 785
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_e
    const-string v7, "$Cm"

    .line 797
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_f
    const-string v7, "$Pl"

    .line 772
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_10
    const-string v7, "$St"

    .line 788
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_11
    const-string v7, "$RP"

    .line 799
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_12
    const-string v7, "$LP"

    .line 798
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_13
    const-string v7, "$Sq"

    .line 804
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_14
    const-string v7, "$Am"

    .line 806
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_15
    const-string v7, "$Pc"

    .line 795
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_16
    const-string v7, "$Nm"

    .line 807
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_17
    const-string v7, "$Dq"

    .line 805
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_18
    const-string v7, "$Ex"

    .line 819
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_d
    const-string v7, "$Up"

    .line 822
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_e
    const-string v7, "$RB"

    .line 801
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_f
    const-string v7, "$LB"

    .line 800
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    :goto_5
    if-nez v2, :cond_12

    const/4 v6, 0x1

    goto :goto_7

    .line 765
    :cond_11
    :goto_6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_12
    :goto_7
    add-int/2addr v5, v0

    goto/16 :goto_1

    .line 835
    :cond_13
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 836
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_8

    :cond_14
    move-object p0, p1

    :goto_8
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mangleName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 734
    :goto_0
    invoke-static {p0, p1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 712
    invoke-static {p0}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 715
    invoke-static {p0, v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static mangleURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/16 v0, 0x2f

    .line 642
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 643
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-le v4, v5, :cond_1

    const-string v6, "class:"

    .line 644
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 645
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v5, 0x3a

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-le v4, v6, :cond_2

    .line 647
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_2

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 650
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v4, v4, -0x5

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    if-le v4, v7, :cond_3

    const/4 v8, 0x3

    .line 654
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v8, "uri"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 657
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v4, v4, -0x4

    .line 661
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v8, 0x0

    .line 664
    :goto_2
    invoke-virtual {p0, v0, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-gez v9, :cond_4

    move v10, v4

    goto :goto_3

    :cond_4
    move v10, v9

    .line 666
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_7

    if-eqz v1, :cond_7

    .line 670
    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    sub-int/2addr v10, v8

    if-le v10, v7, :cond_6

    const-string v8, "www."

    .line 671
    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 672
    invoke-virtual {v11, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 674
    :cond_6
    invoke-static {v11, v5}, Lgnu/expr/Compilation;->putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    goto :goto_5

    :cond_7
    if-eq v8, v10, :cond_b

    const/16 v12, 0x2e

    if-nez v11, :cond_8

    .line 679
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    if-ne v10, v4, :cond_a

    .line 682
    invoke-virtual {p0, v12, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    add-int/lit8 v13, v8, 0x1

    if-le v12, v13, :cond_a

    if-nez v11, :cond_a

    sub-int v11, v4, v12

    if-le v11, v7, :cond_9

    if-ne v11, v6, :cond_a

    const-string v12, "html"

    .line 687
    invoke-virtual {p0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_9
    sub-int/2addr v4, v11

    .line 692
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v10, v4

    .line 696
    :cond_a
    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    :goto_5
    if-gez v9, :cond_c

    .line 702
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    add-int/lit8 v8, v9, 0x1

    goto :goto_2
.end method

.method private static putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 3

    const/16 v0, 0x2e

    .line 627
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 630
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lgnu/expr/Compilation;->putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 631
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 632
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 634
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private registerClass(Lgnu/bytecode/ClassType;)V
    .locals 4

    .line 1084
    iget-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x14

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    .line 1085
    iput-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 1086
    :cond_0
    iget v2, p0, Lgnu/expr/Compilation;->numClasses:I

    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 1088
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Lgnu/bytecode/ClassType;

    .line 1089
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1090
    iput-object v3, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    .line 1092
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x21

    :goto_1
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->addModifiers(I)V

    .line 1094
    iget-object v0, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne p1, v0, :cond_3

    iget v2, p0, Lgnu/expr/Compilation;->numClasses:I

    if-lez v2, :cond_3

    .line 1097
    iget-object p1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v2, p1, v1

    .line 1098
    aput-object v0, p1, v1

    move-object p1, v2

    .line 1100
    :cond_3
    iget-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/expr/Compilation;->numClasses:I

    aput-object p1, v0, v1

    return-void
.end method

.method public static declared-synchronized registerForImmediateLiterals(Lgnu/expr/Compilation;)I
    .locals 4

    const-class v0, Lgnu/expr/Compilation;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2933
    :try_start_0
    sget-object v2, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    :goto_0
    if-eqz v2, :cond_1

    .line 2935
    iget v3, v2, Lgnu/expr/Compilation;->keyUninitialized:I

    if-gt v1, v3, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 2933
    :cond_0
    iget-object v2, v2, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    goto :goto_0

    .line 2938
    :cond_1
    iput v1, p0, Lgnu/expr/Compilation;->keyUninitialized:I

    .line 2939
    sget-object v2, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    iput-object v2, p0, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    .line 2940
    sput-object p0, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static restoreCurrent(Lgnu/expr/Compilation;)V
    .locals 1

    .line 2993
    sget-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setCurrent(Lgnu/expr/Compilation;)V
    .locals 1

    .line 2981
    sget-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;
    .locals 2

    .line 2986
    sget-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Compilation;

    .line 2987
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static setupLiterals(I)V
    .locals 5

    .line 2903
    invoke-static {p0}, Lgnu/expr/Compilation;->findForImmediateLiterals(I)Lgnu/expr/Compilation;

    move-result-object p0

    .line 2906
    :try_start_0
    iget-object v0, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    iget-object v1, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2909
    iget-object v1, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    iget-object v1, v1, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2918
    iget-object v3, v1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iget-object v4, v1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2910
    iget-object v1, v1, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    goto :goto_0

    .line 2921
    :cond_0
    iput-object v2, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 2925
    new-instance v0, Lgnu/mapping/WrappedException;

    const-string v1, "internal error"

    invoke-direct {v0, v1, p0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private startClassInit()Lgnu/bytecode/Method;
    .locals 5

    .line 1905
    iget-object v0, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    sget-object v1, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v3, "<clinit>"

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v1, v2, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1908
    invoke-virtual {v0}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 1910
    iget-boolean v1, p0, Lgnu/expr/Compilation;->generateMain:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1912
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    const/4 v2, 0x0

    const-string v3, "registerEnvironment"

    .line 1914
    invoke-virtual {v1, v3, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1917
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1919
    :cond_1
    iget-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    return-object v0
.end method

.method private varArgsToArray(Lgnu/expr/LambdaExp;ILgnu/bytecode/Variable;Lgnu/bytecode/Type;Lgnu/bytecode/Variable;)V
    .locals 9

    .line 1830
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 1831
    check-cast p4, Lgnu/bytecode/ArrayType;

    invoke-virtual {p4}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p4

    .line 1832
    invoke-virtual {p4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Object"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz p5, :cond_0

    if-nez v1, :cond_0

    .line 1835
    invoke-virtual {v0, p5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1836
    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1837
    sget-object p1, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string p2, "getRestArgsArray"

    invoke-virtual {p1, p2, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x2

    if-nez p2, :cond_1

    if-nez v1, :cond_1

    .line 1840
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto/16 :goto_3

    .line 1843
    :cond_1
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    if-nez p3, :cond_4

    .line 1846
    sget-object p3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object p3

    if-eqz p5, :cond_2

    .line 1849
    invoke-virtual {v0, p5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1850
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const/4 v5, 0x0

    const-string v6, "getArgCount"

    invoke-virtual {v4, v6, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 1854
    :cond_2
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1855
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    :goto_0
    if-eqz p2, :cond_3

    .line 1859
    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1860
    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1862
    :cond_3
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1864
    :cond_4
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1865
    invoke-virtual {p4}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 1866
    new-instance v7, Lgnu/bytecode/Label;

    invoke-direct {v7, v0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1867
    new-instance v8, Lgnu/bytecode/Label;

    invoke-direct {v8, v0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1868
    invoke-virtual {v8, v0}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 1869
    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 1870
    invoke-virtual {v8, v0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1872
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 1873
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    if-eqz p5, :cond_5

    .line 1875
    invoke-virtual {v0, p5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_1

    .line 1877
    :cond_5
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1878
    :goto_1
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    if-eqz p2, :cond_6

    .line 1881
    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1882
    sget-object p2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->emitAdd(Lgnu/bytecode/PrimType;)V

    :cond_6
    if-eqz p5, :cond_7

    .line 1885
    sget-object p2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string p5, "getArgAsObject"

    invoke-virtual {p2, p5, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p2

    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_2

    .line 1887
    :cond_7
    sget-object p2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    :goto_2
    if-eqz v1, :cond_8

    .line 1890
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1894
    :cond_8
    invoke-virtual {v0, p4}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 1895
    invoke-virtual {v7, v0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    const/4 p1, -0x1

    .line 1896
    invoke-virtual {v0, p3, p1}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1897
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1898
    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntGeZero(Lgnu/bytecode/Label;)V

    .line 1899
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    :goto_3
    return-void
.end method


# virtual methods
.method public addClass(Lgnu/bytecode/ClassType;)V
    .locals 1

    .line 1105
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v0, v0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1107
    sget-boolean v0, Lgnu/expr/Compilation;->emitSourceDebugExtAttr:Z

    if-eqz v0, :cond_0

    .line 1108
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/Language;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->setStratum(Ljava/lang/String;)V

    .line 1109
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v0, v0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->setSourceFile(Ljava/lang/String;)V

    .line 1111
    :cond_1
    invoke-direct {p0, p1}, Lgnu/expr/Compilation;->registerClass(Lgnu/bytecode/ClassType;)V

    .line 1112
    sget v0, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->setClassfileVersion(I)V

    return-void
.end method

.method public addMainClass(Lgnu/expr/ModuleExp;)V
    .locals 3

    .line 1123
    invoke-virtual {p1, p0}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 1125
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1127
    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 1128
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getSuperType()Lgnu/bytecode/ClassType;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1131
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1132
    sget-object v1, Lgnu/expr/Compilation;->typeApplet:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 1133
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1134
    sget-object v1, Lgnu/expr/Compilation;->typeServlet:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 1136
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 1138
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->makeRunnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1139
    sget-object v2, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/bytecode/ClassType;->addInterface(Lgnu/bytecode/ClassType;)V

    .line 1140
    :cond_4
    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1142
    iput-object v0, p1, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 1143
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 1144
    iget-object v0, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-static {v0, p1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    return-void
.end method

.method public allocLocalField(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 2

    if-nez p2, :cond_0

    .line 2372
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tmp_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lgnu/expr/Compilation;->localFieldIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/expr/Compilation;->localFieldIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2373
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object p1

    return-object p1
.end method

.method callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/ClassType;",
            "Ljava/util/Vector<",
            "Lgnu/bytecode/ClassType;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1243
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    .line 1244
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1247
    :cond_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 1248
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-void

    .line 1250
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1255
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1258
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 1260
    aget-object v4, v0, v3

    invoke-virtual {p0, v4, p2}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1264
    :cond_4
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    .line 1266
    instance-of p2, p1, Lgnu/expr/PairClassType;

    if-eqz p2, :cond_5

    .line 1267
    check-cast p1, Lgnu/expr/PairClassType;

    iget-object p1, p1, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 1272
    :cond_5
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$class"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    return-void

    :cond_6
    :goto_2
    const-string p2, "$finit$"

    .line 1283
    invoke-virtual {p1, p2, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1286
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p2

    .line 1287
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1288
    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    :cond_7
    return-void
.end method

.method public cleanupAfterCompilation()V
    .locals 2

    const/4 v0, 0x0

    .line 1019
    :goto_0
    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v0, v1, :cond_0

    .line 1020
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->cleanupAfterCompilation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1021
    iput-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    .line 1022
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iput-object v0, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    .line 1024
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_1

    .line 1025
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    iput-object v0, v1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 1026
    :cond_1
    iget-object v1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iput-object v0, v1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 1027
    iput-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 1028
    iget-boolean v1, p0, Lgnu/expr/Compilation;->immediate:Z

    if-nez v1, :cond_2

    .line 1029
    iput-object v0, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    :cond_2
    return-void
.end method

.method public compileConstant(Ljava/lang/Object;)V
    .locals 2

    .line 442
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    if-nez p1, :cond_0

    .line 444
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    goto :goto_0

    .line 445
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lgnu/expr/Compilation;->immediate:Z

    if-nez v1, :cond_1

    .line 446
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->compileConstantToField(Ljava/lang/Object;)Lgnu/bytecode/Field;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    :goto_0
    return-void
.end method

.method public compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V
    .locals 7

    .line 491
    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_0

    return-void

    .line 493
    :cond_0
    instance-of v0, p1, Lgnu/mapping/Values;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 495
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v0

    .line 496
    array-length v2, v0

    .line 497
    instance-of v3, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v3, :cond_2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 501
    aget-object p1, v0, v1

    invoke-virtual {p0, p1, p2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 506
    :cond_2
    instance-of v0, p2, Lgnu/expr/ConditionalTarget;

    if-eqz v0, :cond_4

    .line 508
    check-cast p2, Lgnu/expr/ConditionalTarget;

    .line 509
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p2, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    goto :goto_1

    :cond_3
    iget-object p1, p2, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    :goto_1
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    return-void

    .line 513
    :cond_4
    instance-of v0, p2, Lgnu/expr/StackTarget;

    if-eqz v0, :cond_14

    .line 515
    move-object v0, p2

    check-cast v0, Lgnu/expr/StackTarget;

    invoke-virtual {v0}, Lgnu/expr/StackTarget;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 516
    instance-of v2, v0, Lgnu/bytecode/PrimType;

    if-eqz v2, :cond_10

    .line 520
    :try_start_0
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 522
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_3

    :cond_6
    :goto_2
    const/16 v2, 0x20

    .line 524
    :goto_3
    instance-of v5, p1, Ljava/lang/Number;

    if-eqz v5, :cond_d

    .line 526
    move-object v5, p1

    check-cast v5, Ljava/lang/Number;

    const/16 v6, 0x42

    if-eq v2, v6, :cond_c

    const/16 v6, 0x44

    if-eq v2, v6, :cond_b

    const/16 v6, 0x46

    if-eq v2, v6, :cond_a

    const/16 v6, 0x53

    if-eq v2, v6, :cond_9

    const/16 v6, 0x49

    if-eq v2, v6, :cond_8

    const/16 v6, 0x4a

    if-eq v2, v6, :cond_7

    goto :goto_4

    .line 539
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    return-void

    .line 530
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    return-void

    .line 533
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-virtual {v3, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    return-void

    .line 542
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v3, v1}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    return-void

    .line 545
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    return-void

    .line 536
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-virtual {v3, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    return-void

    :cond_d
    :goto_4
    const/16 v5, 0x43

    if-ne v2, v5, :cond_e

    .line 551
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/PrimType;

    invoke-virtual {v1, p1}, Lgnu/bytecode/PrimType;->charValue(Ljava/lang/Object;)C

    move-result v1

    invoke-virtual {v3, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    return-void

    :cond_e
    const/16 v5, 0x5a

    if-ne v2, v5, :cond_10

    .line 556
    invoke-static {p1}, Lgnu/bytecode/PrimType;->booleanValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    .line 557
    :cond_f
    invoke-virtual {v3, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 566
    :cond_10
    sget-object v1, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    if-ne v0, v1, :cond_11

    instance-of v1, p1, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_11

    .line 568
    check-cast p1, Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    return-void

    .line 573
    :cond_11
    :try_start_1
    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 577
    :catch_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 578
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v2, :cond_12

    const-string v2, "cannot convert void to "

    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_12
    const-string v2, "cannot convert literal (of type "

    .line 582
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p1, :cond_13

    const-string v2, "<null>"

    .line 584
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 586
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    const-string v2, ") to "

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    :goto_6
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x77

    .line 590
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 593
    :cond_14
    :goto_7
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    if-nez p1, :cond_15

    .line 594
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    goto :goto_8

    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    :goto_8
    invoke-virtual {p2, p0, p1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public compileConstantToField(Ljava/lang/Object;)Lgnu/bytecode/Field;
    .locals 1

    .line 453
    iget-object v0, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v0, p1}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object p1

    .line 454
    iget-object v0, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {p1, v0}, Lgnu/expr/Literal;->assign(Lgnu/expr/LitTable;)V

    .line 456
    :cond_0
    iget-object p1, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    return-object p1
.end method

.method public compileToArchive(Lgnu/expr/ModuleExp;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, ".zip"

    .line 1036
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const-string v0, ".jar"

    .line 1038
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    .line 1042
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    const/16 v0, 0xc

    .line 1046
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->process(I)V

    .line 1048
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1050
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    if-eqz p1, :cond_3

    .line 1054
    new-instance p1, Ljava/util/jar/JarOutputStream;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p2}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 1057
    :cond_3
    new-instance p1, Ljava/util/zip/ZipOutputStream;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1059
    :goto_2
    iget p2, p0, Lgnu/expr/Compilation;->numClasses:I

    new-array p2, p2, [[B

    .line 1060
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v2, 0x0

    .line 1061
    :goto_3
    iget v3, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v2, v3, :cond_4

    .line 1063
    iget-object v3, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v3, v3, v2

    .line 1064
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v4

    aput-object v4, p2, v2

    .line 1065
    new-instance v4, Ljava/util/zip/ZipEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".class"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1068
    aget-object v3, p2, v2

    array-length v3, v3

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 1069
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 1070
    aget-object v3, p2, v2

    array-length v5, v3

    invoke-virtual {v0, v3, v1, v5}, Ljava/util/zip/CRC32;->update([BII)V

    .line 1071
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 1073
    invoke-virtual {p1, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1074
    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1076
    :cond_4
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void
.end method

.method public currentLambda()Lgnu/expr/LambdaExp;
    .locals 1

    .line 2428
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    return-object v0
.end method

.method public currentModule()Lgnu/expr/ModuleExp;
    .locals 1

    .line 2436
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    return-object v0
.end method

.method public currentScope()Lgnu/expr/ScopeExp;
    .locals 1

    .line 2451
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    return-object v0
.end method

.method public error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p3, p4, p2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Ljava/lang/String;Lgnu/expr/Declaration;)V

    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 1

    const/16 v0, 0x77

    if-ne p1, v0, :cond_0

    .line 2590
    invoke-virtual {p0}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x65

    .line 2593
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p0, p2}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    return-void
.end method

.method public error(CLjava/lang/String;Lgnu/text/SourceLocator;)V
    .locals 8

    .line 2573
    invoke-interface {p3}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 2574
    invoke-interface {p3}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v1

    .line 2575
    invoke-interface {p3}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result p3

    if-eqz v0, :cond_0

    if-gtz v1, :cond_1

    .line 2578
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 2579
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v1

    .line 2580
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result p3

    :cond_1
    move v6, p3

    move-object v4, v0

    move v5, v1

    const/16 p3, 0x77

    if-ne p1, p3, :cond_2

    .line 2583
    invoke-virtual {p0}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p1, 0x65

    const/16 v3, 0x65

    goto :goto_0

    :cond_2
    move v3, p1

    .line 2585
    :goto_0
    iget-object v2, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/String;Lgnu/expr/Declaration;)V
    .locals 7

    const/16 v0, 0x77

    if-ne p1, v0, :cond_0

    .line 2604
    invoke-virtual {p0}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x65

    const/16 v1, 0x65

    goto :goto_0

    :cond_0
    move v1, p1

    .line 2607
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 2608
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v0

    .line 2609
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v2

    .line 2610
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v3

    if-lez v3, :cond_1

    .line 2613
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 2615
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getColumnNumber()I

    move-result p4

    move-object v2, p1

    move v4, p4

    goto :goto_1

    :cond_1
    move v3, v0

    move v4, v2

    move-object v2, p1

    .line 2617
    :goto_1
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    .locals 2

    const/4 v0, 0x0

    .line 612
    :goto_0
    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v0, v1, :cond_1

    .line 614
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    iget-object p1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public freeLocalField(Lgnu/bytecode/Field;)V
    .locals 0

    return-void
.end method

.method public generateApplyMethodsWithContext(Lgnu/expr/LambdaExp;)V
    .locals 26

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1461
    iget-object v0, v7, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    const/4 v8, 0x0

    if-nez v0, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v9, v0

    :goto_0
    if-nez v9, :cond_1

    return-void

    .line 1465
    :cond_1
    iget-object v10, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1466
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    iput-object v0, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1467
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    sget-object v1, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1468
    iget-object v0, v6, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iput-object v0, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1470
    :cond_2
    iget-object v11, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    const/4 v12, 0x1

    new-array v0, v12, [Lgnu/bytecode/Type;

    .line 1472
    sget-object v1, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v8

    .line 1475
    iget-object v1, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v3, "apply"

    invoke-virtual {v1, v3, v0, v2, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    iput-object v0, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1478
    invoke-virtual {v0}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v13

    .line 1479
    invoke-virtual {v13, v12}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v14

    .line 1481
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1482
    sget-object v0, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    invoke-virtual {v13, v0}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1483
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v15

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v9, :cond_18

    .line 1487
    iget-object v0, v7, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lgnu/expr/LambdaExp;

    .line 1488
    iget-object v3, v4, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 1489
    array-length v2, v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_17

    add-int/lit8 v0, v2, -0x1

    if-ne v1, v0, :cond_4

    .line 1495
    iget v0, v4, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v0, :cond_3

    iget v0, v4, Lgnu/expr/LambdaExp;->max_args:I

    iget v8, v4, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v8, v2

    if-lt v0, v8, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 1501
    :goto_3
    invoke-virtual {v4, v6}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v15, v8, v13}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 1503
    iget-object v8, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v8, v4}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v8

    .line 1504
    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v12

    move/from16 v16, v5

    if-lez v12, :cond_5

    .line 1506
    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5, v12}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1508
    :cond_5
    aget-object v12, v3, v1

    .line 1509
    invoke-virtual {v12}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v5

    .line 1510
    iget v7, v4, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v7, v1

    const/16 v17, 0x0

    move/from16 v18, v9

    const/4 v9, 0x4

    if-le v1, v9, :cond_7

    const/4 v9, 0x1

    if-le v2, v9, :cond_7

    .line 1516
    sget-object v9, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v9}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v9

    .line 1517
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    move/from16 v20, v1

    .line 1518
    sget-object v1, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    move/from16 v21, v2

    const-string v2, "getArgCount"

    move-object/from16 v22, v10

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v13, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1519
    iget v1, v4, Lgnu/expr/LambdaExp;->min_args:I

    if-eqz v1, :cond_6

    .line 1521
    iget v1, v4, Lgnu/expr/LambdaExp;->min_args:I

    invoke-virtual {v13, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1522
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v1}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1524
    :cond_6
    invoke-virtual {v13, v9}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_4

    :cond_7
    move/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v22, v10

    move-object/from16 v9, v17

    .line 1527
    :goto_4
    invoke-virtual {v12}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v0, :cond_8

    const/4 v2, 0x2

    goto :goto_5

    :cond_8
    const/4 v2, 0x1

    :goto_5
    add-int/2addr v2, v7

    .line 1528
    array-length v10, v5

    if-ge v2, v10, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v1, v2

    if-lez v1, :cond_a

    .line 1532
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1533
    iget-object v1, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    iget-object v10, v6, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    if-ne v1, v10, :cond_a

    iget-object v1, v6, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eq v1, v10, :cond_a

    .line 1534
    iget-object v1, v6, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v13, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1537
    :cond_a
    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1538
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1539
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    :cond_b
    move-object/from16 v24, v11

    const/4 v10, 0x0

    const/16 v23, 0x0

    :goto_7
    if-ge v10, v7, :cond_10

    if-eqz v9, :cond_c

    .line 1542
    iget v11, v4, Lgnu/expr/LambdaExp;->min_args:I

    if-lt v10, v11, :cond_c

    .line 1544
    invoke-virtual {v13, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1545
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitIfIntLEqZero()V

    .line 1546
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1547
    iget v11, v4, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v11, v10, v11

    aget-object v11, v3, v11

    invoke-virtual {v13, v11}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1548
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitElse()V

    add-int/lit8 v23, v23, 0x1

    const/4 v11, -0x1

    .line 1550
    invoke-virtual {v13, v9, v11}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1553
    :cond_c
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    const/4 v11, 0x4

    if-gt v10, v11, :cond_d

    if-nez v0, :cond_d

    move-object/from16 v19, v3

    .line 1554
    iget v3, v4, Lgnu/expr/LambdaExp;->max_args:I

    if-gt v3, v11, :cond_e

    .line 1555
    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v15

    const-string v15, "value"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    invoke-virtual {v13, v3}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto :goto_8

    :cond_d
    move-object/from16 v19, v3

    :cond_e
    move-object/from16 v25, v15

    .line 1559
    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v11, "values"

    invoke-virtual {v3, v11}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    invoke-virtual {v13, v3}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1561
    invoke-virtual {v13, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1562
    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v13, v3}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    .line 1564
    :goto_8
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1565
    sget-object v11, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq v3, v11, :cond_f

    .line 1567
    iget-object v11, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v11, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v11

    add-int/lit8 v15, v10, 0x1

    .line 1568
    invoke-static {v6, v4, v15, v3}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V

    .line 1570
    iget-object v3, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v3, v11}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1572
    :cond_f
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v19

    move-object/from16 v15, v25

    goto/16 :goto_7

    :cond_10
    move-object/from16 v19, v3

    move-object/from16 v25, v15

    if-eqz v0, :cond_14

    add-int/2addr v2, v7

    .line 1577
    aget-object v5, v5, v2

    .line 1578
    instance-of v0, v5, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_11

    move-object/from16 v0, p0

    move/from16 v10, v20

    move-object v1, v4

    move/from16 v11, v21

    move v2, v7

    move-object/from16 v15, v19

    move-object v3, v9

    move-object v9, v4

    move-object v4, v5

    move-object v5, v14

    .line 1579
    invoke-direct/range {v0 .. v5}, Lgnu/expr/Compilation;->varArgsToArray(Lgnu/expr/LambdaExp;ILgnu/bytecode/Variable;Lgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    goto :goto_9

    :cond_11
    move-object v9, v4

    move-object/from16 v15, v19

    move/from16 v10, v20

    move/from16 v11, v21

    .line 1580
    invoke-virtual {v5}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gnu.lists.LList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1583
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1584
    invoke-virtual {v13, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1585
    sget-object v0, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v1, "getRestArgsList"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v13, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_a

    :cond_12
    const/4 v2, 0x1

    .line 1587
    sget-object v0, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    if-ne v5, v0, :cond_13

    .line 1588
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_a

    .line 1590
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported #!rest type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object v9, v4

    move-object/from16 v15, v19

    move/from16 v10, v20

    move/from16 v11, v21

    :goto_9
    const/4 v2, 0x1

    .line 1592
    :goto_a
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1593
    invoke-virtual {v13, v12}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    const/4 v0, -0x1

    :goto_b
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_15

    .line 1595
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_b

    .line 1596
    :cond_15
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_16

    .line 1597
    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1599
    :cond_16
    iget-object v0, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, v8}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1600
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    add-int/lit8 v1, v10, 0x1

    move-object/from16 v7, p1

    move-object v4, v9

    move v2, v11

    move-object v3, v15

    move/from16 v5, v16

    move/from16 v9, v18

    move-object/from16 v10, v22

    move-object/from16 v11, v24

    move-object/from16 v15, v25

    const/4 v8, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_17
    move/from16 v16, v5

    move/from16 v18, v9

    move-object/from16 v22, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v15

    const/4 v2, 0x1

    add-int/lit8 v5, v16, 0x1

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_18
    move-object/from16 v22, v10

    move-object/from16 v24, v11

    move-object v0, v15

    .line 1603
    invoke-virtual {v0, v13}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1604
    sget-object v1, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    const-string v2, "applyError"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 1605
    invoke-virtual {v13, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1606
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1607
    invoke-virtual {v0, v13}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v0, v24

    .line 1608
    iput-object v0, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v0, v22

    .line 1609
    iput-object v0, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public generateApplyMethodsWithoutContext(Lgnu/expr/LambdaExp;)V
    .locals 30

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1618
    iget-object v0, v7, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v9, v0

    :goto_0
    if-nez v9, :cond_1

    return-void

    .line 1622
    :cond_1
    iget-object v10, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1623
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    iput-object v0, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1624
    sget-object v11, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 1625
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    sget-object v1, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1626
    iget-object v0, v6, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iput-object v0, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1627
    :cond_2
    iget-object v12, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1629
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v14, 0x2

    if-lt v0, v14, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v5, v0

    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x6

    if-ge v5, v1, :cond_24

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v4, v9, :cond_1f

    .line 1642
    iget-object v8, v7, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/expr/LambdaExp;

    .line 1645
    iget-object v14, v8, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 1646
    array-length v13, v14

    move/from16 v18, v4

    .line 1647
    iget v4, v8, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v4, :cond_5

    iget v4, v8, Lgnu/expr/LambdaExp;->max_args:I

    iget v7, v8, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v7, v13

    if-lt v4, v7, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v4, 0x1

    :goto_5
    const/4 v7, 0x5

    if-ge v5, v7, :cond_8

    .line 1653
    iget v7, v8, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v7, v5, v7

    if-ltz v7, :cond_7

    if-ge v7, v13, :cond_7

    add-int/lit8 v13, v13, -0x1

    if-ne v7, v13, :cond_6

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v4, 0x1

    :goto_7
    move/from16 v19, v7

    const/4 v7, 0x0

    const/4 v13, 0x1

    goto :goto_9

    .line 1662
    :cond_8
    iget v7, v8, Lgnu/expr/LambdaExp;->min_args:I

    const/16 v17, 0x5

    rsub-int/lit8 v7, v7, 0x5

    if-lez v7, :cond_9

    if-gt v13, v7, :cond_9

    if-nez v4, :cond_9

    const/4 v7, 0x1

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    add-int/lit8 v19, v13, -0x1

    move/from16 v29, v7

    move v7, v4

    move/from16 v4, v29

    :goto_9
    if-eqz v4, :cond_a

    move v13, v5

    move/from16 v25, v9

    move-object/from16 v28, v11

    move/from16 v11, v18

    const/16 v17, 0x5

    goto/16 :goto_15

    :cond_a
    if-nez v1, :cond_e

    const/4 v4, 0x5

    if-ge v5, v4, :cond_c

    .line 1674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apply"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v5, 0x1

    .line 1675
    new-array v1, v1, [Lgnu/bytecode/Type;

    move v2, v5

    :goto_a
    if-lez v2, :cond_b

    .line 1677
    sget-object v3, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_b
    move-object v2, v0

    const/4 v0, 0x2

    const/4 v3, 0x1

    goto :goto_b

    :cond_c
    const/4 v0, 0x2

    new-array v1, v0, [Lgnu/bytecode/Type;

    .line 1683
    sget-object v2, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "applyN"

    :goto_b
    const/4 v15, 0x0

    .line 1685
    aput-object v11, v1, v15

    .line 1686
    iget-object v15, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    sget v4, Lgnu/expr/Compilation;->defaultCallConvention:I

    if-lt v4, v0, :cond_d

    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    goto :goto_c

    :cond_d
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    :goto_c
    invoke-virtual {v15, v2, v1, v0, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    iput-object v0, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1689
    invoke-virtual {v0}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 1691
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    const-string v3, "selector"

    .line 1692
    invoke-virtual {v11, v3}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1693
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v3

    move-object v15, v0

    move-object/from16 v22, v1

    move-object/from16 v21, v2

    move-object v4, v3

    const/16 v20, 0x1

    goto :goto_d

    :cond_e
    move/from16 v20, v1

    move-object v4, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v15

    move-object v15, v0

    .line 1698
    :goto_d
    invoke-virtual {v8, v6}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v0

    invoke-virtual {v4, v0, v15}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 1700
    iget-object v0, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, v8}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v3

    .line 1701
    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v0

    if-lez v0, :cond_f

    .line 1703
    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1, v0}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1705
    :cond_f
    aget-object v2, v14, v19

    .line 1706
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v0

    .line 1707
    iget v1, v8, Lgnu/expr/LambdaExp;->min_args:I

    add-int v1, v1, v19

    move-object/from16 v19, v3

    const/4 v3, 0x4

    if-le v5, v3, :cond_11

    const/4 v3, 0x1

    if-le v13, v3, :cond_11

    .line 1713
    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v15, v3}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v3

    move-object/from16 v23, v4

    const/4 v13, 0x2

    .line 1714
    invoke-virtual {v15, v13}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v4

    invoke-virtual {v15, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1715
    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 1716
    iget v4, v8, Lgnu/expr/LambdaExp;->min_args:I

    if-eqz v4, :cond_10

    .line 1718
    iget v4, v8, Lgnu/expr/LambdaExp;->min_args:I

    invoke-virtual {v15, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1719
    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v15, v4}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1721
    :cond_10
    invoke-virtual {v15, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_e

    :cond_11
    move-object/from16 v23, v4

    const/4 v3, 0x0

    .line 1724
    :goto_e
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v4

    const/4 v13, 0x1

    xor-int/2addr v4, v13

    add-int v13, v1, v7

    move-object/from16 v24, v2

    .line 1725
    array-length v2, v0

    if-ge v13, v2, :cond_12

    const/16 v16, 0x1

    goto :goto_f

    :cond_12
    const/16 v16, 0x0

    :goto_f
    add-int v4, v4, v16

    if-lez v4, :cond_13

    .line 1729
    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1730
    iget-object v2, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    iget-object v4, v6, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    if-ne v2, v4, :cond_13

    iget-object v2, v6, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eq v2, v4, :cond_13

    .line 1731
    iget-object v2, v6, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v15, v2}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1734
    :cond_13
    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1735
    invoke-virtual {v2}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1736
    invoke-virtual {v2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    :cond_14
    move/from16 v25, v9

    const/4 v4, 0x0

    const/4 v13, 0x0

    :goto_10
    if-ge v4, v1, :cond_18

    if-eqz v3, :cond_15

    .line 1739
    iget v9, v8, Lgnu/expr/LambdaExp;->min_args:I

    if-lt v4, v9, :cond_15

    .line 1741
    invoke-virtual {v15, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1742
    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitIfIntLEqZero()V

    .line 1743
    iget v9, v8, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v9, v4, v9

    aget-object v9, v14, v9

    invoke-virtual {v15, v9}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1744
    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitElse()V

    add-int/lit8 v13, v13, 0x1

    const/4 v9, -0x1

    .line 1746
    invoke-virtual {v15, v3, v9}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    :cond_15
    const/4 v9, 0x4

    if-gt v5, v9, :cond_16

    add-int/lit8 v9, v4, 0x2

    .line 1752
    invoke-virtual {v15, v9}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v9

    .line 1753
    invoke-virtual {v15, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    move/from16 v27, v5

    goto :goto_11

    :cond_16
    move/from16 v27, v5

    const/4 v9, 0x2

    .line 1758
    invoke-virtual {v15, v9}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v15, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1759
    invoke-virtual {v15, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1760
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v15, v5}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    const/4 v9, 0x0

    .line 1762
    :goto_11
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    move-object/from16 v28, v11

    .line 1763
    sget-object v11, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq v5, v11, :cond_17

    .line 1765
    iget-object v11, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v11, v2}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v11

    move/from16 v26, v13

    add-int/lit8 v13, v4, 0x1

    .line 1766
    invoke-static {v6, v8, v13, v5, v9}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1768
    iget-object v5, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5, v11}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    goto :goto_12

    :cond_17
    move/from16 v26, v13

    .line 1770
    :goto_12
    invoke-virtual {v2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    move/from16 v13, v26

    move/from16 v5, v27

    move-object/from16 v11, v28

    goto :goto_10

    :cond_18
    move/from16 v27, v5

    move-object/from16 v28, v11

    if-eqz v7, :cond_1c

    add-int v16, v16, v1

    .line 1775
    aget-object v4, v0, v16

    .line 1776
    instance-of v0, v4, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_19

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v1

    move-object v1, v8

    move-object/from16 v7, v24

    move-object/from16 v9, v19

    move/from16 v11, v18

    move-object/from16 v14, v23

    const/16 v17, 0x5

    move/from16 v16, v13

    move/from16 v13, v27

    .line 1777
    invoke-direct/range {v0 .. v5}, Lgnu/expr/Compilation;->varArgsToArray(Lgnu/expr/LambdaExp;ILgnu/bytecode/Variable;Lgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    goto :goto_13

    :cond_19
    move v2, v1

    move/from16 v16, v13

    move/from16 v11, v18

    move-object/from16 v9, v19

    move-object/from16 v14, v23

    move-object/from16 v7, v24

    move/from16 v13, v27

    const/16 v17, 0x5

    .line 1778
    invoke-virtual {v4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gnu.lists.LList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x2

    .line 1781
    invoke-virtual {v15, v0}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v15, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1782
    invoke-virtual {v15, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1783
    sget-object v1, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    invoke-virtual {v15, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_13

    :cond_1a
    const/4 v0, 0x2

    .line 1785
    sget-object v1, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    if-ne v4, v1, :cond_1b

    .line 1786
    invoke-virtual {v15, v0}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v15, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_13

    .line 1788
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported #!rest type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    move/from16 v16, v13

    move/from16 v11, v18

    move-object/from16 v9, v19

    move-object/from16 v14, v23

    move-object/from16 v7, v24

    move/from16 v13, v27

    const/16 v17, 0x5

    .line 1790
    :goto_13
    invoke-virtual {v15, v7}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    const/4 v0, -0x1

    :goto_14
    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_1d

    .line 1792
    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_14

    .line 1793
    :cond_1d
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1e

    .line 1794
    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1796
    :cond_1e
    iget-object v0, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, v9}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1797
    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    move-object v2, v14

    move-object v0, v15

    move/from16 v1, v20

    move-object/from16 v3, v21

    move-object/from16 v15, v22

    :goto_15
    add-int/lit8 v4, v11, 0x1

    move-object/from16 v7, p1

    move v5, v13

    move/from16 v9, v25

    move-object/from16 v11, v28

    const/4 v14, 0x2

    goto/16 :goto_3

    :cond_1f
    move v13, v5

    move/from16 v25, v9

    move-object/from16 v28, v11

    const/16 v17, 0x5

    if-eqz v1, :cond_23

    .line 1801
    invoke-virtual {v2, v0}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1802
    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_20

    .line 1804
    sget-object v1, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    const-string v3, "applyError"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 1806
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_18

    :cond_20
    const/4 v1, 0x4

    const/4 v5, 0x0

    if-le v13, v1, :cond_21

    const/4 v1, 0x2

    goto :goto_16

    :cond_21
    add-int/lit8 v1, v13, 0x1

    :goto_16
    const/4 v7, 0x1

    add-int/2addr v1, v7

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v1, :cond_22

    .line 1813
    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v8

    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 1814
    :cond_22
    sget-object v1, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v3, v15}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 1816
    :goto_18
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1817
    invoke-virtual {v2, v0}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    goto :goto_19

    :cond_23
    const/4 v4, 0x2

    const/4 v5, 0x0

    :goto_19
    add-int/lit8 v1, v13, 0x1

    move-object/from16 v7, p1

    move v5, v1

    move/from16 v9, v25

    move-object/from16 v11, v28

    const/4 v14, 0x2

    goto/16 :goto_2

    .line 1820
    :cond_24
    iput-object v12, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1821
    iput-object v10, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    return-void
.end method

.method generateBytecode()V
    .locals 16

    move-object/from16 v1, p0

    .line 2018
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 2019
    sget-boolean v2, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    if-eqz v2, :cond_0

    .line 2021
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v2

    .line 2022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Compiling final "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {v0, v2}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    const/16 v3, 0x5d

    .line 2025
    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->println(C)V

    .line 2026
    invoke-virtual {v2}, Lgnu/mapping/OutPort;->flush()V

    .line 2029
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 2030
    iget-object v3, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v3, v2}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 2031
    iget-object v2, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    iput-object v2, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 2034
    :cond_1
    new-instance v3, Lgnu/bytecode/ClassType;

    const-string v5, "frame"

    invoke-virtual {v1, v5}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    .line 2035
    invoke-virtual {v3, v2}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 2036
    iget-object v2, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 2037
    iget-object v2, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2, v4}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    .line 2040
    :goto_0
    iget-object v2, v0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    iput-object v2, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 2042
    iget-object v2, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 2043
    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 2045
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->isHandlingTailCalls()Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    new-array v3, v6, [Lgnu/bytecode/Type;

    .line 2049
    sget-object v7, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v7, v3, v5

    goto :goto_3

    .line 2051
    :cond_2
    iget v3, v0, Lgnu/expr/ModuleExp;->min_args:I

    iget v7, v0, Lgnu/expr/ModuleExp;->max_args:I

    if-ne v3, v7, :cond_5

    iget v3, v0, Lgnu/expr/ModuleExp;->min_args:I

    const/4 v7, 0x4

    if-le v3, v7, :cond_3

    goto :goto_2

    .line 2059
    :cond_3
    iget v3, v0, Lgnu/expr/ModuleExp;->min_args:I

    .line 2060
    new-array v7, v3, [Lgnu/bytecode/Type;

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    .line 2062
    sget-object v8, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v8, v7, v3

    goto :goto_1

    :cond_4
    move-object v3, v7

    goto :goto_3

    :cond_5
    :goto_2
    new-array v3, v6, [Lgnu/bytecode/Type;

    .line 2055
    new-instance v7, Lgnu/bytecode/ArrayType;

    sget-object v8, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-direct {v7, v8}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    aput-object v7, v3, v5

    .line 2066
    :goto_3
    iget-object v7, v0, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 2067
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v8

    .line 2070
    iget-object v9, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    sget-object v10, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v11, 0x11

    const-string v12, "run"

    invoke-virtual {v9, v12, v3, v10, v11}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    .line 2072
    iput-object v3, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2077
    invoke-virtual {v3}, Lgnu/bytecode/Method;->initCode()V

    .line 2078
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    .line 2081
    iget-object v9, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v9}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v4

    goto :goto_4

    :cond_6
    iget-object v9, v0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v9}, Lgnu/expr/ModuleExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v9

    :goto_4
    iput-object v9, v1, Lgnu/expr/Compilation;->thisDecl:Lgnu/bytecode/Variable;

    .line 2082
    iget-object v9, v0, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    iput-object v9, v0, Lgnu/expr/ModuleExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 2083
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v4

    goto :goto_5

    :cond_7
    iget-object v9, v0, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    :goto_5
    iput-object v9, v0, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 2084
    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 2086
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->isHandlingTailCalls()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2088
    :cond_8
    new-instance v9, Lgnu/bytecode/Variable;

    sget-object v10, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v11, "$ctx"

    invoke-direct {v9, v11, v10}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v9, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2089
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v9

    iget-object v10, v1, Lgnu/expr/Compilation;->thisDecl:Lgnu/bytecode/Variable;

    iget-object v11, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v9, v10, v11}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 2090
    iget-object v9, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v9, v6}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 2093
    :cond_9
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->getLineNumber()I

    move-result v9

    if-lez v9, :cond_a

    .line 2095
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v9}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 2097
    :cond_a
    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 2098
    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 2099
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2101
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 2102
    sget-object v9, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    invoke-virtual {v3, v9}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 2103
    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v9

    iput-object v9, v1, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    .line 2104
    invoke-virtual {v9, v5, v3}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 2107
    :cond_b
    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->compileBody(Lgnu/expr/Compilation;)V

    .line 2108
    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 2114
    iget-object v3, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    iget-object v9, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne v3, v9, :cond_10

    .line 2116
    iget-object v3, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2117
    iget-object v9, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2118
    iput-object v4, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2120
    invoke-direct/range {p0 .. p0}, Lgnu/expr/Compilation;->startClassInit()Lgnu/bytecode/Method;

    move-result-object v11

    .line 2121
    iput-object v11, v1, Lgnu/expr/Compilation;->clinitMethod:Lgnu/bytecode/Method;

    .line 2122
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v13

    .line 2124
    new-instance v14, Lgnu/bytecode/Label;

    invoke-direct {v14, v13}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2125
    new-instance v15, Lgnu/bytecode/Label;

    invoke-direct {v15, v13}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2126
    invoke-virtual {v13, v15, v14}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    if-eqz v8, :cond_c

    .line 2130
    invoke-virtual {v1, v0}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/expr/LambdaExp;)V

    .line 2132
    iget-object v10, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v13, v10}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 2133
    iget-object v10, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v13, v10}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 2134
    iget-object v10, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v10, v10, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    invoke-virtual {v13, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 2135
    iget-object v10, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    const/16 v6, 0x19

    const-string v5, "$instance"

    invoke-virtual {v10, v5, v10, v6}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v5

    iput-object v5, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    .line 2138
    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 2141
    :cond_c
    :goto_6
    iget-object v5, v1, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    if-eqz v5, :cond_d

    .line 2143
    iput-object v4, v1, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    .line 2144
    invoke-direct {v1, v5}, Lgnu/expr/Compilation;->dumpInitializers(Lgnu/expr/Initializer;)V

    goto :goto_6

    .line 2147
    :cond_d
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->staticInitRun()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2149
    iget-object v4, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v13, v4}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2150
    sget-object v4, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const/4 v5, 0x0

    invoke-virtual {v4, v12, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v13, v4}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 2152
    :cond_e
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2154
    iget-object v4, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v5, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eq v4, v5, :cond_f

    if-nez v8, :cond_f

    iget-boolean v4, v1, Lgnu/expr/Compilation;->generateMain:Z

    if-nez v4, :cond_f

    iget-boolean v4, v1, Lgnu/expr/Compilation;->immediate:Z

    if-nez v4, :cond_f

    .line 2158
    iget-object v4, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    sget-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/4 v8, 0x1

    invoke-virtual {v4, v12, v8, v5, v6}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    iput-object v4, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2160
    invoke-virtual {v4}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    .line 2161
    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v5

    .line 2162
    sget-object v6, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v6}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v6

    .line 2163
    sget-object v8, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v8}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v8

    .line 2165
    sget-object v10, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v4, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2166
    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2167
    sget-object v10, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v12, "consumer"

    invoke-virtual {v10, v12}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v10

    .line 2169
    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2170
    invoke-virtual {v4, v10}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 2171
    invoke-virtual {v4, v6}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2173
    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    const-string v12, "gnu.lists.VoidConsumer"

    .line 2174
    invoke-static {v12}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v12

    const-string v13, "instance"

    invoke-virtual {v12, v13}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v12

    invoke-virtual {v4, v12}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2176
    invoke-virtual {v4, v10}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 2178
    sget-object v10, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v10}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 2180
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 2181
    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2182
    invoke-virtual {v4, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2184
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 2185
    invoke-virtual {v4, v8}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2187
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 2188
    invoke-virtual {v4, v8}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 2189
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2190
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 2192
    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2193
    invoke-virtual {v4, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2194
    invoke-virtual {v4, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2195
    sget-object v5, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string v6, "runCleanup"

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2197
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2200
    :cond_f
    iput-object v3, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2201
    iput-object v9, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v4, v14

    goto :goto_7

    :cond_10
    move-object v11, v4

    move-object v15, v11

    .line 2204
    :goto_7
    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 2206
    iput-object v2, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 2208
    iput-object v7, v0, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 2209
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2211
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2212
    iget-object v2, v1, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    invoke-virtual {v2, v0}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    :cond_11
    const/16 v2, 0x65

    if-nez v4, :cond_12

    .line 2215
    iget-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_15

    .line 2217
    :cond_12
    iput-object v11, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2218
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    .line 2220
    new-instance v5, Lgnu/bytecode/Label;

    invoke-direct {v5, v3}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2221
    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 2223
    iget-object v0, v1, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_13

    .line 2225
    sget-object v0, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v3, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2226
    iget-object v0, v1, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    invoke-virtual {v3, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2231
    :cond_13
    :try_start_0
    iget-boolean v0, v1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v0, :cond_14

    .line 2233
    invoke-static/range {p0 .. p0}, Lgnu/expr/Compilation;->registerForImmediateLiterals(Lgnu/expr/Compilation;)I

    move-result v0

    invoke-virtual {v3, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    const-string v0, "gnu.expr.Compilation"

    .line 2234
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v4, "setupLiterals"

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_8

    .line 2238
    :cond_14
    iget-object v0, v1, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v0}, Lgnu/expr/LitTable;->emit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 2242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Literals: Internal error:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 2244
    :goto_8
    invoke-virtual {v3, v5, v15}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 2247
    :cond_15
    iget-boolean v0, v1, Lgnu/expr/Compilation;->generateMain:Z

    if-eqz v0, :cond_18

    iget-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    iget-object v3, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne v0, v3, :cond_18

    const/4 v3, 0x1

    new-array v0, v3, [Lgnu/bytecode/Type;

    .line 2249
    new-instance v3, Lgnu/bytecode/ArrayType;

    sget-object v4, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    invoke-direct {v3, v4}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 2250
    iget-object v3, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const/16 v4, 0x9

    sget-object v5, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v6, "main"

    invoke-virtual {v3, v6, v4, v0, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2253
    invoke-virtual {v0}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2255
    sget-object v3, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    if-eqz v3, :cond_16

    .line 2257
    sget-object v3, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    const-string v3, "kawa.Shell"

    .line 2258
    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "setDefaultFormat"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_9

    :cond_16
    const/4 v5, 0x1

    :goto_9
    const/4 v3, 0x0

    .line 2261
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    const-string v3, "gnu.expr.ApplicationMainSupport"

    .line 2262
    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "processArgs"

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2264
    iget-object v3, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    if-eqz v3, :cond_17

    .line 2265
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_a

    .line 2268
    :cond_17
    iget-object v3, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 2269
    iget-object v3, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 2270
    iget-object v3, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    iget-object v3, v3, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 2272
    :goto_a
    sget-object v3, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string v4, "runAsMain"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2273
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2277
    :cond_18
    iget-object v0, v1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2281
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v3

    .line 2282
    iget-object v0, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    .line 2283
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-gez v6, :cond_19

    const-string v0, ""

    goto :goto_d

    :cond_19
    const/4 v7, 0x0

    .line 2290
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2293
    :try_start_1
    invoke-virtual {v3, v8}, Lgnu/expr/ModuleManager;->loadPackageInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    :goto_b
    const/4 v2, 0x1

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v7, v0

    .line 2301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error loading map for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_b

    :goto_c
    add-int/2addr v6, v2

    const/4 v2, 0x0

    .line 2303
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2305
    :goto_d
    new-instance v2, Lgnu/bytecode/ClassType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "$ModulesMap$"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    const-string v4, "gnu.expr.ModuleSet"

    .line 2306
    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    .line 2307
    invoke-virtual {v2, v4}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 2308
    invoke-direct {v1, v2}, Lgnu/expr/Compilation;->registerClass(Lgnu/bytecode/ClassType;)V

    .line 2310
    sget-object v6, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v8, "<init>"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v6

    iput-object v6, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2312
    sget-object v6, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v8, v9, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    .line 2315
    iget-object v6, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v6}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 2316
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 2317
    invoke-virtual {v6, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 2318
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    const-string v4, "gnu.expr.ModuleManager"

    .line 2320
    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    new-array v6, v9, [Lgnu/bytecode/Type;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 2322
    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v8, "register"

    invoke-virtual {v2, v8, v6, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    iput-object v2, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2324
    invoke-virtual {v2}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    const/4 v6, 0x3

    .line 2325
    invoke-virtual {v4, v8, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    .line 2327
    iget v6, v3, Lgnu/expr/ModuleManager;->numModules:I

    :goto_e
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_1e

    .line 2329
    iget-object v7, v3, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    aget-object v7, v7, v6

    .line 2330
    invoke-virtual {v7}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1d

    .line 2331
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1a

    goto/16 :goto_10

    .line 2334
    :cond_1a
    iget-object v9, v7, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    .line 2335
    invoke-virtual {v7}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    .line 2336
    invoke-virtual {v2, v11}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v12

    invoke-virtual {v2, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2337
    invoke-virtual {v1, v8}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2338
    invoke-static {v9}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/text/Path;->isAbsolute()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 2344
    :try_start_2
    sget-char v8, Ljava/io/File;->separatorChar:C

    .line 2345
    invoke-virtual {v3}, Lgnu/expr/ModuleManager;->getCompilationDirectory()Ljava/lang/String;

    move-result-object v12

    .line 2346
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2347
    invoke-static {v12}, Lgnu/text/Path;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2348
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1b

    add-int/lit8 v13, v13, -0x1

    .line 2349
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v8, :cond_1b

    .line 2350
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2351
    :cond_1b
    invoke-virtual {v7}, Lgnu/expr/ModuleInfo;->getSourceAbsPathname()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v12}, Lgnu/text/Path;->relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_f

    :catchall_2
    move-exception v0

    .line 2356
    new-instance v2, Lgnu/mapping/WrappedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception while fixing up \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2360
    :cond_1c
    :goto_f
    invoke-virtual {v1, v9}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2361
    invoke-virtual {v1, v10}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2362
    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_e

    :cond_1d
    :goto_10
    const/4 v11, 0x1

    goto/16 :goto_e

    .line 2364
    :cond_1e
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    :cond_1f
    return-void
.end method

.method public generateClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 959
    invoke-static {p1, v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 960
    iget-object v0, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 962
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 964
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 968
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 969
    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V
    .locals 8

    .line 1175
    iget-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1176
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    const/4 v2, 0x0

    .line 1177
    iput-object v2, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1178
    iget-object v3, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1179
    iput-object p1, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1180
    invoke-static {p1, p2}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v4

    .line 1181
    iput-object v4, p1, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    .line 1182
    iput-object v4, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1183
    invoke-virtual {v4}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    .line 1185
    instance-of v5, p2, Lgnu/expr/ClassExp;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    iget-object v7, p2, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v7, :cond_0

    .line 1187
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1188
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v7

    invoke-virtual {v7, v6}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1189
    iget-object v7, p2, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1191
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object p1

    .line 1192
    invoke-static {p1, p0, p2}, Lgnu/expr/ClassExp;->invokeDefaultSuperConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;)V

    .line 1194
    iget-object p1, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    iget-object v7, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne p1, v7, :cond_1

    iget-object p1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1199
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    const-string p1, "gnu.expr.ModuleInfo"

    .line 1200
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    const-string v7, "register"

    invoke-virtual {p1, v7, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {v4, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    :cond_1
    if-eqz p2, :cond_3

    .line 1204
    iget-object p1, p2, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    if-eqz p1, :cond_3

    .line 1208
    iget-object p1, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1209
    new-instance v6, Lgnu/expr/LambdaExp;

    invoke-direct {v6}, Lgnu/expr/LambdaExp;-><init>()V

    iput-object v6, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    const/4 v7, 0x0

    .line 1210
    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v7

    iput-object v7, v6, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1211
    iget-object v6, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    iput-object p1, v6, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 1213
    :goto_0
    iget-object v6, p2, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    if-eqz v6, :cond_2

    .line 1215
    iput-object v2, p2, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    .line 1216
    invoke-direct {p0, v6}, Lgnu/expr/Compilation;->dumpInitializers(Lgnu/expr/Initializer;)V

    goto :goto_0

    .line 1218
    :cond_2
    iput-object p1, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    :cond_3
    if-eqz v5, :cond_4

    .line 1223
    check-cast p2, Lgnu/expr/ClassExp;

    .line 1224
    invoke-virtual {p2, p0}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object p1

    new-instance p2, Ljava/util/Vector;

    const/16 v2, 0xa

    invoke-direct {p2, v2}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    .line 1227
    :cond_4
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1228
    iput-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1229
    iput-object v3, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1230
    iput-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    return-void
.end method

.method public final generateConstructor(Lgnu/expr/LambdaExp;)V
    .locals 1

    .line 1170
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    return-void
.end method

.method public generateMatchMethods(Lgnu/expr/LambdaExp;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1294
    iget-object v2, v1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    return-void

    .line 1298
    :cond_1
    iget-object v4, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1299
    iget-object v5, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1300
    sget-object v6, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 1301
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v7

    iput-object v7, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1302
    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v7

    sget-object v8, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1303
    iget-object v7, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iput-object v7, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x5

    if-gt v8, v10, :cond_19

    move v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_15

    .line 1313
    iget-object v7, v1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v7, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/LambdaExp;

    .line 1316
    iget-object v3, v7, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 1317
    array-length v3, v3

    .line 1318
    iget v10, v7, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v10, :cond_4

    iget v10, v7, Lgnu/expr/LambdaExp;->max_args:I

    iget v1, v7, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v1, v3

    if-lt v10, v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x1

    :goto_4
    const/4 v10, 0x5

    if-ge v8, v10, :cond_5

    .line 1323
    iget v10, v7, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v10, v8, v10

    if-ltz v10, :cond_6

    if-ge v10, v3, :cond_6

    add-int/lit8 v3, v3, -0x1

    if-ne v10, v3, :cond_8

    if-eqz v1, :cond_8

    goto :goto_5

    .line 1332
    :cond_5
    iget v10, v7, Lgnu/expr/LambdaExp;->min_args:I

    const/16 v16, 0x5

    rsub-int/lit8 v10, v10, 0x5

    if-lez v10, :cond_7

    if-gt v3, v10, :cond_7

    if-nez v1, :cond_7

    :cond_6
    :goto_5
    move-object/from16 v1, p1

    :goto_6
    const/4 v10, 0x5

    goto :goto_2

    :cond_7
    add-int/lit8 v10, v3, -0x1

    :cond_8
    const/4 v1, 0x3

    if-nez v12, :cond_b

    const/4 v3, 0x5

    if-ge v8, v3, :cond_a

    .line 1342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "match"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v9, v8, 0x2

    .line 1343
    new-array v9, v9, [Lgnu/bytecode/Type;

    move v12, v8

    :goto_7
    if-ltz v12, :cond_9

    add-int/lit8 v13, v12, 0x1

    .line 1345
    sget-object v14, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v14, v9, v13

    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v12, v8, 0x1

    .line 1346
    sget-object v13, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v13, v9, v12

    move-object v14, v3

    move-object v15, v9

    const/4 v3, 0x0

    const/4 v12, 0x1

    goto :goto_8

    :cond_a
    new-array v3, v1, [Lgnu/bytecode/Type;

    .line 1352
    sget-object v9, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    const/4 v12, 0x1

    aput-object v9, v3, v12

    .line 1353
    sget-object v9, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const/4 v13, 0x2

    aput-object v9, v3, v13

    const-string v9, "matchN"

    move-object v15, v3

    move-object v14, v9

    const/4 v3, 0x0

    .line 1355
    :goto_8
    aput-object v6, v15, v3

    .line 1356
    iget-object v3, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    sget-object v9, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v3, v14, v15, v9, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    iput-object v3, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1358
    invoke-virtual {v3}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    .line 1360
    invoke-virtual {v3, v12}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v9

    invoke-virtual {v3, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    const-string v9, "selector"

    .line 1361
    invoke-virtual {v6, v9}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v9

    invoke-virtual {v3, v9}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1362
    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v13

    move-object v9, v3

    const/4 v12, 0x1

    .line 1367
    :cond_b
    invoke-virtual {v7, v0}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v3

    invoke-virtual {v13, v3, v9}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 1369
    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v3

    if-lez v3, :cond_c

    .line 1371
    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1, v3}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    :cond_c
    const/4 v1, 0x5

    if-ne v8, v1, :cond_d

    const/4 v3, 0x3

    goto :goto_9

    :cond_d
    add-int/lit8 v3, v8, 0x2

    .line 1373
    :goto_9
    invoke-virtual {v9, v3}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v3

    if-ge v8, v1, :cond_12

    .line 1377
    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v16

    const/4 v1, 0x1

    :goto_a
    if-gt v1, v8, :cond_11

    .line 1380
    invoke-virtual {v9, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    move/from16 v17, v2

    add-int/lit8 v2, v1, 0x1

    move-object/from16 v18, v6

    .line 1381
    invoke-virtual {v9, v2}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v6

    invoke-virtual {v9, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1382
    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    move/from16 v19, v2

    .line 1383
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq v6, v2, :cond_f

    .line 1385
    instance-of v2, v6, Lgnu/expr/TypeValue;

    const/high16 v20, -0xc0000

    if-eqz v2, :cond_e

    .line 1387
    new-instance v2, Lgnu/bytecode/Label;

    invoke-direct {v2, v9}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move/from16 v21, v11

    .line 1388
    new-instance v11, Lgnu/bytecode/Label;

    invoke-direct {v11, v9}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move/from16 v22, v12

    .line 1389
    new-instance v12, Lgnu/expr/ConditionalTarget;

    move-object/from16 v23, v13

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v13

    invoke-direct {v12, v2, v11, v13}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    .line 1392
    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 1393
    check-cast v6, Lgnu/expr/TypeValue;

    const/4 v13, 0x0

    invoke-interface {v6, v13, v0, v12}, Lgnu/expr/TypeValue;->emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 1395
    invoke-virtual {v11, v9}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    or-int v6, v1, v20

    .line 1396
    invoke-virtual {v9, v6}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1397
    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1398
    invoke-virtual {v2, v9}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    goto :goto_b

    :cond_e
    move/from16 v21, v11

    move/from16 v22, v12

    move-object/from16 v23, v13

    const/4 v13, 0x0

    .line 1400
    instance-of v2, v6, Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_10

    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq v6, v2, :cond_10

    sget-object v2, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-eq v6, v2, :cond_10

    .line 1404
    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 1405
    invoke-virtual {v6, v9}, Lgnu/bytecode/Type;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 1406
    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->emitIfIntEqZero()V

    or-int v2, v1, v20

    .line 1407
    invoke-virtual {v9, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1408
    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1409
    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_b

    :cond_f
    move/from16 v21, v11

    move/from16 v22, v12

    move-object/from16 v23, v13

    const/4 v13, 0x0

    .line 1412
    :cond_10
    :goto_b
    sget-object v2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "value"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {v9, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1413
    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v16

    move/from16 v2, v17

    move-object/from16 v6, v18

    move/from16 v1, v19

    move/from16 v11, v21

    move/from16 v12, v22

    move-object/from16 v13, v23

    goto/16 :goto_a

    :cond_11
    move/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v21, v11

    move/from16 v22, v12

    move-object/from16 v23, v13

    const/4 v13, 0x0

    const/4 v1, 0x2

    goto :goto_c

    :cond_12
    move/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v21, v11

    move/from16 v22, v12

    move-object/from16 v23, v13

    const/4 v13, 0x0

    .line 1419
    invoke-virtual {v9, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    const/4 v1, 0x2

    .line 1420
    invoke-virtual {v9, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v2

    invoke-virtual {v9, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1421
    sget-object v2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v6, "values"

    invoke-virtual {v2, v6}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v2

    invoke-virtual {v9, v2}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1423
    :goto_c
    invoke-virtual {v9, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1424
    sget v2, Lgnu/expr/Compilation;->defaultCallConvention:I

    if-ge v2, v1, :cond_13

    const/4 v2, 0x1

    .line 1425
    invoke-virtual {v9, v2}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v2

    invoke-virtual {v9, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_d

    :cond_13
    const/4 v2, 0x0

    .line 1427
    invoke-virtual {v9, v2}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v6

    invoke-virtual {v9, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1428
    :goto_d
    sget-object v2, Lgnu/expr/Compilation;->procCallContextField:Lgnu/bytecode/Field;

    invoke-virtual {v9, v2}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1429
    invoke-virtual {v9, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1430
    sget v2, Lgnu/expr/Compilation;->defaultCallConvention:I

    if-lt v2, v1, :cond_14

    .line 1431
    invoke-virtual {v7, v0}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v9, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_e

    .line 1433
    :cond_14
    invoke-virtual {v9, v8}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1434
    :goto_e
    sget-object v1, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    invoke-virtual {v9, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    const/4 v3, 0x0

    .line 1435
    invoke-virtual {v9, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1436
    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object/from16 v6, v18

    move/from16 v11, v21

    move/from16 v12, v22

    move-object/from16 v13, v23

    goto/16 :goto_6

    :cond_15
    move/from16 v17, v2

    move-object/from16 v18, v6

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v12, :cond_18

    .line 1440
    invoke-virtual {v13, v9}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    const/4 v6, 0x4

    if-le v8, v6, :cond_16

    const/4 v1, 0x1

    const/4 v7, 0x2

    goto :goto_f

    :cond_16
    add-int/lit8 v7, v8, 0x1

    const/4 v1, 0x1

    :goto_f
    add-int/2addr v7, v1

    const/4 v1, 0x0

    :goto_10
    if-gt v1, v7, :cond_17

    .line 1444
    invoke-virtual {v9, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v6

    invoke-virtual {v9, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1445
    :cond_17
    sget-object v1, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    array-length v6, v15

    invoke-virtual {v1, v14, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 1447
    invoke-virtual {v9, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 1448
    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1449
    invoke-virtual {v13, v9}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    :cond_18
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object/from16 v6, v18

    goto/16 :goto_1

    .line 1452
    :cond_19
    iput-object v4, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1453
    iput-object v5, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public generatingApplet()Z
    .locals 1

    .line 407
    iget v0, p0, Lgnu/expr/Compilation;->langOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public generatingServlet()Z
    .locals 1

    .line 413
    iget v0, p0, Lgnu/expr/Compilation;->langOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getBooleanOption(Ljava/lang/String;)Z
    .locals 1

    .line 157
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v0, p1}, Lgnu/text/Options;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final getBooleanOption(Ljava/lang/String;Z)Z
    .locals 1

    .line 151
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v0, p1, p2}, Lgnu/text/Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final getCode()Lgnu/bytecode/CodeAttr;
    .locals 1

    .line 221
    iget-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .line 2632
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public final getConstructor(Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;
    .locals 1

    .line 1149
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object p1

    return-object p1
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 2633
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForNameHelper()Lgnu/bytecode/Method;
    .locals 6

    .line 2845
    iget-object v0, p0, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    if-nez v0, :cond_0

    .line 2848
    iget-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2849
    iget-object v1, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const/16 v2, 0x9

    sget-object v3, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string v5, "class$"

    invoke-virtual {v1, v5, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2851
    iput-object v1, p0, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    .line 2852
    invoke-virtual {v1}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    const/4 v2, 0x0

    .line 2853
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2854
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2855
    iget-object v3, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2856
    sget-object v3, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const/4 v4, 0x1

    const-string v5, "forName"

    invoke-virtual {v3, v5, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2857
    sget-object v3, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string v4, "getClassLoader"

    invoke-virtual {v3, v4, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2858
    sget-object v2, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const/4 v3, 0x3

    invoke-virtual {v2, v5, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2859
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2860
    iput-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2865
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    return-object v0
.end method

.method public getLanguage()Lgnu/expr/Language;
    .locals 1

    .line 2426
    iget-object v0, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public final getLineNumber()I
    .locals 1

    .line 2631
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 1

    .line 2567
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    return-object v0
.end method

.method public final getModule()Lgnu/expr/ModuleExp;
    .locals 1

    .line 2430
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    return-object v0
.end method

.method public final getModuleType()Lgnu/bytecode/ClassType;
    .locals 2

    .line 431
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget-object v0, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_0
    sget-object v0, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    :goto_0
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 2634
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 50
    iget v0, p0, Lgnu/expr/Compilation;->state:I

    return v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 2635
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inlineOk(Lgnu/expr/Expression;)Z
    .locals 2

    .line 463
    instance-of v0, p1, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_3

    .line 465
    check-cast p1, Lgnu/expr/LambdaExp;

    .line 466
    iget-object v0, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v0, :cond_2

    .line 469
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v1, v1, Lgnu/expr/ModuleExp;

    if-nez v1, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    iget-boolean v1, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->topLevel()Lgnu/expr/ScopeExp;

    move-result-object p1

    iget-object v0, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->topLevel()Lgnu/expr/ScopeExp;

    move-result-object v0

    if-eq p1, v0, :cond_3

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 478
    :cond_3
    sget-boolean p1, Lgnu/expr/Compilation;->inlineOk:Z

    return p1
.end method

.method public inlineOk(Lgnu/mapping/Procedure;)Z
    .locals 1

    .line 483
    iget-boolean v0, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lgnu/expr/ModuleMethod;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/expr/ModuleMethod;

    iget-object p1, p1, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    instance-of p1, p1, Lgnu/bytecode/ArrayClassLoader;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 486
    :cond_0
    sget-boolean p1, Lgnu/expr/Compilation;->inlineOk:Z

    return p1
.end method

.method public isPedantic()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lgnu/expr/Compilation;->pedantic:Z

    return v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 2433
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v0

    return v0
.end method

.method public letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;
    .locals 1

    .line 2688
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LetExp;

    .line 2689
    iput-object p1, v0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 2690
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    return-object v0
.end method

.method public letEnter()V
    .locals 6

    .line 2674
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LetExp;

    .line 2675
    invoke-virtual {v0}, Lgnu/expr/LetExp;->countDecls()I

    move-result v1

    .line 2676
    new-array v1, v1, [Lgnu/expr/Expression;

    .line 2678
    invoke-virtual {v0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 2681
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v5

    aput-object v5, v1, v3

    .line 2680
    invoke-virtual {v2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    move v3, v4

    goto :goto_0

    .line 2682
    :cond_0
    iput-object v1, v0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 2683
    iget-object v1, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v1, v0}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    return-void
.end method

.method public letStart()V
    .locals 2

    .line 2661
    new-instance v0, Lgnu/expr/LetExp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    return-void
.end method

.method public letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;
    .locals 1

    .line 2666
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LetExp;

    .line 2667
    invoke-virtual {v0, p1, p2}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object p1

    .line 2668
    invoke-virtual {p1, p3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    return-object p1
.end method

.method public final loadCallContext()V
    .locals 4

    .line 2384
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2385
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgnu/bytecode/Variable;->dead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2386
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_0

    .line 2393
    :cond_0
    iget-object v1, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    iget-object v2, p0, Lgnu/expr/Compilation;->clinitMethod:Lgnu/bytecode/Method;

    const-string v3, "$ctx"

    if-ne v1, v2, :cond_1

    .line 2396
    new-instance v1, Lgnu/bytecode/Variable;

    sget-object v2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct {v1, v3, v2}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2399
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lgnu/bytecode/Variable;->reserveLocal(ILgnu/bytecode/CodeAttr;)Z

    .line 2400
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2401
    iget-object v0, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    iput-object v0, p0, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 2405
    :cond_1
    sget-object v1, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2406
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 2407
    new-instance v1, Lgnu/bytecode/Variable;

    sget-object v2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct {v1, v3, v2}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2408
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v0, v2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Variable;)V

    .line 2409
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    :goto_0
    return-void
.end method

.method public loadClassRef(Lgnu/bytecode/ObjectType;)V
    .locals 3

    .line 2813
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2815
    iget-object v1, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getClassfileVersion()I

    move-result v1

    const/high16 v2, 0x310000    # 4.49994E-39f

    if-lt v1, v2, :cond_0

    .line 2816
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushClass(Lgnu/bytecode/ObjectType;)V

    goto :goto_1

    .line 2817
    :cond_0
    iget-object v1, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v1}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    if-eqz v1, :cond_1

    .line 2821
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2822
    sget-object p1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/4 v1, 0x0

    const-string v2, "getClass"

    invoke-virtual {p1, v2, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 2826
    :cond_1
    instance-of v1, p1, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getInternalName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2828
    :goto_0
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getForNameHelper()Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    :goto_1
    return-void
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 1

    .line 2550
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1, p2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object p1

    return-object p1
.end method

.method public loopBody(Lgnu/expr/Expression;)V
    .locals 1

    .line 2751
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 2752
    iput-object p1, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    return-void
.end method

.method public loopCond(Lgnu/expr/Expression;)V
    .locals 1

    .line 2746
    invoke-direct {p0}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2747
    iget-object v0, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public loopEnter()V
    .locals 6

    .line 2732
    invoke-direct {p0}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2733
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 2734
    iget v1, v0, Lgnu/expr/LambdaExp;->min_args:I

    .line 2735
    iput v1, v0, Lgnu/expr/LambdaExp;->max_args:I

    .line 2736
    new-array v2, v1, [Lgnu/expr/Expression;

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 2738
    iget-object v3, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    aput-object v3, v2, v1

    goto :goto_0

    .line 2739
    :cond_0
    iget-object v1, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    check-cast v1, Lgnu/expr/LetExp;

    .line 2740
    invoke-virtual {v1}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    .line 2741
    new-instance v4, Lgnu/expr/ApplyExp;

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v4, v5, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v1, v4}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 2742
    iget-object v1, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v1, v0}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    return-void
.end method

.method public loopRepeat()Lgnu/expr/Expression;
    .locals 1

    .line 2771
    sget-object v0, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public loopRepeat(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2777
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 6

    .line 2756
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 2757
    iget-object v1, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 2758
    invoke-virtual {v1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    .line 2759
    iget-object v3, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    .line 2760
    new-instance v4, Lgnu/expr/ApplyExp;

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v4, v5, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2761
    new-instance p1, Lgnu/expr/IfExp;

    new-instance v2, Lgnu/expr/BeginExp;

    iget-object v5, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-direct {v2, v5, v4}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    sget-object v4, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {p1, v3, v2, v4}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    iput-object p1, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2764
    iget-object p1, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {p1, v0}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 2765
    iget-object p1, v1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    iput-object p1, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    return-object v1
.end method

.method public loopStart()V
    .locals 4

    .line 2704
    new-instance v0, Lgnu/expr/LambdaExp;

    invoke-direct {v0}, Lgnu/expr/LambdaExp;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2706
    new-instance v2, Lgnu/expr/LetExp;

    invoke-direct {v2, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    const-string v1, "%do%loop"

    .line 2708
    invoke-virtual {v2, v1}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 2709
    invoke-virtual {v3, v0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 2710
    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 2711
    iget-object v1, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v1, v2, Lgnu/expr/LetExp;->outer:Lgnu/expr/ScopeExp;

    .line 2712
    iput-object v2, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 2713
    iput-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    return-void
.end method

.method public loopVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;
    .locals 1

    .line 2718
    invoke-direct {p0}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2719
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 2720
    invoke-virtual {v0, p1, p2}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object p1

    .line 2721
    iget-object p2, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    if-nez p2, :cond_0

    .line 2722
    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    .line 2723
    :cond_0
    iget-object p2, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {p2, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2724
    iget p2, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lgnu/expr/LambdaExp;->min_args:I

    return-object p1
.end method

.method public makeRunnable()Z
    .locals 1

    .line 1117
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->staticInitRun()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mustCompileHere()V
    .locals 2

    .line 2444
    iget-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    if-nez v0, :cond_0

    const/16 v0, 0x77

    const-string v1, "this expression claimed that it must be compiled, but compiler is unavailable"

    .line 2445
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2447
    iput-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    :goto_0
    return-void
.end method

.method public outputClass(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1002
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/4 v1, 0x0

    .line 1003
    :goto_0
    iget v2, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v1, v2, :cond_1

    .line 1005
    iget-object v2, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v2, v2, v1

    .line 1006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1009
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1011
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1012
    :cond_0
    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->writeToFile(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1014
    :cond_1
    iget-object p1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {p1}, Lgnu/expr/ModuleInfo;->cleanupAfterCompilation()V

    return-void
.end method

.method public parse(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 1

    .line 2422
    new-instance p1, Ljava/lang/Error;

    const-string v0, "unimeplemented parse"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final pop()V
    .locals 1

    .line 2540
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    return-void
.end method

.method public pop(Lgnu/expr/ScopeExp;)V
    .locals 1

    .line 2534
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 2535
    iget-object p1, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    iput-object p1, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    return-void
.end method

.method public process(I)V
    .locals 8

    .line 1929
    invoke-static {p0}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v0

    const/16 v1, 0x64

    .line 1932
    :try_start_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    const/4 v3, 0x4

    if-lt p1, v3, :cond_1

    .line 1933
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 1935
    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 1936
    iget-object v4, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lgnu/expr/Language;->parse(Lgnu/expr/Compilation;I)Z

    .line 1937
    iget-object v4, p0, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    invoke-virtual {v4}, Lgnu/text/Lexer;->close()V

    const/4 v4, 0x0

    .line 1938
    iput-object v4, p0, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    .line 1939
    iget-object v4, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x64

    :cond_0
    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->setState(I)V

    .line 1940
    iget-object v3, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;
    :try_end_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2009
    invoke-static {v0}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return-void

    :cond_1
    const/4 v3, 0x6

    if-lt p1, v3, :cond_3

    .line 1943
    :try_start_1
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v4

    if-ge v4, v3, :cond_3

    .line 1950
    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->addMainClass(Lgnu/expr/ModuleExp;)V

    .line 1951
    iget-object v4, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    invoke-virtual {v4, p0}, Lgnu/expr/Language;->resolve(Lgnu/expr/Compilation;)V

    .line 1952
    iget-object v4, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v3, 0x64

    :cond_2
    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->setState(I)V

    .line 1956
    :cond_3
    iget-boolean v3, p0, Lgnu/expr/Compilation;->explicit:Z

    const/16 v4, 0xe

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lgnu/expr/Compilation;->immediate:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1959
    iget-object v3, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {v3}, Lgnu/expr/ModuleInfo;->cleanupAfterCompilation()V

    .line 1960
    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->setState(I)V

    :cond_4
    const/16 v3, 0x8

    if-lt p1, v3, :cond_6

    .line 1963
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v5

    if-ge v5, v3, :cond_6

    .line 1965
    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->walkModule(Lgnu/expr/ModuleExp;)V

    .line 1966
    iget-object v5, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v3, 0x64

    :cond_5
    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->setState(I)V

    :cond_6
    const/16 v3, 0xa

    if-lt p1, v3, :cond_8

    .line 1968
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v5

    if-ge v5, v3, :cond_8

    .line 1970
    new-instance v5, Lgnu/expr/LitTable;

    invoke-direct {v5, p0}, Lgnu/expr/LitTable;-><init>(Lgnu/expr/Compilation;)V

    iput-object v5, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    const/4 v5, 0x1

    .line 1971
    invoke-virtual {v2, v5}, Lgnu/expr/ModuleExp;->setCanRead(Z)V

    .line 1972
    invoke-static {v2, p0}, Lgnu/expr/FindCapturedVars;->findCapturedVars(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 1973
    invoke-virtual {v2, p0}, Lgnu/expr/ModuleExp;->allocFields(Lgnu/expr/Compilation;)V

    .line 1974
    invoke-virtual {v2, p0}, Lgnu/expr/ModuleExp;->allocChildMethods(Lgnu/expr/Compilation;)V

    .line 1975
    iget-object v2, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v2}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v3, 0x64

    :cond_7
    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->setState(I)V

    :cond_8
    const/16 v2, 0xc

    if-lt p1, v2, :cond_b

    .line 1977
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v3

    if-ge v3, v2, :cond_b

    .line 1979
    iget-boolean v3, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v3, :cond_9

    .line 1981
    invoke-static {}, Lgnu/bytecode/ObjectType;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1982
    new-instance v5, Lgnu/bytecode/ArrayClassLoader;

    invoke-direct {v5, v3}, Lgnu/bytecode/ArrayClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v5, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    .line 1984
    :cond_9
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generateBytecode()V

    .line 1985
    iget-object v3, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v3}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v2, 0x64

    :cond_a
    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->setState(I)V

    :cond_b
    if-lt p1, v4, :cond_c

    .line 1987
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result p1

    if-ge p1, v4, :cond_c

    .line 1989
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object p1

    .line 1990
    invoke-virtual {p1}, Lgnu/expr/ModuleManager;->getCompilationDirectory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->outputClass(Ljava/lang/String;)V

    .line 1991
    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->setState(I)V
    :try_end_1
    .catch Lgnu/text/SyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2003
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/16 v2, 0x66

    .line 2004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 2005
    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->setState(I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1996
    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->setState(I)V

    .line 1997
    invoke-virtual {p1}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v2, :cond_d

    .line 2009
    :cond_c
    :goto_0
    invoke-static {v0}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return-void

    .line 1998
    :cond_d
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confussing syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2009
    :goto_1
    invoke-static {v0}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    throw p1
.end method

.method public push(Lgnu/expr/Declaration;)V
    .locals 1

    .line 2545
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    return-void
.end method

.method public push(Lgnu/expr/ScopeExp;)V
    .locals 1

    .line 2514
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2515
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    return-void
.end method

.method pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V
    .locals 1

    if-eq p1, p2, :cond_0

    .line 2483
    iget-object v0, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v0, p2}, Lgnu/expr/Compilation;->pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V

    .line 2484
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2485
    iget-object p2, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {p2, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    :cond_0
    return-void
.end method

.method public pushNewModule(Lgnu/text/Lexer;)Lgnu/expr/ModuleExp;
    .locals 0

    .line 2491
    iput-object p1, p0, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    .line 2492
    invoke-virtual {p1}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;

    move-result-object p1

    return-object p1
.end method

.method public pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;
    .locals 1

    .line 2497
    new-instance v0, Lgnu/expr/ModuleExp;

    invoke-direct {v0}, Lgnu/expr/ModuleExp;-><init>()V

    if-eqz p1, :cond_0

    .line 2499
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleExp;->setFile(Ljava/lang/String;)V

    .line 2500
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/high16 p1, 0x20000

    .line 2501
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 2502
    :cond_2
    iget-boolean p1, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz p1, :cond_3

    const/high16 p1, 0x100000

    .line 2504
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 2505
    new-instance p1, Lgnu/expr/ModuleInfo;

    invoke-direct {p1}, Lgnu/expr/ModuleInfo;-><init>()V

    invoke-virtual {p1, p0}, Lgnu/expr/ModuleInfo;->setCompilation(Lgnu/expr/Compilation;)V

    .line 2507
    :cond_3
    iput-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 2508
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    return-object v0
.end method

.method public pushPendingImport(Lgnu/expr/ModuleInfo;Lgnu/expr/ScopeExp;I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    .line 98
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object p1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance p1, Lgnu/expr/ReferenceExp;

    const/4 p2, 0x0

    move-object v0, p2

    check-cast v0, Ljava/lang/Object;

    invoke-direct {p1, p2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p1, p0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 102
    iget-object p2, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object p1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final pushScope(Lgnu/expr/ScopeExp;)V
    .locals 1

    .line 2520
    iget-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->mustCompile()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_1

    .line 2527
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 2528
    :cond_1
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v0, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 2529
    iput-object p1, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    return-void
.end method

.method public resolve(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    .line 2870
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 2872
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2873
    invoke-virtual {v0}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    goto :goto_0

    .line 2875
    :cond_0
    check-cast p1, Lgnu/mapping/Symbol;

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    .line 2878
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object p2

    invoke-virtual {p2}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2879
    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2880
    :cond_2
    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setColumn(I)V
    .locals 1

    .line 2640
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setColumn(I)V

    return-void
.end method

.method public setCurrentScope(Lgnu/expr/ScopeExp;)V
    .locals 3

    .line 2458
    invoke-static {p1}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v0

    .line 2459
    iget-object v1, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-static {v1}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v1

    :goto_0
    if-le v1, v0, :cond_0

    .line 2462
    iget-object v2, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_1
    if-le v0, v1, :cond_1

    .line 2468
    iget-object v2, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2471
    :cond_1
    :goto_2
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v2, v0, :cond_2

    .line 2473
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2474
    iget-object v2, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_2

    .line 2476
    :cond_2
    invoke-virtual {p0, p1, v2}, Lgnu/expr/Compilation;->pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V

    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1

    .line 2638
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setFile(Ljava/lang/String;)V

    return-void
.end method

.method public setLine(I)V
    .locals 1

    .line 2639
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLine(I)V

    return-void
.end method

.method public final setLine(Lgnu/expr/Expression;)V
    .locals 1

    .line 2642
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    return-void
.end method

.method public setLine(Ljava/lang/Object;)V
    .locals 1

    .line 2645
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 2646
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    check-cast p1, Lgnu/text/SourceLocator;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    :cond_0
    return-void
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 1

    .line 2653
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 1

    .line 2649
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 0

    .line 2569
    iput-object p1, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public setModule(Lgnu/expr/ModuleExp;)V
    .locals 0

    .line 2431
    iput-object p1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    return-void
.end method

.method public setSharedModuleDefs(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 424
    iget p1, p0, Lgnu/expr/Compilation;->langOptions:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgnu/expr/Compilation;->langOptions:I

    goto :goto_0

    .line 426
    :cond_0
    iget p1, p0, Lgnu/expr/Compilation;->langOptions:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lgnu/expr/Compilation;->langOptions:I

    :goto_0
    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 51
    iput p1, p0, Lgnu/expr/Compilation;->state:I

    return-void
.end method

.method public sharedModuleDefs()Z
    .locals 1

    .line 418
    iget v0, p0, Lgnu/expr/Compilation;->langOptions:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1

    const/16 v0, 0x65

    .line 2627
    invoke-virtual {p0, v0, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 2628
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<compilation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usedClass(Lgnu/bytecode/Type;)V
    .locals 1

    .line 2561
    :goto_0
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_0

    .line 2562
    check-cast p1, Lgnu/bytecode/ArrayType;

    invoke-virtual {p1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p1

    goto :goto_0

    .line 2563
    :cond_0
    iget-boolean v0, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_1

    .line 2564
    iget-object v0, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    check-cast p1, Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1}, Lgnu/bytecode/ArrayClassLoader;->addClass(Lgnu/bytecode/ClassType;)V

    :cond_1
    return-void
.end method

.method public usingCPStyle()Z
    .locals 2

    .line 190
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public usingTailCalls()Z
    .locals 2

    .line 192
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public walkModule(Lgnu/expr/ModuleExp;)V
    .locals 3

    .line 985
    sget-boolean v0, Lgnu/expr/Compilation;->debugPrintExpr:Z

    if-eqz v0, :cond_0

    .line 987
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Module:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p1, v0}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    const/16 v1, 0x5d

    .line 990
    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->println(C)V

    .line 991
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->flush()V

    .line 994
    :cond_0
    invoke-static {p1, p0}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    .line 995
    invoke-static {p1}, Lgnu/expr/PushApply;->pushApply(Lgnu/expr/Expression;)V

    .line 996
    invoke-static {p1, p0}, Lgnu/expr/ChainLambdas;->chainLambdas(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 997
    invoke-static {p1, p0}, Lgnu/expr/FindTailCalls;->findTailCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    return-void
.end method

.method public warnAsError()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->warnAsError:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v0

    return v0
.end method

.method public warnInvokeUnknownMethod()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->warnInvokeUnknownMethod:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v0

    return v0
.end method

.method public warnUndefinedVariable()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->warnUndefinedVariable:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v0

    return v0
.end method

.method public warnUnknownMember()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->warnUnknownMember:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v0

    return v0
.end method
