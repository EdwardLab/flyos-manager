.class public Lkawa/lang/Quote;
.super Lkawa/lang/Syntax;
.source "Quote.java"


# static fields
.field private static final CYCLE:Ljava/lang/Object;

.field protected static final QUOTE_DEPTH:I = -0x1

.field private static final WORKING:Ljava/lang/Object;

.field static final appendMethod:Lgnu/bytecode/Method;

.field static final consXMethod:Lgnu/bytecode/Method;

.field static final makePairMethod:Lgnu/bytecode/Method;

.field static final makeVectorMethod:Lgnu/bytecode/Method;

.field public static final plainQuote:Lkawa/lang/Quote;

.field public static final quasiQuote:Lkawa/lang/Quote;

.field static final quoteType:Lgnu/bytecode/ClassType;

.field static final vectorAppendMethod:Lgnu/bytecode/Method;


# instance fields
.field protected isQuasi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    new-instance v0, Lkawa/lang/Quote;

    const-string v1, "quote"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/lang/Quote;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    .line 22
    new-instance v0, Lkawa/lang/Quote;

    const-string v1, "quasiquote"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/lang/Quote;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/lang/Quote;->quasiQuote:Lkawa/lang/Quote;

    .line 289
    new-instance v0, Ljava/lang/String;

    const-string v1, "(working)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/lang/Quote;->WORKING:Ljava/lang/Object;

    .line 290
    new-instance v0, Ljava/lang/String;

    const-string v1, "(cycle)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    const-string v0, "kawa.standard.vector_append"

    .line 475
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v1, "apply$V"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->vectorAppendMethod:Lgnu/bytecode/Method;

    const-string v0, "kawa.lang.Quote"

    .line 478
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    const-string v1, "consX$V"

    .line 479
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lkawa/lang/Quote;->consXMethod:Lgnu/bytecode/Method;

    const-string v1, "append$V"

    .line 480
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->appendMethod:Lgnu/bytecode/Method;

    .line 481
    sget-object v0, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    const-string v1, "make"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->makePairMethod:Lgnu/bytecode/Method;

    const-string v0, "gnu.lists.FVector"

    .line 482
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->makeVectorMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 27
    iput-boolean p2, p0, Lkawa/lang/Quote;->isQuasi:Z

    return-void
.end method

.method public static append$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 435
    array-length v0, p0

    if-nez v0, :cond_0

    .line 437
    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 438
    aget-object v1, p0, v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 441
    aget-object v2, p0, v0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 447
    :goto_1
    instance-of v7, v2, Lkawa/lang/SyntaxForm;

    if-eqz v7, :cond_2

    .line 449
    move-object v4, v2

    check-cast v4, Lkawa/lang/SyntaxForm;

    .line 450
    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 452
    :cond_2
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v7, :cond_3

    if-eqz v5, :cond_1

    .line 468
    invoke-virtual {v5, v1}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    move-object v1, v6

    goto :goto_0

    .line 454
    :cond_3
    check-cast v2, Lgnu/lists/Pair;

    .line 455
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    if-eqz v4, :cond_4

    .line 456
    instance-of v8, v7, Lkawa/lang/SyntaxForm;

    if-nez v8, :cond_4

    .line 457
    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v7

    .line 458
    :cond_4
    new-instance v8, Lgnu/lists/Pair;

    invoke-direct {v8, v7, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v5, :cond_5

    move-object v6, v8

    goto :goto_2

    .line 462
    :cond_5
    invoke-virtual {v5, v8}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 464
    :goto_2
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v8

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public static consX$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 429
    invoke-static {p0}, Lgnu/lists/LList;->consX([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .locals 2

    .line 414
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lkawa/lang/Quote;->makeVectorMethod:Lgnu/bytecode/Method;

    invoke-direct {v0, v1, p0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public static makeSymbol(Lgnu/mapping/Namespace;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 1

    .line 79
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 80
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 87
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static quote(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 57
    sget-object v0, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v1

    check-cast v1, Lkawa/lang/Translator;

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static quote(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 2

    .line 50
    sget-object v0, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, p1}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1

    .line 62
    instance-of v0, p1, Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/expr/Expression;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    .line 305
    move-object/from16 v11, p4

    check-cast v11, Ljava/util/IdentityHashMap;

    .line 306
    invoke-virtual {v11, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 307
    sget-object v1, Lkawa/lang/Quote;->WORKING:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 309
    sget-object v1, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    invoke-virtual {v11, v7, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 312
    :cond_0
    sget-object v1, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    .line 320
    :cond_2
    instance-of v0, v7, Lgnu/lists/Pair;

    if-eqz v0, :cond_3

    .line 321
    move-object v1, v7

    check-cast v1, Lgnu/lists/Pair;

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand_pair(Lgnu/lists/Pair;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_8

    .line 322
    :cond_3
    instance-of v0, v7, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_4

    .line 324
    move-object v3, v7

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 325
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_8

    .line 327
    :cond_4
    instance-of v0, v7, Lgnu/lists/FVector;

    if-eqz v0, :cond_14

    .line 329
    move-object v12, v7

    check-cast v12, Lgnu/lists/FVector;

    .line 330
    invoke-virtual {v12}, Lgnu/lists/FVector;->size()I

    move-result v13

    .line 331
    new-array v14, v13, [Ljava/lang/Object;

    .line 337
    new-array v15, v13, [B

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v13, :cond_c

    .line 341
    invoke-virtual {v12, v5}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 344
    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    if-le v8, v2, :cond_8

    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    const-string v0, "unquote-splicing"

    invoke-virtual {v10, v3, v9, v0}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v0, v8, -0x1

    if-nez v0, :cond_7

    .line 350
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v3, :cond_5

    goto :goto_1

    .line 354
    :cond_5
    invoke-virtual {v10, v0, v9}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v0

    aput-object v0, v14, v5

    const/4 v0, 0x3

    .line 355
    aput-byte v0, v15, v5

    move/from16 v18, v4

    move/from16 v17, v5

    goto :goto_3

    .line 352
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid used of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in quasiquote template"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_7
    move v2, v0

    goto :goto_2

    :cond_8
    move v2, v8

    :goto_2
    move-object/from16 v0, p0

    move-object v3, v1

    const/4 v8, 0x1

    move-object v8, v3

    const/4 v9, 0x2

    move-object/from16 v3, p3

    move/from16 v18, v4

    move-object/from16 v4, p4

    move/from16 v17, v5

    move-object/from16 v5, p5

    .line 359
    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v14, v17

    if-ne v0, v8, :cond_9

    .line 361
    aput-byte v16, v15, v17

    goto :goto_3

    .line 362
    :cond_9
    instance-of v0, v0, Lgnu/expr/Expression;

    if-eqz v0, :cond_a

    .line 363
    aput-byte v9, v15, v17

    goto :goto_3

    :cond_a
    const/4 v0, 0x1

    .line 365
    aput-byte v0, v15, v17

    .line 367
    :goto_3
    aget-byte v4, v15, v17

    move/from16 v1, v18

    if-le v4, v1, :cond_b

    goto :goto_4

    :cond_b
    move v4, v1

    :goto_4
    add-int/lit8 v5, v17, 0x1

    move/from16 v8, p2

    move-object/from16 v9, p3

    goto/16 :goto_0

    :cond_c
    move v1, v4

    const/4 v0, 0x1

    const/4 v9, 0x2

    if-nez v1, :cond_d

    move-object v0, v12

    goto :goto_8

    :cond_d
    if-ne v1, v0, :cond_e

    .line 373
    new-instance v0, Lgnu/lists/FVector;

    invoke-direct {v0, v14}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    goto :goto_8

    .line 376
    :cond_e
    new-array v0, v13, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v13, :cond_12

    .line 379
    aget-byte v3, v15, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    .line 380
    aget-object v3, v14, v2

    check-cast v3, Lgnu/expr/Expression;

    aput-object v3, v0, v2

    :goto_6
    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    if-ge v1, v4, :cond_10

    .line 382
    aget-object v3, v14, v2

    invoke-virtual {v6, v3, v10}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_6

    :cond_10
    if-ge v3, v9, :cond_11

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 386
    aget-object v5, v14, v2

    aput-object v5, v4, v16

    .line 387
    new-instance v5, Lgnu/lists/FVector;

    invoke-direct {v5, v4}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v6, v5, v10}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_7

    :cond_11
    const/4 v3, 0x1

    new-array v4, v3, [Lgnu/expr/Expression;

    .line 392
    aget-object v5, v14, v2

    check-cast v5, Lgnu/expr/Expression;

    aput-object v5, v4, v16

    .line 393
    invoke-static {v4}, Lkawa/lang/Quote;->makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v4

    aput-object v4, v0, v2

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    const/4 v2, 0x3

    if-ge v1, v2, :cond_13

    .line 397
    invoke-static {v0}, Lkawa/lang/Quote;->makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v0

    goto :goto_8

    .line 399
    :cond_13
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lkawa/lang/Quote;->vectorAppendMethod:Lgnu/bytecode/Method;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v0, v1

    goto :goto_8

    :cond_14
    move-object v0, v7

    :goto_8
    if-eq v7, v0, :cond_15

    .line 405
    invoke-virtual {v11, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    if-ne v1, v2, :cond_15

    const/16 v1, 0x65

    const-string v2, "cycle in non-literal data"

    .line 406
    invoke-virtual {v10, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 407
    :cond_15
    invoke-virtual {v11, v7, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;
    .locals 6

    .line 39
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 43
    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected expandColonForms()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method expand_pair(Lgnu/lists/Pair;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v0, p2

    move-object v10, v7

    .line 107
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Quote;->expandColonForms()Z

    move-result v1

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_4

    if-ne v10, v7, :cond_4

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    invoke-virtual {v9, v1, v8, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/mapping/Symbol;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/lists/Pair;

    if-eqz v1, :cond_4

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    instance-of v3, v2, Lgnu/lists/Pair;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v4, :cond_4

    .line 115
    invoke-virtual {v9, v1, v13}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v3

    .line 116
    invoke-virtual {v9, v2, v13}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v2

    .line 117
    invoke-virtual {v9, v3}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object v4

    .line 118
    invoke-virtual {v9, v4, v2}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v5

    if-eqz v5, :cond_0

    goto/16 :goto_8

    :cond_0
    if-eqz v4, :cond_1

    if-ne v0, v14, :cond_1

    .line 123
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v0, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    const-string v1, "makeSymbol"

    invoke-virtual {v0, v1, v12}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    new-array v1, v12, [Lgnu/expr/Expression;

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    aput-object v3, v1, v13

    aput-object v2, v1, v14

    invoke-direct {v5, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto/16 :goto_8

    .line 126
    :cond_1
    instance-of v0, v3, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_2

    instance-of v0, v2, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual/range {p5 .. p5}, Lkawa/lang/Translator;->getGlobalEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v3, Lgnu/expr/ReferenceExp;

    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    goto/16 :goto_8

    .line 129
    :cond_2
    invoke-static {v3, v2}, Lgnu/kawa/functions/CompileNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual/range {p5 .. p5}, Lkawa/lang/Translator;->getGlobalEnvironment()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    goto/16 :goto_8

    .line 133
    :cond_3
    invoke-virtual {v9, v10}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x65

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid prefix"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 135
    invoke-virtual {v9, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_4
    const-string v1, "unquote-splicing"

    const-string v2, "unquote"

    if-gez v0, :cond_5

    goto/16 :goto_2

    .line 143
    :cond_5
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "quasiquote"

    invoke-virtual {v9, v3, v8, v4}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 145
    :cond_6
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v3, v8, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v3

    const-string v4, " in quasiquote template"

    const-string v5, "invalid used of "

    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, -0x1

    .line 149
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-eqz v3, :cond_8

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/Pair;

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v15, v11, :cond_7

    goto :goto_1

    :cond_7
    if-nez v0, :cond_a

    .line 155
    invoke-virtual {v9, v3, v8}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v5

    goto/16 :goto_8

    .line 151
    :cond_8
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 159
    :cond_9
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v3, v8, v1}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_a
    :goto_2
    move v11, v0

    if-ne v11, v14, :cond_13

    .line 162
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_13

    .line 164
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v8

    .line 166
    :goto_3
    instance-of v4, v0, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_b

    .line 168
    move-object v3, v0

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 169
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 172
    :cond_b
    instance-of v4, v0, Lgnu/lists/Pair;

    if-eqz v4, :cond_d

    .line 174
    move-object v4, v0

    check-cast v4, Lgnu/lists/Pair;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    .line 175
    invoke-virtual {v9, v4, v3, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v15, 0x0

    goto :goto_4

    .line 177
    :cond_c
    invoke-virtual {v9, v4, v3, v1}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v15, 0x1

    goto :goto_4

    :cond_d
    const/4 v15, -0x1

    :goto_4
    if-ltz v15, :cond_13

    .line 182
    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 183
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 189
    :goto_5
    instance-of v1, v0, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_e

    .line 191
    check-cast v0, Lkawa/lang/SyntaxForm;

    .line 192
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v0

    move-object v0, v1

    .line 194
    :cond_e
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v1, :cond_11

    .line 204
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 205
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v8, v5

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    if-le v8, v14, :cond_10

    .line 208
    new-array v1, v8, [Lgnu/expr/Expression;

    .line 209
    invoke-virtual {v11, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    add-int/lit8 v5, v8, -0x1

    .line 210
    invoke-virtual {v6, v0, v9}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    aput-object v0, v1, v5

    if-nez v15, :cond_f

    .line 211
    sget-object v0, Lkawa/lang/Quote;->consXMethod:Lgnu/bytecode/Method;

    goto :goto_6

    :cond_f
    sget-object v0, Lkawa/lang/Quote;->appendMethod:Lgnu/bytecode/Method;

    .line 212
    :goto_6
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v5, v2

    goto/16 :goto_8

    :cond_10
    move-object v5, v0

    goto/16 :goto_8

    .line 196
    :cond_11
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_12

    .line 198
    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v9, v0, v3}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_12
    const-string v0, "improper list argument to unquote"

    .line 202
    invoke-virtual {v9, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 218
    :cond_13
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    move v2, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v15

    .line 219
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    if-ne v15, v0, :cond_15

    .line 221
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .line 222
    instance-of v0, v10, Lgnu/lists/Pair;

    if-eqz v0, :cond_14

    .line 224
    check-cast v10, Lgnu/lists/Pair;

    move v0, v11

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 227
    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_8

    .line 230
    :cond_15
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    move v2, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    instance-of v1, v15, Lgnu/expr/Expression;

    if-nez v1, :cond_17

    instance-of v1, v0, Lgnu/expr/Expression;

    if-eqz v1, :cond_16

    goto :goto_7

    .line 239
    :cond_16
    invoke-static {v10, v15, v0}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    goto :goto_8

    :cond_17
    :goto_7
    new-array v1, v12, [Lgnu/expr/Expression;

    .line 234
    invoke-virtual {v6, v15, v9}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v2

    aput-object v2, v1, v13

    .line 235
    invoke-virtual {v6, v0, v9}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    aput-object v0, v1, v14

    .line 236
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v0, Lkawa/lang/Quote;->makePairMethod:Lgnu/bytecode/Method;

    invoke-direct {v5, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    :goto_8
    if-ne v7, v10, :cond_18

    return-object v5

    :cond_18
    const/16 v0, 0x14

    new-array v0, v0, [Lgnu/lists/Pair;

    move-object v2, v7

    const/4 v1, 0x0

    .line 252
    :goto_9
    array-length v3, v0

    if-lt v1, v3, :cond_19

    mul-int/lit8 v3, v1, 0x2

    .line 254
    new-array v3, v3, [Lgnu/lists/Pair;

    .line 255
    invoke-static {v0, v13, v3, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    :cond_19
    add-int/lit8 v3, v1, 0x1

    .line 258
    aput-object v2, v0, v1

    .line 259
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_1e

    .line 263
    instance-of v1, v5, Lgnu/expr/Expression;

    if-eqz v1, :cond_1a

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_a

    :cond_1a
    move-object v2, v5

    :goto_a
    const/4 v4, -0x1

    :goto_b
    add-int/2addr v3, v4

    if-ltz v3, :cond_1b

    .line 266
    aget-object v8, v0, v3

    .line 267
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v10, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    goto :goto_b

    :cond_1b
    if-eqz v1, :cond_1d

    new-array v0, v12, [Lgnu/expr/Expression;

    .line 273
    check-cast v5, Lgnu/expr/Expression;

    aput-object v5, v0, v14

    if-ne v3, v14, :cond_1c

    .line 277
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1, v9}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v1

    aput-object v1, v0, v13

    .line 278
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lkawa/lang/Quote;->makePairMethod:Lgnu/bytecode/Method;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v1

    .line 282
    :cond_1c
    invoke-virtual {v6, v2, v9}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v1

    aput-object v1, v0, v13

    .line 283
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lkawa/lang/Quote;->appendMethod:Lgnu/bytecode/Method;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v1

    :cond_1d
    return-object v2

    :cond_1e
    const/4 v4, -0x1

    .line 261
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    move v1, v3

    goto :goto_9
.end method

.method protected leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    .line 67
    new-instance p2, Lgnu/expr/QuoteExp;

    invoke-direct {p2, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 2

    .line 420
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_2

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 423
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    iget-boolean v0, p0, Lkawa/lang/Quote;->isQuasi:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const-string p1, "wrong number of arguments to quote"

    .line 422
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
