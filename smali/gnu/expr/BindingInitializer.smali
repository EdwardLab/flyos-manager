.class public Lgnu/expr/BindingInitializer;
.super Lgnu/expr/Initializer;
.source "BindingInitializer.java"


# static fields
.field static final typeThreadLocation:Lgnu/bytecode/ClassType;


# instance fields
.field decl:Lgnu/expr/Declaration;

.field value:Lgnu/expr/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "gnu.mapping.ThreadLocation"

    .line 124
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lgnu/expr/Initializer;-><init>()V

    .line 31
    iput-object p1, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    .line 32
    iput-object p2, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    .line 33
    iget-object p1, p1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    iput-object p1, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    return-void
.end method

.method public static create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 1

    .line 16
    new-instance v0, Lgnu/expr/BindingInitializer;

    invoke-direct {v0, p0, p1}, Lgnu/expr/BindingInitializer;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 17
    iget-object p1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {p0}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isStatic()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 19
    :goto_0
    iget-object p0, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    iput-object p0, v0, Lgnu/expr/BindingInitializer;->next:Lgnu/expr/Initializer;

    .line 20
    iput-object v0, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    goto :goto_1

    .line 24
    :cond_1
    iget-object p0, p2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object p0, p0, Lgnu/expr/ModuleExp;->initChain:Lgnu/expr/Initializer;

    iput-object p0, v0, Lgnu/expr/BindingInitializer;->next:Lgnu/expr/Initializer;

    .line 25
    iget-object p0, p2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iput-object v0, p0, Lgnu/expr/ModuleExp;->initChain:Lgnu/expr/Initializer;

    :goto_1
    return-void
.end method

.method public static makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/bytecode/Type;

    .line 130
    instance-of p0, p0, Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 131
    sget-object p0, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    aput-object p0, v0, v1

    goto :goto_0

    .line 133
    :cond_0
    sget-object p0, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    aput-object p0, v0, v1

    .line 134
    :goto_0
    sget-object p0, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v1, "make"

    invoke-virtual {p0, v1, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public emit(Lgnu/expr/Compilation;)V
    .locals 8

    .line 38
    iget-object v0, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    .line 41
    sget-object v1, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v0, p1, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    :cond_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    instance-of v2, v1, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_2

    .line 48
    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 49
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_2

    .line 51
    iget-object v2, p1, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v2, v1}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v1

    .line 52
    iget-object v1, v1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    iget-object v2, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-ne v1, v2, :cond_2

    return-void

    .line 57
    :cond_2
    iget-object v1, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v1

    .line 58
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v2, v3}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v3

    if-lez v1, :cond_3

    .line 61
    iget-object v4, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 62
    :cond_3
    iget-object v1, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_4

    .line 63
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 65
    :cond_4
    iget-object v1, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    if-nez v1, :cond_b

    .line 67
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    iget-object v1, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 71
    :goto_0
    iget-object v4, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    .line 73
    iget-object v5, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    const-wide/32 v6, 0x10010000

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 75
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 76
    sget-object v5, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    .line 77
    :cond_6
    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v4, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    if-nez v1, :cond_7

    .line 79
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    goto :goto_1

    .line 81
    :cond_7
    sget-object v4, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v1, v4}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 82
    :goto_1
    sget-object p1, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    const/4 v1, 0x2

    const-string v4, "getInstance"

    invoke-virtual {p1, v4, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_4

    .line 84
    :cond_8
    iget-object v1, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    new-array v1, v1, [Lgnu/bytecode/Type;

    const/4 v5, 0x0

    .line 90
    instance-of v6, v4, Lgnu/mapping/Symbol;

    if-eqz v6, :cond_9

    sget-object v6, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    goto :goto_2

    :cond_9
    sget-object v6, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    :goto_2
    aput-object v6, v1, v5

    .line 92
    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v4, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 93
    sget-object p1, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    const-string v4, "makeAnonymous"

    invoke-virtual {p1, v4, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object p1

    .line 95
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_4

    .line 99
    :cond_a
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v4, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 100
    invoke-static {v4}, Lgnu/expr/BindingInitializer;->makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_4

    .line 105
    :cond_b
    iget-object v1, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-nez v1, :cond_c

    iget-object v1, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 106
    :goto_3
    iget-object v4, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    invoke-static {v1}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    invoke-virtual {v4, p1, v1}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 110
    :goto_4
    iget-object p1, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-nez p1, :cond_e

    .line 112
    iget-object p1, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {p1}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object p1

    if-nez p1, :cond_d

    .line 114
    iget-object p1, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {p1, v0}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object p1

    .line 115
    :cond_d
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_5

    .line 117
    :cond_e
    iget-object p1, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {p1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 118
    iget-object p1, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto :goto_5

    .line 120
    :cond_f
    iget-object p1, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 121
    :goto_5
    invoke-virtual {v2, v3}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    return-void
.end method
