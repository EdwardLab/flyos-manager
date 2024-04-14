.class public Lkawa/standard/syntax_case;
.super Lkawa/lang/Syntax;
.source "syntax_case.java"


# static fields
.field public static final syntax_case:Lkawa/standard/syntax_case;


# instance fields
.field call_error:Lgnu/expr/PrimProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lkawa/standard/syntax_case;

    invoke-direct {v0}, Lkawa/standard/syntax_case;-><init>()V

    sput-object v0, Lkawa/standard/syntax_case;->syntax_case:Lkawa/standard/syntax_case;

    const-string v1, "syntax-case"

    .line 11
    invoke-virtual {v0, v1}, Lkawa/standard/syntax_case;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 166
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object p0

    check-cast p0, Lkawa/lang/Translator;

    if-eqz p0, :cond_1

    .line 169
    invoke-virtual {p0}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "some syntax"

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p1}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object p1

    .line 171
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no matching case while expanding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0

    .line 168
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "no match in syntax-case"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method rewriteClauses(Ljava/lang/Object;Lkawa/standard/syntax_case_work;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 18
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    .line 19
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ne v0, v5, :cond_1

    new-array v0, v8, [Lgnu/expr/Expression;

    .line 28
    new-instance v3, Lgnu/expr/QuoteExp;

    const-string v5, "syntax-case"

    invoke-direct {v3, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v3, v0, v7

    .line 29
    new-instance v3, Lgnu/expr/ReferenceExp;

    iget-object v2, v2, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    invoke-direct {v3, v2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v3, v0, v6

    .line 30
    iget-object v2, v1, Lkawa/standard/syntax_case;->call_error:Lgnu/expr/PrimProcedure;

    if-nez v2, :cond_0

    const-string v2, "kawa.standard.syntax_case"

    .line 32
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    new-array v3, v8, [Lgnu/bytecode/Type;

    .line 34
    sget-object v5, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    aput-object v5, v3, v7

    .line 35
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v5, v3, v6

    .line 36
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v6, 0x9

    const-string v7, "error"

    invoke-virtual {v2, v7, v3, v5, v6}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 39
    new-instance v3, Lgnu/expr/PrimProcedure;

    invoke-direct {v3, v2, v4}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    iput-object v3, v1, Lkawa/standard/syntax_case;->call_error:Lgnu/expr/PrimProcedure;

    .line 41
    :cond_0
    new-instance v2, Lgnu/expr/ApplyExp;

    iget-object v3, v1, Lkawa/standard/syntax_case;->call_error:Lgnu/expr/PrimProcedure;

    invoke-direct {v2, v3, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v2

    .line 43
    :cond_1
    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 47
    :try_start_0
    instance-of v9, v0, Lgnu/lists/Pair;

    if-eqz v9, :cond_a

    move-object v9, v0

    check-cast v9, Lgnu/lists/Pair;

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lgnu/lists/Pair;

    if-nez v10, :cond_2

    goto/16 :goto_4

    .line 50
    :cond_2
    check-cast v9, Lgnu/lists/Pair;

    .line 51
    invoke-static/range {p3 .. p3}, Lkawa/lang/PatternScope;->push(Lkawa/lang/Translator;)Lkawa/lang/PatternScope;

    move-result-object v10

    .line 52
    iget-object v11, v3, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    iput-object v11, v10, Lkawa/lang/PatternScope;->matchArray:Lgnu/expr/Declaration;

    .line 53
    invoke-virtual {v3, v10}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    const/4 v11, 0x0

    .line 56
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    .line 57
    :goto_0
    instance-of v13, v12, Lkawa/lang/SyntaxForm;

    if-eqz v13, :cond_3

    .line 59
    move-object v11, v12

    check-cast v11, Lkawa/lang/SyntaxForm;

    .line 60
    invoke-interface {v11}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v12

    goto :goto_0

    .line 63
    :cond_3
    instance-of v13, v12, Lgnu/lists/Pair;

    if-nez v13, :cond_4

    const-string v0, "missing syntax-case output expression"

    .line 64
    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v3, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v0

    .line 66
    :cond_4
    :try_start_1
    iget-object v13, v10, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    .line 67
    new-instance v14, Lkawa/lang/SyntaxPattern;

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    iget-object v15, v2, Lkawa/standard/syntax_case_work;->literal_identifiers:[Ljava/lang/Object;

    invoke-direct {v14, v9, v15, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/Object;[Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 69
    invoke-virtual {v14}, Lkawa/lang/SyntaxPattern;->varCount()I

    move-result v9

    .line 70
    iget v15, v2, Lkawa/standard/syntax_case_work;->maxVars:I

    if-le v9, v15, :cond_5

    .line 71
    iput v9, v2, Lkawa/standard/syntax_case_work;->maxVars:I

    .line 73
    :cond_5
    new-instance v15, Lgnu/expr/BlockExp;

    invoke-direct {v15}, Lgnu/expr/BlockExp;-><init>()V

    const/4 v8, 0x4

    new-array v8, v8, [Lgnu/expr/Expression;

    .line 75
    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-direct {v6, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v6, v8, v7

    .line 76
    new-instance v6, Lgnu/expr/ReferenceExp;

    iget-object v7, v2, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    invoke-direct {v6, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v7, 0x1

    aput-object v6, v8, v7

    .line 77
    new-instance v6, Lgnu/expr/ReferenceExp;

    iget-object v7, v3, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    invoke-direct {v6, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v7, 0x2

    aput-object v6, v8, v7

    const/4 v6, 0x3

    .line 78
    new-instance v7, Lgnu/expr/QuoteExp;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v14

    invoke-direct {v7, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v7, v8, v6

    .line 79
    new-instance v6, Lgnu/expr/ApplyExp;

    new-instance v7, Lgnu/expr/PrimProcedure;

    sget-object v14, Lkawa/lang/Pattern;->matchPatternMethod:Lgnu/bytecode/Method;

    invoke-direct {v7, v14, v4}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    sub-int/2addr v9, v13

    .line 83
    new-array v4, v9, [Lgnu/expr/Expression;

    :goto_1
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_6

    .line 85
    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    aput-object v7, v4, v9

    goto :goto_1

    .line 86
    :cond_6
    iput-object v4, v10, Lkawa/lang/PatternScope;->inits:[Lgnu/expr/Expression;

    .line 89
    check-cast v12, Lgnu/lists/Pair;

    .line 90
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v7, :cond_7

    .line 91
    invoke-virtual {v3, v12, v11}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_2

    .line 94
    :cond_7
    invoke-virtual {v3, v12, v11}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v4

    .line 95
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_9

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/lists/Pair;

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v8, v9, :cond_8

    goto :goto_3

    .line 98
    :cond_8
    new-instance v8, Lgnu/expr/IfExp;

    invoke-virtual {v3, v7, v11}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v7

    new-instance v9, Lgnu/expr/ExitExp;

    invoke-direct {v9, v15}, Lgnu/expr/ExitExp;-><init>(Lgnu/expr/BlockExp;)V

    invoke-direct {v8, v4, v7, v9}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v4, v8

    .line 101
    :goto_2
    invoke-virtual {v10, v4}, Lkawa/lang/PatternScope;->setBody(Lgnu/expr/Expression;)V

    .line 103
    invoke-virtual {v3, v10}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 104
    invoke-static/range {p3 .. p3}, Lkawa/lang/PatternScope;->pop(Lkawa/lang/Translator;)V

    .line 105
    new-instance v4, Lgnu/expr/IfExp;

    new-instance v7, Lgnu/expr/ExitExp;

    invoke-direct {v7, v15}, Lgnu/expr/ExitExp;-><init>(Lgnu/expr/BlockExp;)V

    invoke-direct {v4, v6, v10, v7}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lkawa/standard/syntax_case;->rewriteClauses(Ljava/lang/Object;Lkawa/standard/syntax_case_work;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-virtual {v15, v4, v0}, Lgnu/expr/BlockExp;->setBody(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-virtual {v3, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v15

    :cond_9
    :goto_3
    :try_start_2
    const-string v0, "syntax-case:  bad clause"

    .line 97
    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    invoke-virtual {v3, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v0

    :cond_a
    :goto_4
    :try_start_3
    const-string v0, "syntax-case:  bad clause list"

    .line 49
    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    invoke-virtual {v3, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v3, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v0
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 11

    .line 117
    new-instance v0, Lkawa/standard/syntax_case_work;

    invoke-direct {v0}, Lkawa/standard/syntax_case_work;-><init>()V

    .line 119
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 120
    instance-of v1, p1, Lgnu/lists/Pair;

    if-eqz v1, :cond_1

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/lists/Pair;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v2, v1, [Lgnu/expr/Expression;

    .line 123
    new-instance v3, Lgnu/expr/LetExp;

    invoke-direct {v3, v2}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    const/4 v4, 0x0

    .line 124
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    iput-object v5, v0, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    .line 126
    iget-object v5, p2, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    .line 127
    invoke-virtual {v3, v4}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    .line 128
    sget-object v7, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    const/4 v7, 0x1

    .line 129
    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 130
    iput-object v6, p2, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    .line 131
    iget-object v8, v0, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    invoke-virtual {v8, v7}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 132
    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 135
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, v8}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v2, v9

    .line 136
    iget-object v8, v0, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    aget-object v10, v2, v9

    invoke-virtual {v8, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 137
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 139
    check-cast p1, Lgnu/lists/Pair;

    .line 140
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v4, p2}, Lkawa/lang/SyntaxPattern;->getLiteralsList(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lkawa/standard/syntax_case_work;->literal_identifiers:[Ljava/lang/Object;

    .line 142
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 144
    invoke-virtual {p0, p1, v0, p2}, Lkawa/standard/syntax_case;->rewriteClauses(Ljava/lang/Object;Lkawa/standard/syntax_case_work;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, v3, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 145
    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    const-string p1, "kawa.lang.SyntaxPattern"

    .line 147
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    const-string v4, "allocVars"

    invoke-virtual {p1, v4, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    new-array v1, v1, [Lgnu/expr/Expression;

    .line 150
    new-instance v4, Lgnu/expr/QuoteExp;

    iget v0, v0, Lkawa/standard/syntax_case_work;->maxVars:I

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-direct {v4, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v4, v1, v9

    if-nez v5, :cond_0

    .line 152
    sget-object v0, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v0, v1, v7

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Lgnu/expr/ReferenceExp;

    invoke-direct {v0, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v0, v1, v7

    .line 155
    :goto_0
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, p1, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    aput-object v0, v2, v7

    .line 156
    invoke-virtual {v6, v0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 157
    iput-object v5, p2, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    return-object v3

    :cond_1
    const-string p1, "insufficiant arguments to syntax-case"

    .line 160
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
