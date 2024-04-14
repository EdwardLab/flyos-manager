.class public Lkawa/standard/let;
.super Lkawa/lang/Syntax;
.source "let.java"


# static fields
.field public static final let:Lkawa/standard/let;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lkawa/standard/let;

    invoke-direct {v0}, Lkawa/standard/let;-><init>()V

    sput-object v0, Lkawa/standard/let;->let:Lkawa/standard/let;

    const-string v1, "let"

    .line 18
    invoke-virtual {v0, v1}, Lkawa/standard/let;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 22
    instance-of v2, v0, Lgnu/lists/Pair;

    if-nez v2, :cond_0

    const-string v0, "missing let arguments"

    .line 23
    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 24
    :cond_0
    move-object v2, v0

    check-cast v2, Lgnu/lists/Pair;

    .line 25
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 26
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 27
    invoke-static {v3}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    const-string v0, "bindings not a proper list"

    .line 29
    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 31
    :cond_1
    new-array v5, v4, [Lgnu/expr/Expression;

    .line 32
    new-instance v6, Lgnu/expr/LetExp;

    invoke-direct {v6, v5}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v7, v4, :cond_13

    .line 38
    :goto_1
    instance-of v12, v3, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_2

    .line 40
    move-object v10, v3

    check-cast v10, Lkawa/lang/SyntaxForm;

    .line 41
    invoke-interface {v10}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 45
    :cond_2
    check-cast v3, Lgnu/lists/Pair;

    .line 46
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    .line 48
    instance-of v13, v12, Lkawa/lang/SyntaxForm;

    if-eqz v13, :cond_3

    .line 50
    check-cast v12, Lkawa/lang/SyntaxForm;

    .line 51
    invoke-interface {v12}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v18, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto :goto_2

    :cond_3
    move-object v13, v10

    .line 53
    :goto_2
    instance-of v14, v12, Lgnu/lists/Pair;

    if-nez v14, :cond_4

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "let binding is not a pair:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 55
    :cond_4
    check-cast v12, Lgnu/lists/Pair;

    .line 56
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    .line 58
    instance-of v15, v14, Lkawa/lang/SyntaxForm;

    if-eqz v15, :cond_5

    .line 60
    check-cast v14, Lkawa/lang/SyntaxForm;

    .line 61
    invoke-interface {v14}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v15

    .line 62
    invoke-interface {v14}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v14

    move-object/from16 v18, v15

    move-object v15, v14

    move-object/from16 v14, v18

    goto :goto_3

    :cond_5
    if-nez v13, :cond_6

    const/4 v15, 0x0

    goto :goto_3

    .line 65
    :cond_6
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v15

    .line 66
    :goto_3
    invoke-virtual {v1, v14}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 67
    instance-of v8, v14, Lgnu/mapping/Symbol;

    if-nez v8, :cond_7

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "variable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in let binding is not a symbol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 70
    :cond_7
    invoke-virtual {v6, v14}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v8

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const-wide/32 v2, 0x40000

    .line 71
    invoke-virtual {v8, v2, v3}, Lgnu/expr/Declaration;->setFlag(J)V

    if-eqz v15, :cond_9

    .line 74
    invoke-virtual {v1, v8, v15}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v2

    if-nez v11, :cond_8

    .line 76
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    .line 77
    :cond_8
    invoke-virtual {v11, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    .line 81
    :cond_9
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 82
    :goto_4
    instance-of v3, v2, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_a

    .line 84
    move-object v13, v2

    check-cast v13, Lkawa/lang/SyntaxForm;

    .line 85
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    .line 87
    :cond_a
    instance-of v3, v2, Lgnu/lists/Pair;

    if-nez v3, :cond_b

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "let has no value for \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 89
    :cond_b
    check-cast v2, Lgnu/lists/Pair;

    .line 90
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 92
    :goto_5
    instance-of v12, v3, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_c

    .line 94
    move-object v13, v3

    check-cast v13, Lkawa/lang/SyntaxForm;

    .line 95
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    goto :goto_5

    .line 97
    :cond_c
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    const-string v15, "::"

    invoke-virtual {v1, v12, v15}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 99
    instance-of v2, v3, Lgnu/lists/Pair;

    if-eqz v2, :cond_e

    move-object v2, v3

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v12, :cond_d

    goto :goto_7

    .line 102
    :cond_d
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 103
    :goto_6
    instance-of v12, v3, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_f

    .line 105
    move-object v13, v3

    check-cast v13, Lkawa/lang/SyntaxForm;

    .line 106
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    goto :goto_6

    :cond_e
    :goto_7
    const-string v0, "missing type after \'::\' in let"

    .line 101
    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 109
    :cond_f
    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v12, :cond_10

    move-object v3, v2

    move v12, v9

    move-object v2, v10

    goto :goto_8

    .line 113
    :cond_10
    instance-of v12, v3, Lgnu/lists/Pair;

    if-eqz v12, :cond_12

    .line 115
    invoke-virtual {v1, v2}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v8, v2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    move v12, v9

    move-object v2, v10

    const-wide/16 v9, 0x2000

    .line 116
    invoke-virtual {v8, v9, v10}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 117
    check-cast v3, Lgnu/lists/Pair;

    .line 121
    :goto_8
    invoke-virtual {v1, v3, v13}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v9

    aput-object v9, v5, v7

    .line 122
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v3, v9, :cond_11

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "junk after declaration of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 124
    :cond_11
    aget-object v3, v5, v7

    invoke-virtual {v8, v3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 125
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v7, v7, 0x1

    move-object v10, v2

    move v9, v12

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 120
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "let binding for \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' is improper list"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_13
    move-object/from16 v16, v2

    move v0, v9

    :goto_9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    .line 129
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Declaration;

    invoke-virtual {v1, v2}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    goto :goto_9

    .line 131
    :cond_14
    invoke-virtual {v1, v6}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    move-object/from16 v0, v16

    .line 132
    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, v6, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 133
    invoke-virtual {v1, v6}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 134
    invoke-virtual {v1, v9}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    return-object v6
.end method
