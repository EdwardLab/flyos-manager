.class public Lkawa/standard/define;
.super Lkawa/lang/Syntax;
.source "define.java"


# static fields
.field public static final defineRaw:Lkawa/standard/define;


# instance fields
.field lambda:Lkawa/lang/Lambda;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lkawa/standard/define;

    sget-object v1, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    invoke-direct {v0, v1}, Lkawa/standard/define;-><init>(Lkawa/lang/Lambda;)V

    sput-object v0, Lkawa/standard/define;->defineRaw:Lkawa/standard/define;

    return-void
.end method

.method public constructor <init>(Lkawa/lang/Lambda;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 39
    iput-object p1, p0, Lkawa/standard/define;->lambda:Lkawa/lang/Lambda;

    return-void
.end method


# virtual methods
.method getName(I)Ljava/lang/String;
    .locals 1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const-string p1, "define-private"

    return-object p1

    :cond_0
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    const-string p1, "define-constant"

    return-object p1

    :cond_1
    const-string p1, "define"

    return-object p1
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 6

    .line 119
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    .line 120
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 121
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    .line 122
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    .line 123
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 124
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 127
    :goto_0
    instance-of v4, p1, Lgnu/expr/Declaration;

    if-nez v4, :cond_1

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lkawa/standard/define;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is only allowed in a <body>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 129
    :cond_1
    check-cast p1, Lgnu/expr/Declaration;

    const-wide/16 v4, 0x2000

    .line 131
    invoke-virtual {p1, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v4

    .line 134
    instance-of v5, v4, Lgnu/expr/LangExp;

    if-eqz v5, :cond_2

    .line 136
    check-cast v4, Lgnu/expr/LangExp;

    invoke-virtual {v4}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/lists/Pair;

    .line 137
    invoke-virtual {p2, v4}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {p1, v4}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    :cond_2
    and-int/lit8 v0, v0, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 145
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 146
    iget-object v5, p0, Lkawa/standard/define;->lambda:Lkawa/lang/Lambda;

    invoke-virtual {v5, v0, v1, p2}, Lkawa/lang/Lambda;->rewriteBody(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 148
    sget-boolean v1, Lgnu/expr/Compilation;->inlineOk:Z

    if-nez v1, :cond_5

    .line 149
    invoke-virtual {p1, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    goto :goto_2

    .line 153
    :cond_3
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    .line 154
    iget-object v1, p1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v1, v1, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v0

    :goto_1
    invoke-virtual {p1, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 158
    :cond_5
    :goto_2
    new-instance v1, Lgnu/expr/SetExp;

    invoke-direct {v1, p1, v0}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 159
    invoke-virtual {v1, v3}, Lgnu/expr/SetExp;->setDefining(Z)V

    if-eqz v2, :cond_6

    .line 160
    invoke-virtual {p2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object p1

    instance-of p1, p1, Lgnu/expr/ModuleExp;

    if-nez p1, :cond_6

    const/16 p1, 0x77

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "define-private not at top level "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :cond_6
    return-object v1
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 44
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/Pair;

    .line 45
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/lists/Pair;

    .line 46
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    .line 47
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    .line 49
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x0

    .line 50
    :goto_0
    instance-of v10, v7, Lkawa/lang/SyntaxForm;

    if-eqz v10, :cond_0

    .line 52
    move-object v9, v7

    check-cast v9, Lkawa/lang/SyntaxForm;

    .line 53
    invoke-interface {v9}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    and-int/lit8 v11, v10, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    and-int/lit8 v14, v10, 0x8

    if-eqz v14, :cond_2

    const/4 v12, 0x1

    .line 59
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    .line 60
    invoke-virtual {v2, v7}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 61
    instance-of v14, v7, Lgnu/mapping/Symbol;

    if-nez v14, :cond_3

    const/16 v14, 0x65

    .line 63
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\' is not a valid identifier"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v14, v7}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    const/4 v7, 0x0

    .line 67
    :cond_3
    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 68
    invoke-virtual {v2, v7, v9, v1}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v7

    .line 69
    invoke-virtual {v2, v8}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v7}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v8

    if-eqz v11, :cond_4

    const-wide/32 v14, 0x1000000

    .line 73
    invoke-virtual {v7, v14, v15}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 74
    invoke-virtual {v7, v13}, Lgnu/expr/Declaration;->setPrivate(Z)V

    :cond_4
    if-eqz v12, :cond_5

    const-wide/16 v14, 0x4000

    .line 77
    invoke-virtual {v7, v14, v15}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_5
    const-wide/32 v14, 0x40000

    .line 78
    invoke-virtual {v7, v14, v15}, Lgnu/expr/Declaration;->setFlag(J)V

    and-int/lit8 v9, v10, 0x2

    if-eqz v9, :cond_8

    .line 82
    new-instance v9, Lgnu/expr/LambdaExp;

    invoke-direct {v9}, Lgnu/expr/LambdaExp;-><init>()V

    .line 83
    invoke-virtual {v9, v8}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 84
    sget-boolean v8, Lgnu/expr/Compilation;->inlineOk:Z

    if-eqz v8, :cond_6

    .line 86
    invoke-virtual {v7, v13}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 87
    sget-object v8, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 88
    iput-object v7, v9, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 90
    :cond_6
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    .line 91
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    .line 92
    invoke-static {v9, v3}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 93
    iget-object v12, v0, Lkawa/standard/define;->lambda:Lkawa/lang/Lambda;

    const/4 v14, 0x0

    invoke-virtual {v12, v9, v8, v2, v14}, Lkawa/lang/Lambda;->rewriteFormals(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 94
    iget-object v12, v0, Lkawa/standard/define;->lambda:Lkawa/lang/Lambda;

    invoke-virtual {v12, v9, v6, v2}, Lkawa/lang/Lambda;->rewriteAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v12

    if-eq v12, v6, :cond_7

    .line 96
    new-instance v6, Lgnu/lists/Pair;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    new-instance v14, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    new-instance v13, Lgnu/lists/Pair;

    invoke-direct {v13, v8, v12}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v14, v15, v13}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v6, v4, v14}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v6

    .line 97
    :cond_7
    invoke-virtual {v7, v9}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 100
    :cond_8
    instance-of v1, v1, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_a

    if-nez v11, :cond_a

    sget-boolean v1, Lgnu/expr/Compilation;->inlineOk:Z

    if-eqz v1, :cond_9

    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->sharedModuleDefs()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/4 v1, 0x1

    .line 102
    invoke-virtual {v7, v1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    goto :goto_2

    :cond_a
    const/4 v1, 0x1

    :goto_2
    and-int/2addr v1, v10

    if-eqz v1, :cond_b

    .line 106
    new-instance v1, Lgnu/expr/LangExp;

    invoke-direct {v1, v5}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v1}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    const-wide/16 v5, 0x2000

    .line 107
    invoke-virtual {v7, v5, v6}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 110
    :cond_b
    invoke-static {v3, v7, v4}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    move-object/from16 v4, p1

    invoke-static {v4, v0, v1}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .line 112
    invoke-static {v7, v3}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 114
    iget-object v2, v2, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    return-void
.end method
