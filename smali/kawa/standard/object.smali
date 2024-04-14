.class public Lkawa/standard/object;
.super Lkawa/lang/Syntax;
.source "object.java"


# static fields
.field public static final accessKeyword:Lgnu/expr/Keyword;

.field public static final allocationKeyword:Lgnu/expr/Keyword;

.field public static final classNameKeyword:Lgnu/expr/Keyword;

.field static final coloncolon:Lgnu/mapping/Symbol;

.field static final initKeyword:Lgnu/expr/Keyword;

.field static final init_formKeyword:Lgnu/expr/Keyword;

.field static final init_keywordKeyword:Lgnu/expr/Keyword;

.field static final init_valueKeyword:Lgnu/expr/Keyword;

.field static final initformKeyword:Lgnu/expr/Keyword;

.field public static final interfaceKeyword:Lgnu/expr/Keyword;

.field public static final objectSyntax:Lkawa/standard/object;

.field public static final throwsKeyword:Lgnu/expr/Keyword;

.field static final typeKeyword:Lgnu/expr/Keyword;


# instance fields
.field lambda:Lkawa/lang/Lambda;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lkawa/standard/object;

    sget-object v1, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    invoke-direct {v0, v1}, Lkawa/standard/object;-><init>(Lkawa/lang/Lambda;)V

    sput-object v0, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    const-string v1, "object"

    .line 15
    invoke-virtual {v0, v1}, Lkawa/standard/object;->setName(Ljava/lang/String;)V

    const-string v0, "access"

    .line 18
    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    const-string v0, "class-name"

    .line 19
    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->classNameKeyword:Lgnu/expr/Keyword;

    const-string v0, "interface"

    .line 20
    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->interfaceKeyword:Lgnu/expr/Keyword;

    const-string v0, "throws"

    .line 21
    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->throwsKeyword:Lgnu/expr/Keyword;

    const-string v0, "type"

    .line 22
    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    const-string v0, "allocation"

    .line 23
    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    const-string v0, "init"

    .line 24
    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    const-string v0, "initform"

    .line 25
    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    const-string v0, "init-form"

    .line 26
    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    const-string v0, "init-value"

    .line 27
    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    const-string v0, "init-keyword"

    .line 28
    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_keywordKeyword:Lgnu/expr/Keyword;

    .line 30
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lkawa/lang/Lambda;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 34
    iput-object p1, p0, Lkawa/standard/object;->lambda:Lkawa/lang/Lambda;

    return-void
.end method

.method static addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J
    .locals 6

    .line 625
    invoke-static {p0, p6}, Lkawa/standard/object;->matchAccess(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v0

    const/16 v2, 0x65

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 627
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unknown access specifier "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, v2, p0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_0

    :cond_0
    not-long p3, p3

    and-long/2addr p3, v0

    cmp-long v5, p3, v3

    if-eqz v5, :cond_1

    .line 629
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " access specifier "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, v2, p0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_0

    :cond_1
    and-long p3, p1, v0

    cmp-long v2, p3, v3

    if-eqz v2, :cond_2

    const/16 p3, 0x77

    .line 631
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " access specifiers "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p3, p0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :cond_2
    :goto_0
    or-long p0, p1, v0

    return-wide p0
.end method

.method static matchAccess(Ljava/lang/Object;Lkawa/lang/Translator;)J
    .locals 1

    .line 637
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 638
    check-cast p0, Lkawa/lang/SyntaxForm;

    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 639
    :cond_0
    instance-of v0, p0, Lgnu/lists/Pair;

    if-eqz v0, :cond_1

    .line 641
    check-cast p0, Lgnu/lists/Pair;

    .line 642
    invoke-virtual {p1, p0}, Lkawa/lang/Translator;->matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;

    move-result-object p0

    .line 643
    instance-of v0, p0, Lgnu/lists/Pair;

    if-eqz v0, :cond_1

    .line 644
    check-cast p0, Lgnu/lists/Pair;

    invoke-static {p0, p1}, Lkawa/standard/object;->matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J

    move-result-wide p0

    return-wide p0

    .line 646
    :cond_1
    invoke-static {p0, p1}, Lkawa/standard/object;->matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J
    .locals 0

    .line 666
    instance-of p1, p0, Lgnu/expr/Keyword;

    if-eqz p1, :cond_0

    .line 667
    check-cast p0, Lgnu/expr/Keyword;

    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 668
    :cond_0
    instance-of p1, p0, Lgnu/lists/FString;

    if-eqz p1, :cond_1

    .line 669
    check-cast p0, Lgnu/lists/FString;

    invoke-virtual {p0}, Lgnu/lists/FString;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 670
    :cond_1
    instance-of p1, p0, Lgnu/mapping/SimpleSymbol;

    if-eqz p1, :cond_2

    .line 671
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    const-string p1, "private"

    .line 672
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/32 p0, 0x1000000

    return-wide p0

    :cond_3
    const-string p1, "protected"

    .line 674
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-wide/32 p0, 0x2000000

    return-wide p0

    :cond_4
    const-string p1, "public"

    .line 676
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-wide/32 p0, 0x4000000

    return-wide p0

    :cond_5
    const-string p1, "package"

    .line 678
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-wide/32 p0, 0x8000000

    return-wide p0

    :cond_6
    const-string p1, "volatile"

    .line 680
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-wide p0, 0x80000000L

    return-wide p0

    :cond_7
    const-string p1, "transient"

    .line 682
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-wide p0, 0x100000000L

    return-wide p0

    :cond_8
    const-string p1, "enum"

    .line 684
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-wide p0, 0x200000000L

    return-wide p0

    :cond_9
    const-string p1, "final"

    .line 686
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-wide p0, 0x400000000L

    return-wide p0

    :cond_a
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J
    .locals 5

    .line 651
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkawa/standard/object;->matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v0

    .line 652
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .line 653
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p0, v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    instance-of v4, p0, Lgnu/lists/Pair;

    if-eqz v4, :cond_1

    .line 657
    check-cast p0, Lgnu/lists/Pair;

    invoke-static {p0, p1}, Lkawa/standard/object;->matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J

    move-result-wide p0

    cmp-long v4, p0, v2

    if-eqz v4, :cond_1

    or-long/2addr p0, v0

    return-wide p0

    :cond_1
    return-wide v2

    :cond_2
    :goto_0
    return-wide v0
.end method

.method static matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z
    .locals 2

    .line 610
    instance-of v0, p0, Lgnu/expr/Keyword;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 611
    check-cast p0, Lgnu/expr/Keyword;

    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 612
    :cond_0
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_1

    .line 613
    check-cast p0, Lgnu/lists/FString;

    invoke-virtual {p0}, Lgnu/lists/FString;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 614
    :cond_1
    instance-of v0, p0, Lgnu/lists/Pair;

    if-eqz v0, :cond_3

    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual {p2, p0}, Lkawa/lang/Translator;->matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lgnu/mapping/SimpleSymbol;

    if-eqz p2, :cond_3

    .line 616
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p1, :cond_2

    .line 619
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private static rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V
    .locals 6

    .line 558
    instance-of v0, p0, Lgnu/expr/Declaration;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v2, p0

    check-cast v2, Lgnu/expr/Declaration;

    const-wide/16 v3, 0x800

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 561
    iget-object v3, p1, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    :goto_1
    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 564
    new-instance v3, Lgnu/expr/LambdaExp;

    new-instance v5, Lgnu/expr/BeginExp;

    invoke-direct {v5}, Lgnu/expr/BeginExp;-><init>()V

    invoke-direct {v3, v5}, Lgnu/expr/LambdaExp;-><init>(Lgnu/expr/Expression;)V

    .line 565
    invoke-virtual {v3, v1}, Lgnu/expr/LambdaExp;->setClassMethod(Z)V

    .line 566
    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v3, v1}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    if-eqz v2, :cond_3

    const-string v1, "$clinit$"

    .line 569
    invoke-virtual {v3, v1}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 570
    iput-object v3, p1, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    goto :goto_2

    :cond_3
    const-string v1, "$finit$"

    .line 574
    invoke-virtual {v3, v1}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 575
    iput-object v3, p1, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    .line 578
    new-instance v1, Lgnu/expr/Declaration;

    sget-object v2, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v1}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 580
    :goto_2
    iget-object v1, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v1, v3, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 581
    iput-object v3, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 583
    :cond_4
    invoke-virtual {p3, v3}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 584
    iget-object p1, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 585
    iput-object v3, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 586
    invoke-virtual {p3, p2, p4}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object p2

    if-eqz v0, :cond_5

    .line 589
    check-cast p0, Lgnu/expr/Declaration;

    .line 590
    new-instance p4, Lgnu/expr/SetExp;

    invoke-direct {p4, p0, p2}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 591
    invoke-virtual {p4, p0}, Lgnu/expr/SetExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 592
    invoke-virtual {p0, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    goto :goto_3

    .line 596
    :cond_5
    new-instance p0, Lgnu/expr/QuoteExp;

    sget-object p4, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-direct {p0, p4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object p4

    .line 597
    :goto_3
    iget-object p0, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    check-cast p0, Lgnu/expr/BeginExp;

    invoke-virtual {p0, p4}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 598
    iput-object p1, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 599
    invoke-virtual {p3, v3}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    return-void
.end method


# virtual methods
.method public rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 19

    move-object/from16 v7, p2

    const/4 v0, 0x0

    .line 326
    aget-object v1, p1, v0

    move-object v8, v1

    check-cast v8, Lgnu/expr/ClassExp;

    const/4 v1, 0x1

    .line 327
    aget-object v1, p1, v1

    const/4 v2, 0x2

    .line 328
    aget-object v2, p1, v2

    move-object v9, v2

    check-cast v9, Ljava/util/Vector;

    const/4 v2, 0x3

    .line 329
    aget-object v2, p1, v2

    check-cast v2, Lgnu/expr/LambdaExp;

    const/4 v3, 0x4

    .line 330
    aget-object v3, p1, v3

    const/4 v4, 0x5

    .line 331
    aget-object v4, p1, v4

    .line 332
    iput-object v2, v8, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 334
    invoke-static {v3}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v5

    const/16 v6, 0x65

    if-gez v5, :cond_0

    const-string v5, "object superclass specification not a list"

    .line 337
    invoke-virtual {v7, v6, v5}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    const/4 v5, 0x0

    .line 340
    :cond_0
    new-array v10, v5, [Lgnu/expr/Expression;

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v5, :cond_3

    .line 343
    :goto_1
    instance-of v12, v3, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_1

    .line 346
    check-cast v3, Lkawa/lang/SyntaxForm;

    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 348
    :cond_1
    check-cast v3, Lgnu/lists/Pair;

    .line 349
    invoke-virtual {v7, v3, v0}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v12

    aput-object v12, v10, v11

    .line 350
    instance-of v13, v12, Lgnu/expr/ReferenceExp;

    if-eqz v13, :cond_2

    .line 352
    check-cast v12, Lgnu/expr/ReferenceExp;

    invoke-virtual {v12}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v12

    invoke-static {v12}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 354
    invoke-virtual {v12}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v12

    instance-of v13, v12, Lgnu/expr/ClassExp;

    if-eqz v13, :cond_2

    .line 355
    check-cast v12, Lgnu/expr/ClassExp;

    const/high16 v13, 0x20000

    invoke-virtual {v12, v13}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 357
    :cond_2
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_5

    .line 362
    move-object v3, v4

    check-cast v3, Lgnu/lists/Pair;

    invoke-virtual {v7, v3, v0}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v3

    .line 363
    invoke-virtual {v3}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v3

    .line 367
    instance-of v5, v3, Ljava/lang/CharSequence;

    if-eqz v5, :cond_4

    .line 371
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 373
    iput-object v3, v8, Lgnu/expr/ClassExp;->classNameSpecifier:Ljava/lang/String;

    goto :goto_2

    .line 376
    :cond_4
    invoke-virtual {v7, v4}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "class-name specifier must be a non-empty string literal"

    .line 377
    invoke-virtual {v7, v6, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 378
    invoke-virtual {v7, v3}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 381
    :cond_5
    :goto_2
    iput-object v10, v8, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    .line 383
    invoke-virtual {v8, v7}, Lgnu/expr/ClassExp;->setTypes(Lgnu/expr/Compilation;)V

    .line 387
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    const/4 v10, 0x0

    if-ge v4, v3, :cond_7

    add-int/lit8 v5, v4, 0x1

    .line 390
    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 392
    invoke-virtual {v9, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v5, Lgnu/lists/Pair;

    invoke-static {v6, v8, v5, v7, v10}, Lkawa/standard/object;->rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V

    :cond_6
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 395
    :cond_7
    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    move-object v11, v2

    move-object v2, v10

    const/4 v12, 0x0

    .line 401
    :goto_4
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v3, :cond_22

    move-object v13, v2

    .line 403
    :goto_5
    instance-of v2, v1, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_8

    .line 405
    move-object v13, v1

    check-cast v13, Lkawa/lang/SyntaxForm;

    .line 406
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    .line 408
    :cond_8
    check-cast v1, Lgnu/lists/Pair;

    .line 409
    invoke-virtual {v7, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 410
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v13

    .line 412
    :goto_6
    instance-of v3, v2, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_9

    .line 414
    move-object v15, v2

    check-cast v15, Lkawa/lang/SyntaxForm;

    .line 415
    invoke-interface {v15}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    .line 419
    :cond_9
    :try_start_0
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    .line 420
    instance-of v1, v2, Lgnu/expr/Keyword;

    if-eqz v1, :cond_a

    instance-of v1, v6, Lgnu/lists/Pair;

    if-eqz v1, :cond_a

    .line 424
    check-cast v6, Lgnu/lists/Pair;

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    invoke-virtual {v7, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v2, v13

    goto :goto_4

    .line 427
    :cond_a
    :try_start_1
    check-cast v2, Lgnu/lists/Pair;

    .line 428
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v15

    .line 430
    :goto_7
    instance-of v4, v1, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_b

    .line 432
    move-object v3, v1

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 433
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    .line 435
    :cond_b
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_13

    instance-of v4, v1, Lgnu/mapping/Symbol;

    if-nez v4, :cond_13

    instance-of v4, v1, Lgnu/expr/Keyword;

    if-eqz v4, :cond_c

    goto/16 :goto_9

    .line 511
    :cond_c
    instance-of v4, v1, Lgnu/lists/Pair;

    if-eqz v4, :cond_12

    .line 513
    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v5

    if-eqz v15, :cond_d

    .line 519
    invoke-interface {v15}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v4

    invoke-virtual {v7, v4}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    :cond_d
    const-string v4, "*init*"

    .line 520
    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 521
    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v11, v0}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    .line 522
    :cond_e
    invoke-static {v11, v2}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 523
    iget-object v0, v7, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 524
    iput-object v11, v7, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v4, p0

    .line 525
    iget-object v10, v4, Lkawa/standard/object;->lambda:Lkawa/lang/Lambda;

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    if-eqz v3, :cond_10

    if-eqz v15, :cond_f

    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    invoke-interface {v15}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v2

    if-eq v1, v2, :cond_10

    :cond_f
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_8

    :cond_10
    const/16 v18, 0x0

    :goto_8
    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object v10, v5

    move-object/from16 v5, p2

    move-object/from16 v16, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 531
    iput-object v0, v7, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    if-eqz v15, :cond_11

    .line 533
    invoke-virtual {v7, v10}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 534
    :cond_11
    iget-object v0, v11, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    move-object v11, v0

    goto/16 :goto_13

    :cond_12
    move-object/from16 v16, v6

    const-string v0, "invalid field/method definition"

    .line 537
    invoke-virtual {v7, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_13

    :cond_13
    :goto_9
    move-object/from16 v16, v6

    .line 440
    instance-of v0, v1, Lgnu/expr/Keyword;

    if-eqz v0, :cond_14

    goto :goto_a

    :cond_14
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    :goto_a
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 443
    :goto_b
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v5, :cond_1e

    .line 445
    :goto_c
    instance-of v5, v2, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_15

    .line 447
    move-object v15, v2

    check-cast v15, Lkawa/lang/SyntaxForm;

    .line 448
    invoke-interface {v15}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_c

    .line 450
    :cond_15
    check-cast v2, Lgnu/lists/Pair;

    .line 451
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    .line 452
    :goto_d
    instance-of v6, v5, Lkawa/lang/SyntaxForm;

    if-eqz v6, :cond_16

    .line 453
    check-cast v5, Lkawa/lang/SyntaxForm;

    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    goto :goto_d

    .line 454
    :cond_16
    invoke-virtual {v7, v2}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 455
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v2

    .line 456
    sget-object v2, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    if-eq v5, v2, :cond_17

    move-object/from16 v18, v11

    instance-of v11, v5, Lgnu/expr/Keyword;

    if-eqz v11, :cond_1c

    goto :goto_e

    :cond_17
    move-object/from16 v18, v11

    :goto_e
    instance-of v11, v10, Lgnu/lists/Pair;

    if-eqz v11, :cond_1c

    add-int/lit8 v0, v0, 0x1

    .line 460
    check-cast v10, Lgnu/lists/Pair;

    .line 461
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    .line 462
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    if-eq v5, v2, :cond_1a

    .line 463
    sget-object v2, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    if-ne v5, v2, :cond_18

    goto :goto_f

    .line 465
    :cond_18
    sget-object v2, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    if-eq v5, v2, :cond_19

    sget-object v2, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    if-eq v5, v2, :cond_19

    sget-object v2, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    if-eq v5, v2, :cond_19

    sget-object v2, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    if-ne v5, v2, :cond_1b

    :cond_19
    move-object v1, v10

    move-object v3, v15

    goto :goto_10

    :cond_1a
    :goto_f
    move-object v4, v11

    :cond_1b
    :goto_10
    move-object/from16 v2, v17

    goto :goto_11

    .line 478
    :cond_1c
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v10, v2, :cond_1d

    if-nez v1, :cond_1d

    move-object v2, v10

    move-object v3, v15

    move-object/from16 v1, v17

    goto :goto_11

    .line 484
    :cond_1d
    instance-of v2, v10, Lgnu/lists/Pair;

    if-eqz v2, :cond_1f

    if-nez v0, :cond_1f

    if-nez v1, :cond_1f

    if-nez v4, :cond_1f

    check-cast v10, Lgnu/lists/Pair;

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v4, :cond_1f

    .line 492
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    move-object v4, v5

    move-object v1, v10

    move-object v3, v15

    .line 499
    :goto_11
    invoke-virtual {v7, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v11, v18

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v18, v11

    :cond_1f
    if-eqz v1, :cond_21

    add-int/lit8 v0, v12, 0x1

    .line 503
    invoke-virtual {v9, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 504
    instance-of v4, v2, Lgnu/expr/Declaration;

    if-eqz v4, :cond_20

    move-object v4, v2

    check-cast v4, Lgnu/expr/Declaration;

    const-wide/16 v5, 0x800

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    goto :goto_12

    :cond_20
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_12
    add-int/lit8 v12, v0, 0x1

    .line 507
    invoke-virtual {v9, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    .line 508
    invoke-static {v2, v8, v1, v7, v3}, Lkawa/standard/object;->rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_21
    move-object/from16 v11, v18

    .line 541
    :goto_13
    invoke-virtual {v7, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v2, v13

    move-object/from16 v1, v16

    const/4 v0, 0x0

    const/4 v10, 0x0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v7, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v0

    .line 547
    :cond_22
    iget-object v0, v8, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_23

    .line 548
    iget-object v0, v8, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    iput-object v8, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 549
    :cond_23
    iget-object v0, v8, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_24

    .line 550
    iget-object v0, v8, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    iput-object v8, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 551
    :cond_24
    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 552
    invoke-virtual {v8, v7}, Lgnu/expr/ClassExp;->declareParts(Lgnu/expr/Compilation;)V

    return-void
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 2

    .line 39
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-nez v0, :cond_0

    const-string p1, "missing superclass specification in object"

    .line 40
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    .line 42
    new-instance v0, Lgnu/expr/ObjectExp;

    invoke-direct {v0}, Lgnu/expr/ObjectExp;-><init>()V

    .line 43
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/lists/FString;

    if-eqz v1, :cond_2

    .line 46
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/lists/Pair;

    if-nez v1, :cond_1

    const-string p1, "missing superclass specification after object class name"

    .line 47
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 48
    :cond_1
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    .line 50
    :cond_2
    invoke-virtual {p0, p1, v0, p2}, Lkawa/standard/object;->scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 52
    invoke-virtual {p0, p1, p2}, Lkawa/standard/object;->rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V

    :cond_3
    return-object v0
.end method

.method public scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;
    .locals 34

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    .line 61
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 62
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 63
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .line 69
    new-instance v11, Ljava/util/Vector;

    const/16 v1, 0x14

    invoke-direct {v11, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v14, 0x0

    move-object v1, v10

    move-object v4, v14

    move-object v15, v4

    move-object/from16 v16, v15

    const-wide/16 v6, 0x0

    .line 70
    :goto_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v2, :cond_34

    .line 74
    :goto_1
    instance-of v2, v1, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_0

    .line 75
    check-cast v1, Lkawa/lang/SyntaxForm;

    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 76
    :cond_0
    instance-of v2, v1, Lgnu/lists/Pair;

    const-string v3, "object member not a list"

    const/16 v12, 0x65

    if-nez v2, :cond_1

    .line 78
    invoke-virtual {v8, v12, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    return-object v14

    .line 81
    :cond_1
    check-cast v1, Lgnu/lists/Pair;

    .line 82
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 83
    :goto_2
    instance-of v13, v2, Lkawa/lang/SyntaxForm;

    if-eqz v13, :cond_2

    .line 84
    check-cast v2, Lkawa/lang/SyntaxForm;

    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    .line 86
    invoke-virtual {v8, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    instance-of v5, v2, Lgnu/expr/Keyword;

    if-eqz v5, :cond_9

    .line 89
    :goto_3
    instance-of v5, v13, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_3

    .line 90
    check-cast v13, Lkawa/lang/SyntaxForm;

    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v13

    goto :goto_3

    .line 91
    :cond_3
    instance-of v5, v13, Lgnu/lists/Pair;

    if-eqz v5, :cond_9

    .line 93
    sget-object v5, Lkawa/standard/object;->interfaceKeyword:Lgnu/expr/Keyword;

    if-ne v2, v5, :cond_5

    .line 95
    check-cast v13, Lgnu/lists/Pair;

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 96
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_4

    const/high16 v2, 0x10000

    .line 97
    invoke-virtual {v0, v2}, Lgnu/expr/ClassExp;->setFlag(I)V

    goto :goto_4

    :cond_4
    const v2, 0x8000

    .line 99
    invoke-virtual {v0, v2}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 100
    :goto_4
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 101
    invoke-virtual {v8, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_0

    .line 104
    :cond_5
    sget-object v5, Lkawa/standard/object;->classNameKeyword:Lgnu/expr/Keyword;

    if-ne v2, v5, :cond_7

    if-eqz v15, :cond_6

    const-string v2, "duplicate class-name specifiers"

    .line 107
    invoke-virtual {v8, v12, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 109
    :cond_6
    move-object v2, v13

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 110
    invoke-virtual {v8, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v1, v2

    move-object v15, v13

    goto/16 :goto_0

    .line 113
    :cond_7
    sget-object v5, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    if-ne v2, v5, :cond_9

    .line 115
    invoke-virtual {v8, v13}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 116
    check-cast v13, Lgnu/lists/Pair;

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    const-wide v17, 0x603000000L

    const-string v19, "class"

    move-object v3, v1

    move-object v1, v2

    move-object v14, v3

    move-wide v2, v6

    move-object v7, v4

    move-object v6, v5

    move-wide/from16 v4, v17

    move-object/from16 v20, v6

    move-object/from16 v6, v19

    move-object/from16 v21, v7

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Lkawa/standard/object;->addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J

    move-result-wide v6

    .line 120
    iget-object v1, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v1, :cond_8

    const-string v1, "access specifier for anonymous class"

    .line 121
    invoke-virtual {v8, v12, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :cond_8
    move-object/from16 v1, v20

    .line 122
    invoke-virtual {v8, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 124
    invoke-virtual {v8, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v4, v21

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_9
    move-object v14, v1

    move-object/from16 v21, v4

    .line 129
    instance-of v1, v2, Lgnu/lists/Pair;

    if-nez v1, :cond_a

    .line 131
    invoke-virtual {v8, v12, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :goto_5
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_a
    check-cast v2, Lgnu/lists/Pair;

    .line 135
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    .line 136
    :goto_6
    nop

    instance-of v1, v4, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_b

    .line 137
    check-cast v4, Lkawa/lang/SyntaxForm;

    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    goto :goto_6

    .line 138
    :cond_b
    instance-of v1, v4, Ljava/lang/String;

    if-nez v1, :cond_11

    instance-of v1, v4, Lgnu/mapping/Symbol;

    if-nez v1, :cond_11

    instance-of v1, v4, Lgnu/expr/Keyword;

    if-eqz v1, :cond_c

    goto :goto_8

    .line 287
    :cond_c
    instance-of v1, v4, Lgnu/lists/Pair;

    if-eqz v1, :cond_f

    .line 289
    check-cast v4, Lgnu/lists/Pair;

    .line 290
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 291
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_d

    instance-of v2, v1, Lgnu/mapping/Symbol;

    if-nez v2, :cond_d

    const-string v0, "missing method name"

    .line 294
    invoke-virtual {v8, v12, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_5

    .line 297
    :cond_d
    new-instance v2, Lgnu/expr/LambdaExp;

    invoke-direct {v2}, Lgnu/expr/LambdaExp;-><init>()V

    .line 298
    invoke-virtual {v0, v2, v1}, Lgnu/expr/ClassExp;->addMethod(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 299
    invoke-static {v1, v4}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    move-object/from16 v5, v21

    if-nez v5, :cond_e

    move-object/from16 v16, v2

    goto :goto_7

    .line 303
    :cond_e
    iput-object v2, v5, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    :goto_7
    move-object v4, v2

    move-wide/from16 v32, v6

    move-object/from16 v18, v9

    move-object/from16 v28, v10

    move-object/from16 v31, v13

    move-object v0, v14

    move-object/from16 p1, v15

    const/4 v1, 0x0

    goto/16 :goto_1d

    :cond_f
    move-object/from16 v5, v21

    const-string v1, "invalid field/method definition"

    .line 307
    invoke-virtual {v8, v12, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move-object/from16 v26, v5

    move-wide/from16 v32, v6

    move-object/from16 v18, v9

    move-object/from16 v28, v10

    move-object/from16 v31, v13

    move-object/from16 v23, v14

    move-object/from16 p1, v15

    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_1c

    :cond_11
    :goto_8
    move-object/from16 v5, v21

    .line 147
    instance-of v1, v4, Lgnu/expr/Keyword;

    if-eqz v1, :cond_12

    move-object/from16 v17, v4

    const/4 v4, 0x0

    goto :goto_9

    .line 154
    :cond_12
    invoke-virtual {v0, v4}, Lgnu/expr/ClassExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    const/4 v3, 0x0

    .line 155
    invoke-virtual {v1, v3}, Lgnu/expr/Declaration;->setSimple(Z)V

    move-object/from16 v17, v4

    const-wide/32 v3, 0x100000

    .line 156
    invoke-virtual {v1, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 157
    invoke-static {v1, v2}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v1

    :goto_9
    move-object v1, v2

    move-object/from16 v23, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    .line 163
    :goto_a
    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v24, v2

    if-eq v1, v12, :cond_29

    .line 165
    :goto_b
    instance-of v12, v1, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_13

    .line 166
    check-cast v1, Lkawa/lang/SyntaxForm;

    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    .line 167
    :cond_13
    check-cast v1, Lgnu/lists/Pair;

    .line 169
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    .line 170
    :goto_c
    instance-of v2, v12, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_14

    .line 171
    check-cast v12, Lkawa/lang/SyntaxForm;

    invoke-interface {v12}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v12

    goto :goto_c

    .line 172
    :cond_14
    invoke-virtual {v8, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    .line 173
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v1

    .line 174
    sget-object v1, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v28, v3

    if-eq v12, v1, :cond_15

    instance-of v3, v12, Lgnu/expr/Keyword;

    if-eqz v3, :cond_26

    :cond_15
    instance-of v3, v2, Lgnu/lists/Pair;

    if-eqz v3, :cond_26

    add-int/lit8 v19, v19, 0x1

    .line 178
    check-cast v2, Lgnu/lists/Pair;

    .line 179
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 180
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v27

    if-eq v12, v1, :cond_25

    .line 181
    sget-object v1, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    if-ne v12, v1, :cond_16

    goto/16 :goto_13

    .line 183
    :cond_16
    sget-object v1, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    move-object/from16 v29, v5

    const-string v5, "\'"

    if-ne v12, v1, :cond_1b

    if-eqz v4, :cond_17

    const-string v1, "duplicate allocation: specification"

    const/16 v2, 0x65

    .line 186
    invoke-virtual {v8, v2, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :cond_17
    const-string v1, "class"

    .line 187
    invoke-static {v3, v1, v8}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "static"

    invoke-static {v3, v1, v8}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_d

    :cond_18
    const-string v1, "instance"

    .line 190
    invoke-static {v3, v1, v8}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v4, 0x1000

    move-wide/from16 v32, v6

    move-object/from16 v18, v9

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    move/from16 v3, v22

    move-object/from16 v0, v23

    move-object/from16 v2, v24

    move-object/from16 v9, v26

    move-object/from16 v15, v28

    move-object/from16 v26, v29

    goto :goto_e

    .line 193
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown allocation kind \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v8, v2, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move-wide/from16 v32, v6

    move-object/from16 v18, v9

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    move-object/from16 v0, v23

    move-object/from16 v13, v24

    move-object/from16 v9, v26

    move-object/from16 v15, v28

    move-object/from16 v26, v29

    move-object/from16 v28, v10

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    const/16 v17, 0x0

    move v10, v4

    goto/16 :goto_10

    :cond_1a
    :goto_d
    move-wide/from16 v32, v6

    move-object/from16 v18, v9

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    move/from16 v3, v22

    move-object/from16 v0, v23

    move-object/from16 v2, v24

    move-object/from16 v9, v26

    move-object/from16 v15, v28

    move-object/from16 v26, v29

    const/16 v4, 0x800

    :goto_e
    move-object/from16 v28, v10

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    const/16 v17, 0x0

    goto/16 :goto_15

    .line 195
    :cond_1b
    sget-object v1, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    if-eq v12, v1, :cond_22

    move/from16 v30, v4

    sget-object v4, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    if-eq v12, v4, :cond_21

    sget-object v4, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    if-eq v12, v4, :cond_21

    sget-object v4, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    if-ne v12, v4, :cond_1c

    goto/16 :goto_11

    .line 209
    :cond_1c
    sget-object v1, Lkawa/standard/object;->init_keywordKeyword:Lgnu/expr/Keyword;

    const/16 v4, 0x77

    if-ne v12, v1, :cond_1f

    .line 211
    instance-of v1, v3, Lgnu/expr/Keyword;

    if-nez v1, :cond_1d

    const-string v1, "invalid \'init-keyword\' - not a keyword"

    const/16 v2, 0x65

    .line 212
    invoke-virtual {v8, v2, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_f

    .line 213
    :cond_1d
    check-cast v3, Lgnu/expr/Keyword;

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_1e

    const-string v1, "init-keyword option ignored"

    .line 215
    invoke-virtual {v8, v4, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :cond_1e
    :goto_f
    move-wide/from16 v32, v6

    move-object/from16 v18, v9

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    move-object/from16 v0, v23

    move-object/from16 v13, v24

    move-object/from16 v9, v26

    move-object/from16 v15, v28

    move-object/from16 v26, v29

    move-object/from16 v28, v10

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    move/from16 v10, v30

    const/16 v17, 0x0

    goto/16 :goto_10

    .line 217
    :cond_1f
    sget-object v1, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    if-ne v12, v1, :cond_20

    .line 219
    invoke-virtual {v8, v2}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-wide v4, 0x78f000000L

    const-string v25, "field"

    move-object v1, v3

    move-object/from16 v18, v9

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    move-object/from16 v13, v24

    move-object/from16 v9, v26

    move-object/from16 v15, v28

    const/16 v26, 0x0

    move-wide/from16 v2, v20

    move-object/from16 v28, v10

    move-object/from16 v0, v23

    move-object/from16 v26, v29

    move/from16 v10, v30

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    const/16 v17, 0x0

    move-wide/from16 v32, v6

    move-object/from16 v6, v25

    move-object/from16 v7, p3

    .line 220
    invoke-static/range {v1 .. v7}, Lkawa/standard/object;->addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J

    move-result-wide v1

    .line 223
    invoke-virtual {v8, v12}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-wide/from16 v20, v1

    goto :goto_10

    :cond_20
    move-wide/from16 v32, v6

    move-object/from16 v18, v9

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    move-object/from16 v0, v23

    move-object/from16 v13, v24

    move-object/from16 v9, v26

    move-object/from16 v15, v28

    move-object/from16 v26, v29

    move-object/from16 v28, v10

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    move/from16 v10, v30

    const/16 v17, 0x0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown slot keyword \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v4, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :goto_10
    move v4, v10

    move-object v2, v13

    goto/16 :goto_14

    :cond_21
    :goto_11
    move-wide/from16 v32, v6

    move-object/from16 v18, v9

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    move-object/from16 v0, v23

    move-object/from16 v13, v24

    move-object/from16 v9, v26

    move-object/from16 v15, v28

    move-object/from16 v26, v29

    move-object/from16 v28, v10

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    move/from16 v10, v30

    const/16 v17, 0x0

    goto :goto_12

    :cond_22
    move-wide/from16 v32, v6

    move-object/from16 v18, v9

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    move-object/from16 v0, v23

    move-object/from16 v13, v24

    move-object/from16 v9, v26

    move-object/from16 v15, v28

    move-object/from16 v26, v29

    move-object/from16 v28, v10

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    const/16 v17, 0x0

    move v10, v4

    :goto_12
    if-eqz v22, :cond_23

    const-string v3, "duplicate initialization"

    const/16 v4, 0x65

    .line 201
    invoke-virtual {v8, v4, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :cond_23
    if-eq v12, v1, :cond_24

    move-object v15, v2

    :cond_24
    move v4, v10

    move-object v2, v13

    const/4 v3, 0x1

    goto :goto_15

    :cond_25
    :goto_13
    move-wide/from16 v32, v6

    move-object/from16 v18, v9

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    move-object/from16 v0, v23

    move-object/from16 v9, v26

    move-object/from16 v15, v28

    move-object/from16 v26, v5

    move-object/from16 v28, v10

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    const/16 v17, 0x0

    move v10, v4

    move v4, v10

    :goto_14
    move/from16 v3, v22

    :goto_15
    move/from16 v22, v3

    move-object v3, v15

    move-object/from16 v1, v27

    goto :goto_17

    :cond_26
    move-wide/from16 v32, v6

    move-object/from16 v18, v9

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    move-object/from16 v0, v23

    move-object/from16 v13, v24

    move-object/from16 v9, v26

    move-object/from16 v15, v28

    move-object/from16 v26, v5

    move-object/from16 v28, v10

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    const/16 v17, 0x0

    move v10, v4

    .line 230
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v1, :cond_27

    if-nez v22, :cond_27

    move-object v1, v2

    move v4, v10

    move-object v2, v13

    move-object/from16 v3, v27

    :goto_16
    const/16 v22, 0x1

    goto :goto_17

    .line 236
    :cond_27
    instance-of v1, v2, Lgnu/lists/Pair;

    if-eqz v1, :cond_28

    if-nez v19, :cond_28

    if-nez v22, :cond_28

    if-nez v13, :cond_28

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v3, :cond_28

    .line 243
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v2

    move v4, v10

    move-object/from16 v2, v27

    goto :goto_16

    .line 251
    :goto_17
    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v15, p1

    move-object/from16 v17, v14

    move-object/from16 v9, v18

    move-object/from16 v14, v23

    move-object/from16 v5, v26

    move-object/from16 v10, v28

    move-object/from16 v13, v31

    move-wide/from16 v6, v32

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    goto/16 :goto_a

    :cond_28
    const/4 v1, 0x0

    goto :goto_18

    :cond_29
    move-object/from16 v26, v5

    move-wide/from16 v32, v6

    move-object/from16 v18, v9

    move-object/from16 v28, v10

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    move-object/from16 v0, v23

    move-object/from16 v13, v24

    move-object v15, v3

    move v10, v4

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    const/16 v17, 0x0

    .line 253
    :goto_18
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v2, :cond_2b

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid argument list for slot \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " args:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_2a

    const-string v1, "null"

    goto :goto_19

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v8, v1, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_5

    :cond_2b
    if-eqz v22, :cond_2f

    const/16 v1, 0x800

    if-ne v10, v1, :cond_2c

    const/4 v5, 0x1

    goto :goto_1a

    :cond_2c
    const/4 v5, 0x0

    :goto_1a
    if-eqz v0, :cond_2d

    move-object v4, v0

    goto :goto_1b

    :cond_2d
    if-eqz v5, :cond_2e

    .line 263
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1b

    :cond_2e
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1b
    invoke-virtual {v11, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v11, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2f
    if-nez v0, :cond_30

    if-nez v22, :cond_10

    const-string v0, "missing field name"

    const/16 v1, 0x65

    .line 271
    invoke-virtual {v8, v1, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_30
    const/4 v1, 0x0

    if-eqz v13, :cond_31

    .line 278
    invoke-virtual {v8, v13}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    :cond_31
    if-eqz v10, :cond_32

    int-to-long v2, v10

    .line 280
    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_32
    move-wide/from16 v2, v20

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_33

    .line 282
    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_33
    const/4 v2, 0x1

    .line 283
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 284
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    :goto_1c
    move-object/from16 v0, v23

    move-object/from16 v4, v26

    .line 308
    :goto_1d
    invoke-virtual {v8, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v15, p1

    move-object/from16 v0, p2

    move-object v14, v1

    move-object/from16 v9, v18

    move-object/from16 v10, v28

    move-object/from16 v1, v31

    move-wide/from16 v6, v32

    goto/16 :goto_0

    :cond_34
    move-object/from16 v18, v9

    move-object/from16 v28, v10

    move-object/from16 p1, v15

    const-wide/16 v2, 0x0

    const/16 v17, 0x0

    cmp-long v0, v6, v2

    if-eqz v0, :cond_35

    move-object/from16 v0, p2

    .line 311
    iget-object v1, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v1, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_1e

    :cond_35
    move-object/from16 v0, p2

    :goto_1e
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v17

    const/4 v0, 0x1

    aput-object v28, v1, v0

    const/4 v0, 0x2

    aput-object v11, v1, v0

    const/4 v0, 0x3

    aput-object v16, v1, v0

    const/4 v0, 0x4

    aput-object v18, v1, v0

    const/4 v0, 0x5

    aput-object p1, v1, v0

    return-object v1
.end method
