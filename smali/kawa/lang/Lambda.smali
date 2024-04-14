.class public Lkawa/lang/Lambda;
.super Lkawa/lang/Syntax;
.source "Lambda.java"


# static fields
.field public static final nameKeyword:Lgnu/expr/Keyword;


# instance fields
.field public defaultDefault:Lgnu/expr/Expression;

.field public keyKeyword:Ljava/lang/Object;

.field public optionalKeyword:Ljava/lang/Object;

.field public restKeyword:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "name"

    .line 20
    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/lang/Lambda;->nameKeyword:Lgnu/expr/Keyword;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 22
    sget-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lkawa/lang/Lambda;->defaultDefault:Lgnu/expr/Expression;

    return-void
.end method

.method private static addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p3, p0, p1}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object p0

    .line 360
    :cond_0
    invoke-virtual {p2, p0}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    if-eqz p1, :cond_1

    .line 362
    iput-object p1, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    :cond_1
    return-void
.end method


# virtual methods
.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    const-string v0, "#<builtin lambda>"

    .line 643
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 8

    .line 40
    instance-of v0, p1, Lgnu/lists/Pair;

    if-nez v0, :cond_0

    const-string p1, "missing formals in lambda"

    .line 41
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 42
    :cond_0
    invoke-virtual {p2}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getErrorCount()I

    move-result v0

    .line 43
    new-instance v7, Lgnu/expr/LambdaExp;

    invoke-direct {v7}, Lgnu/expr/LambdaExp;-><init>()V

    .line 44
    check-cast p1, Lgnu/lists/Pair;

    .line 45
    invoke-static {v7, p1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v7

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 47
    invoke-virtual {p2}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/text/SourceMessages;->getErrorCount()I

    move-result p1

    if-le p1, v0, :cond_1

    .line 48
    new-instance p1, Lgnu/expr/ErrorExp;

    const-string p2, "bad lambda expression"

    invoke-direct {p1, p2}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    return-object v7
.end method

.method public rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p4, p5}, Lkawa/lang/Lambda;->rewriteFormals(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 62
    instance-of p2, p3, Lgnu/lists/PairWithPosition;

    if-eqz p2, :cond_0

    .line 63
    move-object p2, p3

    check-cast p2, Lgnu/lists/PairWithPosition;

    invoke-virtual {p2}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgnu/expr/LambdaExp;->setFile(Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lkawa/lang/Lambda;->rewriteAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p2

    .line 65
    invoke-virtual {p0, p1, p2, p4}, Lkawa/lang/Lambda;->rewriteBody(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)V

    return-void
.end method

.method public rewriteAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p2

    move-object v5, v3

    move-object v8, v5

    move-object v9, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 374
    :goto_0
    instance-of v10, v4, Lkawa/lang/SyntaxForm;

    if-eqz v10, :cond_0

    .line 376
    move-object v5, v4

    check-cast v5, Lkawa/lang/SyntaxForm;

    .line 377
    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 379
    :cond_0
    instance-of v10, v4, Lgnu/lists/Pair;

    if-nez v10, :cond_1

    goto :goto_3

    .line 381
    :cond_1
    move-object v10, v4

    check-cast v10, Lgnu/lists/Pair;

    .line 382
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "::"

    .line 383
    invoke-virtual {v1, v11, v12}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v11, v3

    goto :goto_1

    .line 385
    :cond_2
    instance-of v12, v11, Lgnu/expr/Keyword;

    if-nez v12, :cond_3

    goto :goto_3

    .line 389
    :cond_3
    :goto_1
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v5

    .line 390
    :goto_2
    instance-of v13, v10, Lkawa/lang/SyntaxForm;

    if-eqz v13, :cond_4

    .line 392
    move-object v12, v10

    check-cast v12, Lkawa/lang/SyntaxForm;

    .line 393
    invoke-interface {v12}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v10

    goto :goto_2

    .line 395
    :cond_4
    instance-of v13, v10, Lgnu/lists/Pair;

    if-nez v13, :cond_7

    :goto_3
    or-int v1, v6, v7

    if-eqz v1, :cond_5

    .line 518
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_5
    if-eqz v5, :cond_6

    .line 520
    invoke-static {v4, v5}, Lkawa/lang/SyntaxForms;->fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v4

    :cond_6
    return-object v4

    .line 397
    :cond_7
    check-cast v10, Lgnu/lists/Pair;

    const/16 v4, 0x65

    if-nez v11, :cond_9

    .line 402
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "*init*"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "explicit return type for \'*init*\' method"

    .line 403
    invoke-virtual {v1, v4, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_b

    .line 406
    :cond_8
    new-instance v4, Lgnu/expr/LangExp;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v10, v11, v2

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-direct {v4, v11}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    iput-object v4, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_b

    .line 408
    :cond_9
    sget-object v13, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    const-string v14, " and "

    if-ne v11, v13, :cond_12

    .line 410
    invoke-virtual {v1, v10, v12}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v11

    .line 411
    instance-of v12, v11, Lgnu/expr/QuoteExp;

    if-eqz v12, :cond_11

    check-cast v11, Lgnu/expr/QuoteExp;

    invoke-virtual {v11}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lgnu/mapping/SimpleSymbol;

    if-nez v12, :cond_a

    instance-of v12, v11, Ljava/lang/CharSequence;

    if-nez v12, :cond_a

    goto :goto_5

    .line 421
    :cond_a
    iget-object v12, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v12, :cond_b

    const-string v11, "access: not allowed for anonymous function"

    .line 422
    invoke-virtual {v1, v4, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_b

    .line 425
    :cond_b
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "private"

    .line 426
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/high16 v6, 0x1000000

    goto :goto_4

    :cond_c
    const-string v12, "protected"

    .line 428
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/high16 v6, 0x2000000

    goto :goto_4

    :cond_d
    const-string v12, "public"

    .line 430
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v6, 0x4000000

    goto :goto_4

    :cond_e
    const-string v12, "package"

    .line 432
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/high16 v6, 0x8000000

    goto :goto_4

    :cond_f
    const-string v12, "unknown access specifier"

    .line 435
    invoke-virtual {v1, v4, v12}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :goto_4
    if-eqz v9, :cond_10

    if-eqz v11, :cond_10

    .line 438
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "duplicate access specifiers - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v4, v9}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :cond_10
    move-object v9, v11

    goto/16 :goto_b

    :cond_11
    :goto_5
    const-string v11, "access: value not a constant symbol or string"

    .line 420
    invoke-virtual {v1, v4, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_b

    .line 445
    :cond_12
    sget-object v13, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    if-ne v11, v13, :cond_1a

    .line 447
    invoke-virtual {v1, v10, v12}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v11

    .line 448
    instance-of v12, v11, Lgnu/expr/QuoteExp;

    if-eqz v12, :cond_19

    check-cast v11, Lgnu/expr/QuoteExp;

    invoke-virtual {v11}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lgnu/mapping/SimpleSymbol;

    if-nez v12, :cond_13

    instance-of v12, v11, Ljava/lang/CharSequence;

    if-nez v12, :cond_13

    goto :goto_8

    .line 458
    :cond_13
    iget-object v12, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v12, :cond_14

    const-string v11, "allocation: not allowed for anonymous function"

    .line 459
    invoke-virtual {v1, v4, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_b

    .line 462
    :cond_14
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "class"

    .line 463
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    const-string v12, "static"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    goto :goto_6

    :cond_15
    const-string v12, "instance"

    .line 465
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    const/16 v7, 0x1000

    goto :goto_7

    :cond_16
    const-string v12, "unknown allocation specifier"

    .line 468
    invoke-virtual {v1, v4, v12}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_7

    :cond_17
    :goto_6
    const/16 v7, 0x800

    :goto_7
    if-eqz v8, :cond_18

    if-eqz v11, :cond_18

    .line 471
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "duplicate allocation specifiers - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :cond_18
    move-object v8, v11

    goto/16 :goto_b

    :cond_19
    :goto_8
    const-string v11, "allocation: value not a constant symbol or string"

    .line 457
    invoke-virtual {v1, v4, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_b

    .line 478
    :cond_1a
    sget-object v13, Lkawa/standard/object;->throwsKeyword:Lgnu/expr/Keyword;

    if-ne v11, v13, :cond_1e

    .line 480
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    .line 481
    invoke-static {v11}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_1b

    const-string v11, "throws: not followed by a list"

    .line 483
    invoke-virtual {v1, v4, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_b

    .line 486
    :cond_1b
    new-array v4, v13, [Lgnu/expr/Expression;

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v13, :cond_1d

    .line 490
    :goto_a
    instance-of v15, v11, Lkawa/lang/SyntaxForm;

    if-eqz v15, :cond_1c

    .line 492
    move-object v12, v11

    check-cast v12, Lkawa/lang/SyntaxForm;

    .line 493
    invoke-interface {v12}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v11

    goto :goto_a

    .line 495
    :cond_1c
    check-cast v11, Lgnu/lists/Pair;

    .line 496
    invoke-virtual {v1, v11, v12}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v15

    aput-object v15, v4, v14

    .line 498
    invoke-static {v15, v11}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 499
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 501
    :cond_1d
    invoke-virtual {v0, v4}, Lgnu/expr/LambdaExp;->setExceptions([Lgnu/expr/Expression;)V

    goto :goto_b

    .line 504
    :cond_1e
    sget-object v4, Lkawa/lang/Lambda;->nameKeyword:Lgnu/expr/Keyword;

    if-ne v11, v4, :cond_1f

    .line 506
    invoke-virtual {v1, v10, v12}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v4

    .line 507
    instance-of v11, v4, Lgnu/expr/QuoteExp;

    if-eqz v11, :cond_20

    .line 508
    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    goto :goto_b

    :cond_1f
    const/16 v4, 0x77

    .line 512
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unknown procedure property "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v4, v11}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 514
    :cond_20
    :goto_b
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public rewriteBody(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 9

    .line 546
    iget-object v0, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    if-nez v0, :cond_0

    iget-object v0, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iput-object p1, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 550
    :cond_0
    invoke-virtual {p3}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    .line 551
    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 553
    iget-object v0, p1, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    array-length v0, v0

    .line 554
    :goto_0
    iget-object v2, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    array-length v2, v2

    sub-int/2addr v2, v0

    .line 558
    :goto_1
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 560
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 562
    invoke-static {v0}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v8

    .line 563
    invoke-virtual {p1, v4, v8}, Lgnu/expr/LambdaExp;->replaceFollowing(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 564
    iput-object p1, v8, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 565
    invoke-virtual {p3, v0}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    add-int/lit8 v5, v5, 0x1

    move-object v4, v8

    goto :goto_3

    :cond_3
    move-object v4, v0

    .line 569
    :goto_3
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v0

    .line 570
    instance-of v8, v0, Lgnu/expr/LangExp;

    if-eqz v8, :cond_4

    .line 572
    check-cast v0, Lgnu/expr/LangExp;

    invoke-virtual {v0}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 573
    invoke-virtual {p3, v0}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v4, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 577
    :cond_4
    iget v0, p1, Lgnu/expr/LambdaExp;->min_args:I

    if-lt v6, v0, :cond_6

    iget v0, p1, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v0, v2

    if-lt v6, v0, :cond_5

    iget v0, p1, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v0, :cond_5

    iget v0, p1, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v0, v2

    if-eq v6, v0, :cond_6

    .line 582
    :cond_5
    iget-object v0, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    iget-object v8, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object v8, v8, v7

    invoke-virtual {p3, v8}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v8

    aput-object v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 587
    iget-object v0, p3, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, v4}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 558
    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_2

    .line 590
    :cond_7
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v6, 0x800

    invoke-virtual {v0, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-nez v0, :cond_8

    .line 594
    new-instance v0, Lgnu/expr/Declaration;

    sget-object v2, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v0, v2}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v3, v0}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 597
    :cond_8
    iget-object v0, p3, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    .line 598
    iput-object p1, p3, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    .line 599
    iget-object v2, p1, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 600
    iget-object v4, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    instance-of v4, v4, Lgnu/expr/LangExp;

    const/4 v6, 0x1

    if-eqz v4, :cond_9

    .line 602
    iget-object v2, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    check-cast v2, Lgnu/expr/LangExp;

    invoke-virtual {v2}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 603
    aget-object v4, v2, v1

    check-cast v4, Lgnu/lists/Pair;

    aget-object v2, v2, v6

    check-cast v2, Lkawa/lang/SyntaxForm;

    invoke-virtual {p3, v4, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v2

    .line 605
    invoke-virtual {p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    invoke-virtual {v4, v2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v2

    .line 607
    :cond_9
    invoke-virtual {p3, p2}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p2

    iput-object p2, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 608
    iput-object v0, p3, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    .line 612
    iget-object p2, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    instance-of p2, p2, Lgnu/expr/BeginExp;

    if-eqz p2, :cond_c

    iget-object p2, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    check-cast p2, Lgnu/expr/BeginExp;

    invoke-virtual {p2}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object p2

    array-length v0, p2

    if-le v0, v6, :cond_c

    aget-object v4, p2, v1

    instance-of v7, v4, Lgnu/expr/ReferenceExp;

    if-nez v7, :cond_a

    invoke-virtual {v4}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Lgnu/bytecode/Type;

    if-nez v7, :cond_a

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_c

    .line 619
    :cond_a
    aget-object v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-ne v0, v6, :cond_b

    .line 622
    aget-object p2, p2, v6

    iput-object p2, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto :goto_4

    .line 625
    :cond_b
    new-array v4, v0, [Lgnu/expr/Expression;

    .line 626
    invoke-static {p2, v6, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    invoke-static {v4}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p2

    iput-object p2, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 629
    :goto_4
    invoke-virtual {p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lgnu/expr/LambdaExp;->setCoercedReturnValue(Lgnu/expr/Expression;Lgnu/expr/Language;)V

    goto :goto_5

    .line 632
    :cond_c
    invoke-virtual {p1, v2}, Lgnu/expr/LambdaExp;->setCoercedReturnType(Lgnu/bytecode/Type;)V

    .line 633
    :goto_5
    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 634
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->countDecls()I

    .line 635
    invoke-virtual {p3, v5}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    .line 636
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->countDecls()I

    .line 637
    iget-object p2, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    if-ne p2, p1, :cond_d

    .line 638
    iput-object v3, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    :cond_d
    return-void
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1

    .line 33
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lkawa/lang/Lambda;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p2

    .line 34
    invoke-static {p2, p1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    return-object p2
.end method

.method public rewriteFormals(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 71
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 73
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v4

    if-eqz v3, :cond_0

    if-lez v4, :cond_0

    .line 76
    invoke-virtual {v1, v3, v4}, Lgnu/expr/LambdaExp;->setSourceLocation(Ljava/lang/String;I)V

    :cond_0
    const/4 v3, -0x1

    move-object/from16 v4, p2

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 86
    :goto_0
    instance-of v8, v4, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_1

    .line 88
    check-cast v4, Lkawa/lang/SyntaxForm;

    .line 90
    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    .line 92
    :cond_1
    instance-of v8, v4, Lgnu/lists/Pair;

    const-string v9, "::"

    const-string v10, "multiple "

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v8, :cond_2d

    .line 151
    instance-of v8, v4, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_4

    if-gez v5, :cond_3

    if-gez v7, :cond_3

    if-ltz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    goto :goto_2

    .line 155
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dotted rest-arg after "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    .line 161
    :cond_4
    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v4, v8, :cond_5

    const-string v1, "misformed formals in lambda"

    .line 163
    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    :cond_5
    :goto_2
    if-le v6, v12, :cond_6

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " parameters"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    :cond_6
    if-gez v5, :cond_7

    const/4 v5, 0x0

    :cond_7
    if-gez v6, :cond_8

    const/4 v6, 0x0

    :cond_8
    if-gez v7, :cond_9

    const/4 v7, 0x0

    :cond_9
    if-lez v6, :cond_a

    .line 178
    iput v3, v1, Lgnu/expr/LambdaExp;->max_args:I

    goto :goto_3

    .line 180
    :cond_a
    iget v3, v1, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v3, v5

    mul-int/lit8 v4, v7, 0x2

    add-int/2addr v3, v4

    iput v3, v1, Lgnu/expr/LambdaExp;->max_args:I

    :goto_3
    add-int/2addr v5, v7

    if-lez v5, :cond_b

    .line 182
    new-array v3, v5, [Lgnu/expr/Expression;

    iput-object v3, v1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    :cond_b
    if-lez v7, :cond_c

    .line 184
    new-array v3, v7, [Lgnu/expr/Keyword;

    iput-object v3, v1, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    :cond_c
    const/4 v8, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object v6, v8

    const/4 v5, 0x0

    .line 192
    :goto_4
    instance-of v7, v3, Lkawa/lang/SyntaxForm;

    if-eqz v7, :cond_d

    .line 194
    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 195
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    .line 198
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v3

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    .line 201
    :cond_d
    instance-of v7, v3, Lgnu/lists/Pair;

    const-wide/32 v12, 0x40000

    if-nez v7, :cond_10

    .line 339
    instance-of v5, v3, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_e

    .line 341
    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 342
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    .line 343
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v3

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    .line 345
    :cond_e
    instance-of v5, v3, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_f

    .line 347
    new-instance v5, Lgnu/expr/Declaration;

    invoke-direct {v5, v3}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 348
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v5, v3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 349
    invoke-virtual {v5, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 350
    invoke-virtual {v5, v8}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 351
    invoke-static {v5, v4, v1, v2}, Lkawa/lang/Lambda;->addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V

    :cond_f
    return-void

    .line 203
    :cond_10
    move-object v7, v3

    check-cast v7, Lgnu/lists/Pair;

    .line 204
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    .line 205
    instance-of v14, v10, Lkawa/lang/SyntaxForm;

    if-eqz v14, :cond_11

    .line 207
    check-cast v10, Lkawa/lang/SyntaxForm;

    .line 208
    invoke-interface {v10}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v14

    .line 209
    invoke-interface {v10}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v10

    move-object/from16 v18, v14

    move-object v14, v10

    move-object/from16 v10, v18

    goto :goto_5

    :cond_11
    move-object v14, v4

    .line 211
    :goto_5
    iget-object v15, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    if-eq v10, v15, :cond_2c

    iget-object v15, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    if-eq v10, v15, :cond_2c

    iget-object v15, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    if-ne v10, v15, :cond_12

    goto/16 :goto_e

    .line 217
    :cond_12
    invoke-virtual {v2, v7}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 219
    iget-object v8, v0, Lkawa/lang/Lambda;->defaultDefault:Lgnu/expr/Expression;

    .line 222
    invoke-virtual {v2, v10, v9}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_13

    const-string v1, "\'::\' must follow parameter name"

    .line 224
    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    .line 227
    :cond_13
    invoke-virtual {v2, v10}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 228
    instance-of v12, v10, Lgnu/mapping/Symbol;

    const-string v13, "\'::\' not followed by a type specifier (for parameter \'"

    move-object/from16 p2, v4

    const-string v4, "\')"

    if-eqz v12, :cond_17

    .line 231
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lgnu/lists/Pair;

    if-eqz v12, :cond_15

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/lists/Pair;

    move-object/from16 p4, v8

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8, v9}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 234
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-nez v7, :cond_14

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    .line 240
    :cond_14
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/lists/Pair;

    move-object/from16 v8, p4

    move-object v7, v4

    goto/16 :goto_9

    :cond_15
    move-object/from16 p4, v8

    :cond_16
    move-object/from16 v8, p4

    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_17
    move-object/from16 p4, v8

    .line 245
    instance-of v8, v10, Lgnu/lists/Pair;

    if-eqz v8, :cond_24

    .line 247
    check-cast v10, Lgnu/lists/Pair;

    .line 248
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    .line 249
    instance-of v12, v8, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_18

    .line 251
    check-cast v8, Lkawa/lang/SyntaxForm;

    .line 252
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v12

    .line 253
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v14

    move-object v8, v12

    .line 255
    :cond_18
    invoke-virtual {v2, v8}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 256
    instance-of v12, v8, Lgnu/mapping/Symbol;

    if-eqz v12, :cond_23

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lgnu/lists/Pair;

    if-eqz v12, :cond_23

    .line 260
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/lists/Pair;

    .line 261
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v2, v12, v9}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v17, v7

    const-string v7, "improper list in specifier for parameter \'"

    if-eqz v12, :cond_1c

    .line 263
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lgnu/lists/Pair;

    if-nez v12, :cond_19

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    .line 269
    :cond_19
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/lists/Pair;

    .line 271
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lgnu/lists/Pair;

    if-eqz v12, :cond_1a

    .line 272
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/lists/Pair;

    goto :goto_6

    .line 273
    :cond_1a
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v12, v13, :cond_1b

    const/4 v12, 0x0

    goto :goto_6

    .line 277
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    :cond_1c
    move-object v12, v10

    const/4 v10, 0x0

    :goto_6
    if-eqz v12, :cond_1f

    if-eqz v6, :cond_1f

    .line 284
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 p4, v13

    .line 285
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/lists/Pair;

    if-eqz v13, :cond_1d

    .line 286
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/lists/Pair;

    move-object/from16 v7, p4

    goto :goto_7

    .line 287
    :cond_1d
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v12, v13, :cond_1e

    move-object/from16 v7, p4

    const/4 v4, 0x0

    goto :goto_7

    .line 291
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    :cond_1f
    move-object/from16 v7, p4

    move-object v4, v12

    :goto_7
    if-eqz v4, :cond_21

    const/16 v12, 0x27

    if-eqz v10, :cond_20

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate type specifier for parameter \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    .line 305
    :cond_20
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v10, v13, :cond_22

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "junk at end of specifier for parameter \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " after type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    :cond_21
    move-object v4, v10

    :cond_22
    move-object v10, v8

    move-object v8, v7

    move-object/from16 v7, v17

    goto :goto_9

    :cond_23
    move-object/from16 v17, v7

    move-object/from16 v8, p4

    move-object/from16 v7, v17

    goto :goto_8

    :cond_24
    move-object/from16 v17, v7

    move-object/from16 v8, p4

    :goto_8
    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_9
    if-nez v10, :cond_25

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameter is neither name nor (name :: type) nor (name default): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    .line 319
    :cond_25
    iget-object v12, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    if-eq v6, v12, :cond_27

    iget-object v12, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    if-ne v6, v12, :cond_26

    goto :goto_a

    :cond_26
    move-object/from16 v17, v7

    goto :goto_b

    .line 320
    :cond_27
    :goto_a
    iget-object v12, v1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    add-int/lit8 v13, v11, 0x1

    move-object/from16 v17, v7

    new-instance v7, Lgnu/expr/LangExp;

    invoke-direct {v7, v8}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    aput-object v7, v12, v11

    move v11, v13

    .line 321
    :goto_b
    iget-object v7, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    if-ne v6, v7, :cond_29

    .line 322
    iget-object v7, v1, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    add-int/lit8 v8, v5, 0x1

    instance-of v12, v10, Lgnu/mapping/Symbol;

    if-eqz v12, :cond_28

    move-object v12, v10

    check-cast v12, Lgnu/mapping/Symbol;

    invoke-virtual {v12}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v12

    goto :goto_c

    :cond_28
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_c
    invoke-static {v12}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v12

    aput-object v12, v7, v5

    move v5, v8

    .line 325
    :cond_29
    new-instance v7, Lgnu/expr/Declaration;

    invoke-direct {v7, v10}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 326
    invoke-static {v7, v3}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    if-eqz v4, :cond_2a

    .line 329
    new-instance v3, Lgnu/expr/LangExp;

    invoke-direct {v3, v4}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v3}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    const-wide/16 v3, 0x2000

    .line 330
    invoke-virtual {v7, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_d

    .line 332
    :cond_2a
    iget-object v3, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    if-ne v6, v3, :cond_2b

    .line 333
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v7, v3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    :cond_2b
    :goto_d
    const-wide/32 v3, 0x40000

    .line 334
    invoke-virtual {v7, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    const/4 v8, 0x0

    .line 335
    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 336
    invoke-static {v7, v14, v1, v2}, Lkawa/lang/Lambda;->addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V

    .line 337
    invoke-virtual {v2, v15}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_f

    :cond_2c
    :goto_e
    move-object/from16 p2, v4

    move-object/from16 v17, v7

    move-object v6, v10

    :goto_f
    move-object/from16 v7, v17

    .line 190
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, p2

    goto/16 :goto_4

    .line 94
    :cond_2d
    check-cast v4, Lgnu/lists/Pair;

    .line 96
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    .line 97
    instance-of v13, v8, Lkawa/lang/SyntaxForm;

    if-eqz v13, :cond_2e

    .line 98
    check-cast v8, Lkawa/lang/SyntaxForm;

    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    .line 99
    :cond_2e
    iget-object v13, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    const-string v14, " after "

    const-string v15, " in parameter list"

    if-ne v8, v13, :cond_32

    if-ltz v5, :cond_2f

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    :cond_2f
    if-gez v6, :cond_31

    if-ltz v7, :cond_30

    goto :goto_10

    :cond_30
    const/4 v5, 0x0

    goto/16 :goto_11

    .line 108
    :cond_31
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    .line 113
    :cond_32
    iget-object v13, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    if-ne v8, v13, :cond_35

    if-ltz v6, :cond_33

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    :cond_33
    if-ltz v7, :cond_34

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    :cond_34
    const/4 v6, 0x0

    goto :goto_11

    .line 129
    :cond_35
    iget-object v13, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    if-ne v8, v13, :cond_37

    if-ltz v7, :cond_36

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    :cond_36
    const/4 v7, 0x0

    goto :goto_11

    .line 139
    :cond_37
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8, v9}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/lists/Pair;

    if-eqz v8, :cond_38

    .line 140
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/lists/Pair;

    goto :goto_11

    :cond_38
    if-ltz v7, :cond_39

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_39
    if-ltz v6, :cond_3a

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_3a
    if-ltz v5, :cond_3b

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 148
    :cond_3b
    iget v8, v1, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v8, v12

    iput v8, v1, Lgnu/expr/LambdaExp;->min_args:I

    .line 149
    :goto_11
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    .line 84
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public setKeywords(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    .line 28
    iput-object p3, p0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    return-void
.end method

.method public skipAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 2

    .line 526
    :goto_0
    instance-of p1, p2, Lgnu/lists/Pair;

    if-eqz p1, :cond_3

    .line 528
    move-object p1, p2

    check-cast p1, Lgnu/lists/Pair;

    .line 529
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-nez v0, :cond_0

    goto :goto_2

    .line 531
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "::"

    .line 532
    invoke-virtual {p3, v0, v1}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 534
    :cond_1
    instance-of v0, v0, Lgnu/expr/Keyword;

    if-nez v0, :cond_2

    goto :goto_2

    .line 536
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_3
    :goto_2
    return-object p2
.end method
