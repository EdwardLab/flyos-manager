.class public Lgnu/expr/ProcInitializer;
.super Lgnu/expr/Initializer;
.source "ProcInitializer.java"


# instance fields
.field proc:Lgnu/expr/LambdaExp;


# direct methods
.method public constructor <init>(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/expr/Initializer;-><init>()V

    .line 11
    iput-object p3, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    .line 12
    iput-object p1, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    .line 13
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object p1

    .line 15
    :goto_0
    instance-of p3, p1, Lgnu/expr/ModuleExp;

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lgnu/expr/Compilation;->isStatic()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 17
    iget-object p1, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    iput-object p1, p0, Lgnu/expr/ProcInitializer;->next:Lgnu/expr/Initializer;

    .line 18
    iput-object p0, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    goto :goto_1

    .line 22
    :cond_1
    iget-object p2, p1, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    iput-object p2, p0, Lgnu/expr/ProcInitializer;->next:Lgnu/expr/Initializer;

    .line 23
    iput-object p0, p1, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    :goto_1
    return-void
.end method

.method public static emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V
    .locals 8

    .line 30
    iget-object v0, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    .line 33
    :goto_0
    iget-boolean v2, p1, Lgnu/expr/Compilation;->immediate:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 37
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 38
    instance-of v2, v1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lgnu/mapping/Symbol;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v4, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 40
    :goto_1
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    iget-object v5, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;

    move-result-object v4

    .line 41
    invoke-virtual {v0, v2, v4, v3}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    instance-of v2, v0, Lgnu/expr/ModuleMethod;

    if-eqz v2, :cond_2

    .line 43
    move-object v3, v0

    check-cast v3, Lgnu/expr/ModuleMethod;

    .line 45
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 46
    sget-object v2, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 50
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 51
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    const-string v3, "<init>"

    goto :goto_2

    .line 56
    :cond_3
    invoke-static {v2}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    const-string v3, "init"

    :goto_2
    const/4 v5, 0x4

    .line 59
    invoke-virtual {v2, v3, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v3

    .line 62
    :goto_3
    instance-of v5, v3, Lgnu/expr/ClassExp;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    iget-object v5, v3, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v5, :cond_5

    .line 63
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v3

    invoke-virtual {v3, v4}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_6

    .line 64
    :cond_5
    instance-of v3, v3, Lgnu/expr/ModuleExp;

    if-eqz v3, :cond_9

    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v5, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne v3, v5, :cond_6

    iget-object v3, p1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    .line 70
    :cond_6
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    if-nez v3, :cond_8

    .line 72
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    iget-object v5, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    const-string v7, "$instance"

    invoke-virtual {v3, v0, v5, v7}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v3

    iput-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    .line 76
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v5, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eq v3, v5, :cond_7

    invoke-virtual {p1}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v3

    if-nez v3, :cond_7

    .line 78
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 79
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 80
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v3, v3, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 81
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v5, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    const-string v7, "$main"

    invoke-virtual {v3, v7, v5, v6}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v3

    iput-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    .line 83
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 84
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 85
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_4

    .line 88
    :cond_7
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 89
    :goto_4
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 91
    :cond_8
    iget-object v3, p1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_6

    .line 67
    :cond_9
    :goto_5
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 93
    :goto_6
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 94
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v1, v3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 97
    iget v1, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget-object v3, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v3, :cond_a

    iget v3, p0, Lgnu/expr/LambdaExp;->max_args:I

    goto :goto_7

    :cond_a
    const/4 v3, -0x1

    :goto_7
    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 99
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 101
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 103
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    array-length v1, v1

    :goto_8
    if-ge v6, v1, :cond_d

    .line 106
    iget-object v2, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    aget-object v2, v2, v6

    if-eqz v2, :cond_c

    .line 108
    sget-object v3, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    if-eq v2, v3, :cond_c

    .line 110
    iget-object v3, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    add-int/lit8 v5, v6, 0x1

    aget-object v3, v3, v5

    .line 111
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 112
    invoke-virtual {p1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 113
    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    .line 114
    instance-of v5, v3, Lgnu/expr/Expression;

    if-eqz v5, :cond_b

    .line 115
    check-cast v3, Lgnu/expr/Expression;

    invoke-virtual {v3, p1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_9

    .line 117
    :cond_b
    invoke-virtual {p1, v3, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    :goto_9
    const-string v2, "gnu.mapping.PropertySet"

    .line 118
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "setProperty"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    :cond_c
    add-int/lit8 v6, v6, 0x2

    goto :goto_8

    :cond_d
    return-void
.end method


# virtual methods
.method public emit(Lgnu/expr/Compilation;)V
    .locals 2

    .line 128
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 132
    :cond_0
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-static {v1, p1}, Lgnu/expr/ProcInitializer;->emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 134
    iget-object p1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {p1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    iget-object p1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    :goto_0
    return-void
.end method

.method public reportError(Ljava/lang/String;Lgnu/expr/Compilation;)V
    .locals 5

    .line 142
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v1

    .line 144
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v2

    .line 145
    iget-object v3, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-virtual {p2, v3}, Lgnu/expr/Compilation;->setLocation(Lgnu/text/SourceLocator;)V

    .line 146
    iget-object v3, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v3

    .line 147
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_0

    const-string p1, "unnamed procedure"

    .line 149
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string p1, "procedure "

    .line 152
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/16 p1, 0x65

    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 156
    invoke-virtual {p2, v0, v1, v2}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    return-void
.end method
