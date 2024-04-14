.class public Lgnu/expr/QuoteExp;
.super Lgnu/expr/Expression;
.source "QuoteExp.java"


# static fields
.field public static final EXPLICITLY_TYPED:I = 0x2

.field public static final SHARED_CONSTANT:I = 0x4

.field public static abstractExp:Lgnu/expr/QuoteExp;

.field public static final classObjectExp:Lgnu/expr/QuoteExp;

.field public static falseExp:Lgnu/expr/QuoteExp;

.field public static nullExp:Lgnu/expr/QuoteExp;

.field public static trueExp:Lgnu/expr/QuoteExp;

.field public static undefined_exp:Lgnu/expr/QuoteExp;

.field public static voidExp:Lgnu/expr/QuoteExp;


# instance fields
.field protected type:Lgnu/bytecode/Type;

.field value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    sget-object v0, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    .line 55
    sget-object v0, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    .line 56
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-static {v0, v1}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    .line 58
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    .line 59
    sget-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    .line 60
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lgnu/expr/QuoteExp;->setType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-static {p0, v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;Lgnu/text/SourceLocator;)Lgnu/expr/QuoteExp;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;Lgnu/text/SourceLocator;)Lgnu/expr/QuoteExp;
    .locals 1

    if-nez p0, :cond_0

    .line 70
    sget-object p0, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    return-object p0

    .line 71
    :cond_0
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_1

    .line 72
    sget-object p0, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    return-object p0

    .line 73
    :cond_1
    sget-object v0, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    if-ne p0, v0, :cond_2

    .line 74
    sget-object p0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    return-object p0

    .line 75
    :cond_2
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_3

    .line 76
    sget-object p0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object p0

    .line 78
    :cond_3
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 79
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    :cond_4
    sget-object p0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    :goto_0
    return-object p0

    .line 80
    :cond_5
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    .line 82
    invoke-virtual {v0, p1}, Lgnu/expr/QuoteExp;->setLocation(Lgnu/text/SourceLocator;)V

    :cond_6
    return-object v0
.end method

.method static makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    .locals 1

    .line 88
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x4

    .line 89
    invoke-virtual {v0, p0}, Lgnu/expr/QuoteExp;->setFlag(I)V

    return-object v0
.end method

.method static makeShared(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/QuoteExp;
    .locals 1

    .line 95
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    const/4 p0, 0x4

    .line 96
    invoke-virtual {v0, p0}, Lgnu/expr/QuoteExp;->setFlag(I)V

    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v0, v1, :cond_1

    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    instance-of v1, v0, Lgnu/bytecode/ObjectType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-static {v1}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 121
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {p2, p1, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 117
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    :goto_1
    return-void
.end method

.method public deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 0

    return-object p0
.end method

.method public final getRawType()Lgnu/bytecode/Type;
    .locals 1

    .line 23
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 2

    .line 26
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v1, :cond_1

    .line 29
    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    return-object v0

    .line 30
    :cond_1
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 31
    sget-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    return-object v0

    .line 32
    :cond_2
    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne p0, v1, :cond_3

    .line 33
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0

    .line 35
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 15
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isExplicitlyTyped()Z
    .locals 1

    const/4 v0, 0x2

    .line 46
    invoke-virtual {p0, v0}, Lgnu/expr/QuoteExp;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isSharedConstant()Z
    .locals 1

    const/4 v0, 0x4

    .line 51
    invoke-virtual {p0, v0}, Lgnu/expr/QuoteExp;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method protected mustCompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 5

    const-string v0, "(Quote"

    const-string v1, ")"

    const/4 v2, 0x2

    .line 211
    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 213
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    .line 214
    instance-of v2, v0, Lgnu/expr/Expression;

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    iget-object v2, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 219
    :try_start_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->getFormat(Z)Lgnu/lists/AbstractFormat;

    move-result-object v3

    iput-object v3, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 220
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    const-string v0, " ::"

    .line 223
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_1
    iput-object v2, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 238
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 236
    iput-object v2, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    throw v0
.end method

.method public setType(Lgnu/bytecode/Type;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    const/4 p1, 0x2

    .line 41
    invoke-virtual {p0, p1}, Lgnu/expr/QuoteExp;->setFlag(I)V

    return-void
.end method

.method public side_effects()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuoteExp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 9

    .line 138
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne p0, v0, :cond_0

    return-object p1

    .line 140
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 141
    instance-of v1, v0, Lgnu/mapping/Procedure;

    if-nez v1, :cond_3

    if-eqz p4, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "calling "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " which is a "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "called value is not a procedure"

    :goto_1
    invoke-virtual {p2, p1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 145
    :cond_3
    check-cast v0, Lgnu/mapping/Procedure;

    .line 146
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v1

    .line 147
    invoke-static {v0, v1}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 149
    invoke-virtual {p2, v2}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 150
    :cond_4
    invoke-virtual {p2, p1, p3, v0}, Lgnu/expr/InlineCalls;->maybeInline(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_5

    return-object v2

    .line 153
    :cond_5
    iget-object v2, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 154
    instance-of v3, v0, Lgnu/mapping/MethodProc;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    move-object v3, v0

    check-cast v3, Lgnu/mapping/MethodProc;

    goto :goto_2

    :cond_6
    move-object v3, v4

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_9

    if-eqz v3, :cond_7

    .line 157
    invoke-virtual {v3, v6}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v7

    goto :goto_4

    :cond_7
    move-object v7, v4

    :goto_4
    add-int/lit8 v8, v1, -0x1

    if-ne v6, v8, :cond_8

    if-eqz v7, :cond_8

    .line 159
    invoke-virtual {v3}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v8

    if-gez v8, :cond_8

    invoke-virtual {v3}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v8

    if-ne v6, v8, :cond_8

    move-object v7, v4

    .line 162
    :cond_8
    aget-object v8, v2, v6

    invoke-virtual {p2, v8, v7}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v7

    aput-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x4

    .line 164
    invoke-virtual {p1, v2}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 166
    invoke-virtual {p1, v0, p2}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v2

    if-eq v2, p1, :cond_a

    .line 168
    invoke-virtual {p2, v2, p3}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 170
    :cond_a
    invoke-virtual {p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object p2

    .line 171
    invoke-virtual {p2, v0}, Lgnu/expr/Compilation;->inlineOk(Lgnu/mapping/Procedure;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 173
    invoke-static {v0}, Lgnu/expr/ApplyExp;->asInlineable(Lgnu/mapping/Procedure;)Lgnu/expr/Inlineable;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 175
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object p2

    if-ne p2, p0, :cond_b

    return-object p1

    .line 177
    :cond_b
    new-instance p2, Lgnu/expr/ApplyExp;

    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, p1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 179
    :cond_c
    iget-object p3, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object p2

    invoke-static {v0, p4, p3, p2}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 185
    invoke-virtual {p2}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result p3

    if-nez p3, :cond_f

    if-nez p4, :cond_d

    goto :goto_5

    .line 187
    :cond_d
    iget-object p3, p4, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez p3, :cond_e

    return-object p1

    :cond_e
    add-int/lit8 p3, v1, 0x1

    .line 191
    new-array p3, p3, [Lgnu/expr/Expression;

    .line 192
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v5, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    new-instance v0, Lgnu/expr/ReferenceExp;

    iget-object p4, p4, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-direct {v0, p4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v0, p3, v5

    .line 194
    new-instance p4, Lgnu/expr/ApplyExp;

    invoke-direct {p4, p2, p3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_6

    .line 186
    :cond_f
    :goto_5
    new-instance p4, Lgnu/expr/ApplyExp;

    iget-object p3, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-direct {p4, p2, p3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 196
    :goto_6
    invoke-virtual {p4, p1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    :cond_10
    return-object p1
.end method

.method public final valueIfConstant()Ljava/lang/Object;
    .locals 1

    .line 17
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 132
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitQuoteExp(Lgnu/expr/QuoteExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
