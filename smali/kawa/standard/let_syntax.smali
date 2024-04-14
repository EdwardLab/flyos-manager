.class public Lkawa/standard/let_syntax;
.super Lkawa/lang/Syntax;
.source "let_syntax.java"


# static fields
.field public static final let_syntax:Lkawa/standard/let_syntax;

.field public static final letrec_syntax:Lkawa/standard/let_syntax;


# instance fields
.field recursive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lkawa/standard/let_syntax;

    const/4 v1, 0x0

    const-string v2, "let-syntax"

    invoke-direct {v0, v1, v2}, Lkawa/standard/let_syntax;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lkawa/standard/let_syntax;->let_syntax:Lkawa/standard/let_syntax;

    .line 15
    new-instance v0, Lkawa/standard/let_syntax;

    const/4 v1, 0x1

    const-string v2, "letrec-syntax"

    invoke-direct {v0, v1, v2}, Lkawa/standard/let_syntax;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lkawa/standard/let_syntax;->letrec_syntax:Lkawa/standard/let_syntax;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p2}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 23
    iput-boolean p1, p0, Lkawa/standard/let_syntax;->recursive:Z

    return-void
.end method

.method private push(Lgnu/expr/LetExp;Lkawa/lang/Translator;Ljava/util/Stack;)V
    .locals 1

    .line 134
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    if-eqz p3, :cond_0

    .line 136
    invoke-virtual {p3}, Ljava/util/Stack;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 137
    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Declaration;

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 28
    instance-of v3, v1, Lgnu/lists/Pair;

    if-nez v3, :cond_0

    const-string v1, "missing let-syntax arguments"

    .line 29
    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 30
    :cond_0
    check-cast v1, Lgnu/lists/Pair;

    .line 31
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 32
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 33
    invoke-static {v3}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    const-string v1, "bindings not a proper list"

    .line 35
    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 38
    :cond_1
    new-array v5, v4, [Lgnu/expr/Expression;

    .line 39
    new-array v6, v4, [Lgnu/expr/Declaration;

    .line 40
    new-array v7, v4, [Lkawa/lang/Macro;

    .line 41
    new-array v8, v4, [Lgnu/lists/Pair;

    .line 42
    new-array v9, v4, [Lkawa/lang/SyntaxForm;

    .line 43
    new-instance v10, Lgnu/expr/LetExp;

    invoke-direct {v10, v5}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v13, v4, :cond_f

    .line 47
    :goto_1
    instance-of v12, v3, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_2

    .line 49
    move-object v14, v3

    check-cast v14, Lkawa/lang/SyntaxForm;

    .line 50
    invoke-interface {v14}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 53
    :cond_2
    check-cast v3, Lgnu/lists/Pair;

    .line 54
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v16, v14

    .line 55
    instance-of v14, v12, Lkawa/lang/SyntaxForm;

    if-eqz v14, :cond_3

    .line 57
    check-cast v12, Lkawa/lang/SyntaxForm;

    .line 58
    invoke-interface {v12}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v17, v12

    move-object v12, v14

    goto :goto_2

    :cond_3
    move-object/from16 v17, v16

    .line 60
    :goto_2
    instance-of v14, v12, Lgnu/lists/Pair;

    if-nez v14, :cond_4

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/let_syntax;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " binding is not a pair"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 62
    :cond_4
    check-cast v12, Lgnu/lists/Pair;

    .line 63
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v19, v1

    move-object/from16 v18, v17

    .line 65
    :goto_3
    instance-of v1, v14, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_5

    .line 67
    move-object/from16 v18, v14

    check-cast v18, Lkawa/lang/SyntaxForm;

    .line 68
    invoke-interface/range {v18 .. v18}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v14

    goto :goto_3

    .line 70
    :cond_5
    instance-of v1, v14, Ljava/lang/String;

    if-nez v1, :cond_6

    instance-of v1, v14, Lgnu/mapping/Symbol;

    if-nez v1, :cond_6

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "variable in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/let_syntax;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " binding is not a symbol"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 72
    :cond_6
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 73
    :goto_4
    instance-of v12, v1, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_7

    .line 75
    move-object/from16 v17, v1

    check-cast v17, Lkawa/lang/SyntaxForm;

    .line 76
    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 78
    :cond_7
    instance-of v12, v1, Lgnu/lists/Pair;

    if-nez v12, :cond_8

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/let_syntax;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no value for \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 80
    :cond_8
    check-cast v1, Lgnu/lists/Pair;

    .line 81
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    move/from16 v20, v4

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v12, v4, :cond_9

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "let binding for \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' is improper list"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 83
    :cond_9
    new-instance v4, Lgnu/expr/Declaration;

    invoke-direct {v4, v14}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 84
    invoke-static {v4}, Lkawa/lang/Macro;->make(Lgnu/expr/Declaration;)Lkawa/lang/Macro;

    move-result-object v12

    .line 85
    aput-object v12, v7, v13

    .line 86
    aput-object v1, v8, v13

    .line 87
    aput-object v17, v9, v13

    .line 88
    invoke-virtual {v10, v4}, Lgnu/expr/LetExp;->addDeclaration(Lgnu/expr/Declaration;)V

    if-nez v18, :cond_a

    const/4 v1, 0x0

    goto :goto_5

    .line 89
    :cond_a
    invoke-interface/range {v18 .. v18}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_c

    .line 92
    invoke-virtual {v2, v4, v1}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v1

    if-nez v15, :cond_b

    .line 94
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 95
    :cond_b
    invoke-virtual {v15, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    :cond_c
    if-eqz v17, :cond_d

    .line 98
    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    goto :goto_6

    :cond_d
    iget-boolean v1, v0, Lkawa/standard/let_syntax;->recursive:Z

    if-eqz v1, :cond_e

    move-object v1, v10

    goto :goto_6

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v1

    :goto_6
    invoke-virtual {v12, v1}, Lkawa/lang/Macro;->setCapturedScope(Lgnu/expr/ScopeExp;)V

    .line 100
    aput-object v4, v6, v13

    .line 101
    sget-object v1, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v1, v5, v13

    .line 102
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v14, v16

    move-object/from16 v1, v19

    move/from16 v4, v20

    goto/16 :goto_0

    :cond_f
    move-object/from16 v19, v1

    move/from16 v20, v4

    .line 104
    iget-boolean v1, v0, Lkawa/standard/let_syntax;->recursive:Z

    if-eqz v1, :cond_10

    .line 105
    invoke-direct {v0, v10, v2, v15}, Lkawa/standard/let_syntax;->push(Lgnu/expr/LetExp;Lkawa/lang/Translator;Ljava/util/Stack;)V

    .line 106
    :cond_10
    iget-object v1, v2, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    move/from16 v4, v20

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v4, :cond_12

    .line 109
    aget-object v12, v7, v3

    .line 110
    iput-object v12, v2, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 111
    aget-object v13, v8, v3

    aget-object v14, v9, v3

    invoke-virtual {v2, v13, v14}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v13

    .line 112
    aput-object v13, v5, v3

    .line 113
    aget-object v14, v6, v3

    .line 114
    iput-object v13, v12, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    move/from16 v20, v4

    .line 115
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-direct {v4, v12}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v14, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 116
    instance-of v4, v13, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_11

    .line 118
    check-cast v13, Lgnu/expr/LambdaExp;

    .line 119
    iput-object v14, v13, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 120
    invoke-virtual {v14}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v4}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    :cond_11
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v20

    goto :goto_7

    .line 123
    :cond_12
    iput-object v1, v2, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 124
    iget-boolean v1, v0, Lkawa/standard/let_syntax;->recursive:Z

    if-nez v1, :cond_13

    .line 125
    invoke-direct {v0, v10, v2, v15}, Lkawa/standard/let_syntax;->push(Lgnu/expr/LetExp;Lkawa/lang/Translator;Ljava/util/Stack;)V

    :cond_13
    move-object/from16 v1, v19

    .line 126
    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    .line 127
    invoke-virtual {v2, v10}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 128
    invoke-virtual {v2, v11}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    return-object v1
.end method
