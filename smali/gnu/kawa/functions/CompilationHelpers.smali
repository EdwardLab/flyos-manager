.class public Lgnu/kawa/functions/CompilationHelpers;
.super Ljava/lang/Object;
.source "CompilationHelpers.java"


# static fields
.field public static final setterDecl:Lgnu/expr/Declaration;

.field static final setterField:Lgnu/bytecode/Field;

.field static final setterType:Lgnu/bytecode/ClassType;

.field static final typeList:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "java.util.List"

    .line 30
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->typeList:Lgnu/bytecode/ClassType;

    const-string v0, "gnu.kawa.functions.Setter"

    .line 103
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterType:Lgnu/bytecode/ClassType;

    const-string v1, "setter"

    .line 104
    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterField:Lgnu/bytecode/Field;

    .line 105
    new-instance v2, Lgnu/expr/Declaration;

    invoke-direct {v2, v1, v0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    sput-object v2, Lgnu/kawa/functions/CompilationHelpers;->setterDecl:Lgnu/expr/Declaration;

    .line 106
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static nonNumeric(Lgnu/expr/Expression;)Z
    .locals 2

    .line 21
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 23
    check-cast p0, Lgnu/expr/QuoteExp;

    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 24
    instance-of v0, p0, Lgnu/math/Numeric;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgnu/text/Char;

    if-nez v0, :cond_0

    instance-of p0, p0, Lgnu/mapping/Symbol;

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static validateApplyToArgs(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 9

    .line 41
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p3

    .line 42
    array-length v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_8

    const/4 v2, 0x0

    .line 45
    aget-object v3, p3, v2

    .line 46
    invoke-virtual {v3, v1}, Lgnu/expr/Expression;->getFlag(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 48
    instance-of v4, v3, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_0

    .line 50
    new-array v4, v0, [Lgnu/expr/Expression;

    .line 51
    invoke-static {p3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    new-instance p3, Lgnu/expr/ApplyExp;

    invoke-direct {p3, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p3, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0

    .line 54
    :cond_0
    invoke-virtual {p1, v3, v5}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    .line 55
    aput-object v3, p3, v2

    .line 57
    :cond_1
    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getRealType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 58
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v6

    .line 59
    invoke-virtual {v6}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v7

    .line 60
    sget-object v8, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v8}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 62
    new-array v4, v0, [Lgnu/expr/Expression;

    .line 63
    invoke-static {p3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    new-instance p3, Lgnu/expr/ApplyExp;

    invoke-direct {p3, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 65
    invoke-virtual {p3, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 66
    invoke-virtual {v3, p3, p1, p2, v5}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0

    .line 71
    :cond_2
    invoke-static {v4, v6}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v6

    if-gez v6, :cond_3

    goto :goto_1

    .line 73
    :cond_3
    sget-object v6, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v6}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v7, v3, v2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 78
    :cond_4
    instance-of v3, v4, Lgnu/bytecode/ArrayType;

    if-eqz v3, :cond_5

    .line 80
    check-cast v4, Lgnu/bytecode/ArrayType;

    invoke-virtual {v4}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 81
    new-instance v5, Lgnu/expr/ApplyExp;

    new-instance v1, Lgnu/kawa/reflect/ArrayGet;

    invoke-direct {v1, v0}, Lgnu/kawa/reflect/ArrayGet;-><init>(Lgnu/bytecode/Type;)V

    invoke-direct {v5, v1, p3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_1

    .line 83
    :cond_5
    instance-of v3, v4, Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_7

    check-cast v4, Lgnu/bytecode/ClassType;

    sget-object v3, Lgnu/kawa/functions/CompilationHelpers;->typeList:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v3}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-ne v0, v1, :cond_7

    new-array v0, v1, [Lgnu/bytecode/Type;

    .line 90
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v1, v0, v2

    const-string v1, "get"

    invoke-virtual {v4, v1, v0}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    .line 91
    new-instance v5, Lgnu/expr/ApplyExp;

    invoke-direct {v5, v0, p3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto :goto_1

    .line 76
    :cond_6
    :goto_0
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-direct {v5, v0, p3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    :cond_7
    :goto_1
    if-eqz v5, :cond_8

    .line 95
    invoke-virtual {v5, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 96
    invoke-virtual {p1, v5, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0

    .line 99
    :cond_8
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    return-object p0
.end method

.method public static validateIsEqv(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 161
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    const/4 p2, 0x0

    .line 162
    aget-object p2, p1, p2

    invoke-static {p2}, Lgnu/kawa/functions/CompilationHelpers;->nonNumeric(Lgnu/expr/Expression;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    aget-object p2, p1, p2

    invoke-static {p2}, Lgnu/kawa/functions/CompilationHelpers;->nonNumeric(Lgnu/expr/Expression;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 163
    :cond_1
    :goto_0
    new-instance p0, Lgnu/expr/ApplyExp;

    check-cast p3, Lgnu/kawa/functions/IsEqv;

    iget-object p2, p3, Lgnu/kawa/functions/IsEqv;->isEq:Lgnu/kawa/functions/IsEq;

    invoke-direct {p0, p2, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object p0
.end method

.method public static validateSetter(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 1

    .line 111
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 112
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    .line 113
    array-length p2, p1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_5

    const/4 p2, 0x0

    .line 115
    aget-object p2, p1, p2

    .line 116
    invoke-virtual {p2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object p3

    .line 118
    instance-of v0, p3, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_0

    .line 120
    new-instance p0, Lgnu/kawa/functions/SetArrayExp;

    check-cast p3, Lgnu/bytecode/ArrayType;

    invoke-direct {p0, p2, p3}, Lgnu/kawa/functions/SetArrayExp;-><init>(Lgnu/expr/Expression;Lgnu/bytecode/ArrayType;)V

    return-object p0

    .line 122
    :cond_0
    instance-of v0, p3, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_2

    check-cast p3, Lgnu/bytecode/ClassType;

    sget-object v0, Lgnu/kawa/functions/CompilationHelpers;->typeList:Lgnu/bytecode/ClassType;

    invoke-virtual {p3, v0}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 125
    instance-of p2, p0, Lgnu/kawa/functions/SetListExp;

    if-eqz p2, :cond_1

    return-object p0

    .line 128
    :cond_1
    new-instance p2, Lgnu/kawa/functions/SetListExp;

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lgnu/kawa/functions/SetListExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p2

    .line 130
    :cond_2
    instance-of p1, p2, Lgnu/expr/ReferenceExp;

    if-eqz p1, :cond_3

    .line 132
    move-object p1, p2

    check-cast p1, Lgnu/expr/ReferenceExp;

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 134
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p2

    .line 136
    :cond_3
    instance-of p1, p2, Lgnu/expr/QuoteExp;

    if-eqz p1, :cond_5

    .line 138
    check-cast p2, Lgnu/expr/QuoteExp;

    invoke-virtual {p2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 139
    instance-of p2, p1, Lgnu/mapping/Procedure;

    if-eqz p2, :cond_5

    .line 141
    check-cast p1, Lgnu/mapping/Procedure;

    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object p1

    .line 142
    instance-of p2, p1, Lgnu/mapping/Procedure;

    if-eqz p2, :cond_5

    .line 144
    instance-of p2, p1, Ljava/io/Externalizable;

    if-eqz p2, :cond_4

    .line 145
    new-instance p0, Lgnu/expr/QuoteExp;

    invoke-direct {p0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 146
    :cond_4
    move-object p2, p1

    check-cast p2, Lgnu/mapping/Procedure;

    invoke-static {p1}, Lgnu/expr/Declaration;->getDeclaration(Lgnu/mapping/Named;)Lgnu/expr/Declaration;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 149
    new-instance p0, Lgnu/expr/ReferenceExp;

    invoke-direct {p0, p1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    :cond_5
    return-object p0
.end method
