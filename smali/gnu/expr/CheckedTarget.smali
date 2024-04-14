.class public Lgnu/expr/CheckedTarget;
.super Lgnu/expr/StackTarget;
.source "CheckedTarget.java"


# static fields
.field static initWrongTypeProcMethod:Lgnu/bytecode/Method;

.field static initWrongTypeStringMethod:Lgnu/bytecode/Method;

.field static typeClassCastException:Lgnu/bytecode/ClassType;

.field static typeWrongType:Lgnu/bytecode/ClassType;


# instance fields
.field argno:I

.field proc:Lgnu/expr/LambdaExp;

.field procname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    const/4 p1, -0x4

    .line 23
    iput p1, p0, Lgnu/expr/CheckedTarget;->argno:I

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 29
    iput-object p2, p0, Lgnu/expr/CheckedTarget;->proc:Lgnu/expr/LambdaExp;

    .line 30
    invoke-virtual {p2}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/CheckedTarget;->procname:Ljava/lang/String;

    .line 31
    iput p3, p0, Lgnu/expr/CheckedTarget;->argno:I

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 37
    iput-object p2, p0, Lgnu/expr/CheckedTarget;->procname:Ljava/lang/String;

    .line 38
    iput p3, p0, Lgnu/expr/CheckedTarget;->argno:I

    return-void
.end method

.method public static emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V
    .locals 6

    .line 110
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    return-void
.end method

.method public static emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V
    .locals 6

    .line 116
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    return-void
.end method

.method static emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V
    .locals 10

    .line 123
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->isInTry()Z

    move-result v1

    .line 129
    invoke-static {}, Lgnu/expr/CheckedTarget;->initWrongType()V

    .line 130
    new-instance v2, Lgnu/bytecode/Label;

    invoke-direct {v2, v0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    const/4 v3, 0x1

    if-nez p5, :cond_0

    .line 132
    sget-object v4, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-eq p4, v4, :cond_0

    .line 134
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object p5

    .line 135
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v4

    .line 136
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 137
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move-object v9, v4

    move-object v4, p5

    move-object p5, v9

    .line 141
    :goto_0
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getPC()I

    move-result v5

    .line 142
    invoke-virtual {v2, v0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 143
    invoke-static {p4, p0}, Lgnu/expr/CheckedTarget;->emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 145
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getPC()I

    move-result v6

    if-eq v6, v5, :cond_b

    .line 150
    sget-object v5, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p4, v5, :cond_1

    goto/16 :goto_6

    .line 160
    :cond_1
    new-instance p4, Lgnu/bytecode/Label;

    invoke-direct {p4, v0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 161
    invoke-virtual {p4, v0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 163
    new-instance v5, Lgnu/bytecode/Label;

    invoke-direct {v5, v0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 164
    invoke-virtual {v5, v0}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 168
    :cond_2
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    const/4 v6, 0x0

    if-nez v1, :cond_3

    .line 170
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;)I

    move-result v7

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 171
    :goto_1
    sget-object v8, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2, p4, v8}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    if-eqz p1, :cond_4

    .line 175
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {p4}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result p4

    if-nez p4, :cond_4

    .line 178
    iget-object p4, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {p4}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p4

    invoke-virtual {p1, p0}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object p1

    if-ne p4, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 181
    :goto_2
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result p0

    if-lez p0, :cond_5

    .line 183
    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->putLineNumber(I)V

    .line 184
    :cond_5
    sget-object p0, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 185
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 186
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    if-eqz v3, :cond_6

    .line 188
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    goto :goto_3

    :cond_6
    if-nez p2, :cond_7

    const/4 p0, -0x4

    if-eq p3, p0, :cond_7

    const-string p2, "lambda"

    .line 190
    :cond_7
    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 193
    :goto_3
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 194
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    if-eqz v3, :cond_8

    .line 195
    sget-object p0, Lgnu/expr/CheckedTarget;->initWrongTypeProcMethod:Lgnu/bytecode/Method;

    goto :goto_4

    :cond_8
    sget-object p0, Lgnu/expr/CheckedTarget;->initWrongTypeStringMethod:Lgnu/bytecode/Method;

    :goto_4
    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    if-eqz p5, :cond_9

    .line 198
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 199
    :cond_9
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    if-eqz v1, :cond_a

    .line 201
    invoke-virtual {v5, v0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    goto :goto_5

    .line 203
    :cond_a
    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->endFragment(I)V

    :goto_5
    return-void

    :cond_b
    :goto_6
    if-eqz p5, :cond_c

    .line 156
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    :cond_c
    return-void
.end method

.method public static emitCheckedCoerce(Lgnu/expr/Compilation;Ljava/lang/String;ILgnu/bytecode/Type;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 104
    invoke-static/range {v0 .. v5}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;
    .locals 1

    .line 55
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_0

    sget-object p0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/expr/CheckedTarget;

    invoke-direct {v0, p0}, Lgnu/expr/CheckedTarget;-><init>(Lgnu/bytecode/Type;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getInstance(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)Lgnu/expr/Target;
    .locals 1

    .line 49
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_0

    sget-object p0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/expr/CheckedTarget;

    invoke-direct {v0, p0, p1, p2}, Lgnu/expr/CheckedTarget;-><init>(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getInstance(Lgnu/bytecode/Type;Ljava/lang/String;I)Lgnu/expr/Target;
    .locals 1

    .line 43
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_0

    sget-object p0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/expr/CheckedTarget;

    invoke-direct {v0, p0, p1, p2}, Lgnu/expr/CheckedTarget;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getInstance(Lgnu/expr/Declaration;)Lgnu/expr/Target;
    .locals 2

    .line 61
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x2

    invoke-static {v0, p0, v1}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Ljava/lang/String;I)Lgnu/expr/Target;

    move-result-object p0

    return-object p0
.end method

.method private static initWrongType()V
    .locals 9

    .line 71
    sget-object v0, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    if-nez v0, :cond_0

    const-string v0, "java.lang.ClassCastException"

    .line 72
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    .line 73
    :cond_0
    sget-object v0, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    if-nez v0, :cond_1

    const-string v0, "gnu.mapping.WrongType"

    .line 75
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    const/4 v0, 0x4

    new-array v1, v0, [Lgnu/bytecode/Type;

    .line 77
    sget-object v2, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 78
    sget-object v2, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 79
    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 80
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 81
    sget-object v2, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v8, "<init>"

    invoke-virtual {v2, v8, v4, v1, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/CheckedTarget;->initWrongTypeStringMethod:Lgnu/bytecode/Method;

    new-array v0, v0, [Lgnu/bytecode/Type;

    .line 85
    sget-object v1, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v3

    .line 86
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v4

    .line 87
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v1, v0, v5

    .line 88
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v6

    .line 89
    sget-object v1, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v8, v4, v0, v2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/expr/CheckedTarget;->initWrongTypeProcMethod:Lgnu/bytecode/Method;

    :cond_1
    return-void
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 6

    .line 97
    invoke-virtual {p0, p1, p2}, Lgnu/expr/CheckedTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 98
    iget-object v1, p0, Lgnu/expr/CheckedTarget;->proc:Lgnu/expr/LambdaExp;

    iget-object v2, p0, Lgnu/expr/CheckedTarget;->procname:Ljava/lang/String;

    iget v3, p0, Lgnu/expr/CheckedTarget;->argno:I

    iget-object v4, p0, Lgnu/expr/CheckedTarget;->type:Lgnu/bytecode/Type;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    :cond_0
    return-void
.end method
