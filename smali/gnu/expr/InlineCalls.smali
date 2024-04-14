.class public Lgnu/expr/InlineCalls;
.super Lgnu/expr/ExpExpVisitor;
.source "InlineCalls.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor<",
        "Lgnu/bytecode/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static inlinerMethodArgTypes:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lgnu/expr/ExpExpVisitor;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->setContext(Lgnu/expr/Compilation;)V

    return-void
.end method

.method public static checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;
    .locals 1

    .line 130
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    .line 132
    check-cast p0, Lgnu/expr/QuoteExp;

    .line 133
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->isExplicitlyTyped()Z

    move-result p0

    if-nez p0, :cond_0

    instance-of p0, v0, Lgnu/math/IntNum;

    if-eqz p0, :cond_0

    .line 136
    check-cast v0, Lgnu/math/IntNum;

    .line 137
    invoke-virtual {v0}, Lgnu/math/IntNum;->inIntRange()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 138
    invoke-virtual {v0}, Lgnu/math/IntNum;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkLongValue(Lgnu/expr/Expression;)Ljava/lang/Long;
    .locals 2

    .line 146
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    .line 148
    check-cast p0, Lgnu/expr/QuoteExp;

    .line 149
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->isExplicitlyTyped()Z

    move-result p0

    if-nez p0, :cond_0

    instance-of p0, v0, Lgnu/math/IntNum;

    if-eqz p0, :cond_0

    .line 152
    check-cast v0, Lgnu/math/IntNum;

    .line 153
    invoke-virtual {v0}, Lgnu/math/IntNum;->inLongRange()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {v0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static declared-synchronized getInlinerMethodArgTypes()[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lgnu/expr/InlineCalls;

    monitor-enter v0

    .line 407
    :try_start_0
    sget-object v1, Lgnu/expr/InlineCalls;->inlinerMethodArgTypes:[Ljava/lang/Class;

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-string v3, "gnu.expr.ApplyExp"

    .line 410
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "gnu.expr.InlineCalls"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gnu.bytecode.Type"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "gnu.mapping.Procedure"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 414
    sput-object v1, Lgnu/expr/InlineCalls;->inlinerMethodArgTypes:[Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;
    .locals 9

    .line 492
    iget-object v0, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iget-object v0, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 498
    :cond_0
    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 499
    :goto_0
    iget v4, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v5, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lgnu/expr/LambdaExp;->min_args:I

    array-length v5, p1

    if-eq v4, v5, :cond_3

    :cond_2
    if-eqz v0, :cond_c

    iget v4, p0, Lgnu/expr/LambdaExp;->min_args:I

    if-nez v4, :cond_c

    :cond_3
    if-eqz p2, :cond_4

    .line 509
    new-instance v4, Lgnu/kawa/util/IdentityHashTable;

    invoke-direct {v4}, Lgnu/kawa/util/IdentityHashTable;-><init>()V

    .line 510
    invoke-static {p1, v4}, Lgnu/expr/Expression;->deepCopy([Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)[Lgnu/expr/Expression;

    move-result-object v5

    if-nez v5, :cond_5

    if-eqz p1, :cond_5

    return-object v1

    :cond_4
    move-object v5, p1

    move-object v4, v1

    :cond_5
    if-eqz v0, :cond_6

    .line 521
    array-length v5, p1

    add-int/2addr v5, v2

    new-array v5, v5, [Lgnu/expr/Expression;

    .line 522
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v6

    iget-object v6, v6, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    invoke-static {v6}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v6

    aput-object v6, v5, v3

    .line 523
    array-length v6, p1

    invoke-static {p1, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v2, [Lgnu/expr/Expression;

    .line 524
    new-instance v2, Lgnu/expr/ApplyExp;

    sget-object v6, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-direct {v2, v6, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    aput-object v2, p1, v3

    move-object v5, p1

    .line 526
    :cond_6
    new-instance p1, Lgnu/expr/LetExp;

    invoke-direct {p1, v5}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 527
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    move-object v6, v1

    :goto_1
    if-eqz v2, :cond_a

    .line 529
    invoke-virtual {v2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    if-eqz p2, :cond_8

    .line 532
    iget-object v6, v2, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    iget-object v8, v2, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    invoke-virtual {p1, v6, v8}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v6

    .line 533
    iget-object v8, v2, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-eqz v8, :cond_7

    .line 535
    iget-object v8, v2, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    invoke-static {v8}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v8

    iput-object v8, v6, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 536
    iget-object v8, v6, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-nez v8, :cond_7

    return-object v1

    .line 540
    :cond_7
    invoke-virtual {v4, v2, v6}, Lgnu/kawa/util/IdentityHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 544
    :cond_8
    invoke-virtual {p0, v6, v2}, Lgnu/expr/LambdaExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 545
    invoke-virtual {p1, v6, v2}, Lgnu/expr/LetExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    :goto_2
    if-nez v0, :cond_9

    .line 549
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v6

    if-nez v6, :cond_9

    .line 550
    aget-object v6, v5, v3

    invoke-virtual {v2, v6}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    move-object v6, v2

    move-object v2, v7

    goto :goto_1

    .line 562
    :cond_a
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz p2, :cond_b

    .line 565
    invoke-static {v0, v4}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_b

    .line 566
    iget-object p0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz p0, :cond_b

    return-object v1

    .line 569
    :cond_b
    iput-object v0, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    return-object p1

    :cond_c
    :goto_3
    return-object v1
.end method

.method public static inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 1

    .line 32
    new-instance v0, Lgnu/expr/InlineCalls;

    invoke-direct {v0, p1}, Lgnu/expr/InlineCalls;-><init>(Lgnu/expr/Compilation;)V

    const/4 p1, 0x0

    .line 33
    invoke-virtual {v0, p0, p1}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkType(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 6

    .line 54
    invoke-virtual {p1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 56
    instance-of v1, p2, Lgnu/bytecode/ClassType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v4}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    instance-of v4, p1, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_4

    .line 62
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->checkSingleAbstractMethod()Lgnu/bytecode/Method;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 65
    move-object v0, p1

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 66
    new-instance v4, Lgnu/expr/ObjectExp;

    invoke-direct {v4}, Lgnu/expr/ObjectExp;-><init>()V

    .line 67
    invoke-virtual {v4, p1}, Lgnu/expr/ObjectExp;->setLocation(Lgnu/text/SourceLocator;)V

    new-array p1, v3, [Lgnu/expr/Expression;

    .line 68
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, p2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v3, p1, v2

    iput-object p1, v4, Lgnu/expr/ObjectExp;->supers:[Lgnu/expr/Expression;

    .line 69
    invoke-virtual {p0}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object p1

    invoke-virtual {v4, p1}, Lgnu/expr/ObjectExp;->setTypes(Lgnu/expr/Compilation;)V

    .line 70
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {v4, v0, p1}, Lgnu/expr/ObjectExp;->addMethod(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Lgnu/expr/Declaration;

    .line 72
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, p1, v1}, Lgnu/expr/ObjectExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 73
    iput-object v0, v4, Lgnu/expr/ObjectExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 74
    iget-object p1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, p1}, Lgnu/expr/ObjectExp;->declareParts(Lgnu/expr/Compilation;)V

    .line 75
    invoke-virtual {p0, v4, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    sget-object v1, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v0, v1, :cond_1

    .line 83
    sget-object v0, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    :cond_1
    if-eqz p2, :cond_2

    .line 84
    invoke-virtual {p2, v0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v1

    const/4 v4, -0x3

    if-ne v1, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 85
    instance-of v1, p2, Lgnu/expr/TypeValue;

    if-eqz v1, :cond_3

    .line 87
    move-object v1, p2

    check-cast v1, Lgnu/expr/TypeValue;

    invoke-interface {v1, p1}, Lgnu/expr/TypeValue;->convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    move v3, v2

    :cond_4
    if-eqz v3, :cond_5

    .line 94
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const/16 v3, 0x77

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lgnu/expr/Language;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is incompatible with required type "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Lgnu/expr/Language;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    :cond_5
    return-object p1
.end method

.method public fixIntValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;
    .locals 3

    .line 162
    invoke-static {p1}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    new-instance v0, Lgnu/expr/QuoteExp;

    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public fixLongValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;
    .locals 3

    .line 170
    invoke-static {p1}, Lgnu/expr/InlineCalls;->checkLongValue(Lgnu/expr/Expression;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    new-instance v0, Lgnu/expr/QuoteExp;

    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public maybeInline(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 7

    const/16 v0, 0x65

    const/4 v1, 0x0

    .line 425
    :try_start_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 427
    :try_start_1
    sget-object v2, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    invoke-virtual {p3, v2, v1}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 428
    instance-of v3, v2, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 430
    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x3a

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 439
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v3, v5

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v6, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 445
    invoke-static {}, Lgnu/expr/InlineCalls;->getInlinerMethodArgTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 450
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "inliner property string for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not of the form CLASS:METHOD"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lgnu/expr/InlineCalls;->error(CLjava/lang/String;)V

    .line 451
    monitor-exit p3

    return-object v1

    .line 455
    :cond_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    const/4 v3, 0x4

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p0, v3, v5

    const/4 p1, 0x2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    aput-object p3, v3, p1

    .line 463
    instance-of p1, v2, Lgnu/mapping/Procedure;

    if-eqz p1, :cond_2

    .line 464
    check-cast v2, Lgnu/mapping/Procedure;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    return-object p1

    .line 466
    :cond_2
    instance-of p1, v2, Ljava/lang/reflect/Method;

    if-eqz p1, :cond_4

    .line 467
    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    .line 455
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 474
    instance-of p2, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p2, :cond_3

    .line 475
    check-cast p1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    .line 476
    :cond_3
    iget-object p2, p0, Lgnu/expr/InlineCalls;->messages:Lgnu/text/SourceMessages;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught exception in inliner for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-object v1
.end method

.method public visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 2

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Lgnu/expr/Expression;->getFlag(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Lgnu/expr/Expression;->setFlag(I)V

    .line 46
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    .line 47
    invoke-virtual {p1, v0}, Lgnu/expr/Expression;->setFlag(I)V

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->checkType(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 4

    .line 105
    iget-object v0, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 110
    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_0

    .line 112
    move-object v1, v0

    check-cast v1, Lgnu/expr/LambdaExp;

    .line 113
    iget-object v2, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lgnu/expr/InlineCalls;->inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0, v1, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, v0, v1}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    .line 118
    iput-object v0, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 119
    invoke-virtual {v0, p1, p0, p2, v1}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitApplyExp(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 2

    .line 125
    iget-object v0, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, p2, v1}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitBeginExp(Lgnu/expr/BeginExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 5

    .line 269
    iget v0, p1, Lgnu/expr/BeginExp;->length:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    .line 272
    iget-object v2, p1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget-object v3, p1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v3, v3, v1

    if-ge v1, v0, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    move-object v4, p2

    :goto_1
    invoke-virtual {p0, v3, v4}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method protected bridge synthetic visitBeginExp(Lgnu/expr/BeginExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitBeginExp(Lgnu/expr/BeginExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitIfExp(Lgnu/expr/IfExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 5

    .line 237
    iget-object v0, p1, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Expression;

    .line 238
    instance-of v1, v0, Lgnu/expr/ReferenceExp;

    if-eqz v1, :cond_0

    .line 240
    move-object v1, v0

    check-cast v1, Lgnu/expr/ReferenceExp;

    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 244
    instance-of v2, v1, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_0

    sget-object v2, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v1, v2, :cond_0

    move-object v0, v1

    .line 248
    :cond_0
    iput-object v0, p1, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    .line 249
    iget-object v1, p0, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 250
    iget-object v1, p1, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {p0, v1, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p1, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    .line 251
    :cond_1
    iget-object v1, p0, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v1, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {p0, v1, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p2

    iput-object p2, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 253
    :cond_2
    instance-of p2, v0, Lgnu/expr/QuoteExp;

    if-eqz p2, :cond_3

    .line 255
    iget-object p2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object p2

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result p2

    .line 256
    invoke-virtual {p1, p2}, Lgnu/expr/IfExp;->select(Z)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 258
    :cond_3
    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object p2

    invoke-virtual {p2}, Lgnu/bytecode/Type;->isVoid()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 260
    iget-object p2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object p2

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p2, v1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result p2

    .line 261
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const/16 v2, 0x77

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "void-valued condition is always "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 262
    new-instance v1, Lgnu/expr/BeginExp;

    invoke-virtual {p1, p2}, Lgnu/expr/IfExp;->select(Z)Lgnu/expr/Expression;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v1

    :cond_4
    return-object p1
.end method

.method protected bridge synthetic visitIfExp(Lgnu/expr/IfExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitIfExp(Lgnu/expr/IfExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 2

    .line 343
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-nez v1, :cond_0

    .line 347
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 349
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 8

    .line 298
    invoke-virtual {p1}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 299
    iget-object v1, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    .line 302
    iget-object v5, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v5, v5, v3

    const-wide/16 v6, 0x2000

    .line 303
    invoke-virtual {v0, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 304
    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v5, v7, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 305
    :cond_0
    invoke-virtual {p0, v5, v4}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    .line 306
    iget-object v7, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aput-object v4, v7, v3

    .line 307
    iget-object v7, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    if-ne v7, v5, :cond_1

    .line 310
    iput-object v4, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    if-nez v6, :cond_1

    .line 312
    invoke-virtual {v4}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 300
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p0, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 317
    iget-object v0, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p0, v0, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p2

    iput-object p2, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 318
    :cond_3
    iget-object p2, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    instance-of p2, p2, Lgnu/expr/ReferenceExp;

    if-eqz p2, :cond_4

    .line 320
    iget-object p2, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    check-cast p2, Lgnu/expr/ReferenceExp;

    .line 321
    invoke-virtual {p2}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 322
    iget-object v3, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    if-ne v3, p1, :cond_4

    invoke-virtual {p2}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x1

    if-ne v1, p2, :cond_4

    .line 326
    iget-object p1, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object p1, p1, v2

    .line 327
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object p2

    .line 330
    sget-object v0, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    if-eq p2, v0, :cond_4

    .line 331
    invoke-static {p1, p2}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method protected bridge synthetic visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitLetExp(Lgnu/expr/LetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitQuoteExp(Lgnu/expr/QuoteExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 2

    .line 179
    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->getRawType()Lgnu/bytecode/Type;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->isSharedConstant()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 182
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 184
    sget-object v1, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v0, v1, :cond_0

    .line 185
    sget-object v0, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    .line 186
    :cond_0
    iput-object v0, p1, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    .line 187
    instance-of v0, p2, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x49

    if-ne p2, v0, :cond_1

    .line 190
    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->fixIntValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/16 v0, 0x4a

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->fixLongValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    move-object p1, p2

    :cond_3
    return-object p1
.end method

.method protected bridge synthetic visitQuoteExp(Lgnu/expr/QuoteExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitQuoteExp(Lgnu/expr/QuoteExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 6

    .line 201
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v1, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v1

    if-nez v1, :cond_3

    .line 204
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 205
    instance-of v2, v1, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_0

    sget-object v2, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v1, v2, :cond_0

    .line 206
    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {p0, v1, p2}, Lgnu/expr/InlineCalls;->visitQuoteExp(Lgnu/expr/QuoteExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 207
    :cond_0
    instance-of v2, v1, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v2

    if-nez v2, :cond_2

    .line 209
    check-cast v1, Lgnu/expr/ReferenceExp;

    .line 210
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v2

    .line 211
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    if-ne v3, v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v2

    if-nez v2, :cond_2

    .line 217
    invoke-virtual {p0, v1, p2}, Lgnu/expr/InlineCalls;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 219
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v1

    if-nez v1, :cond_3

    iget-wide v1, v0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v3, 0x100080

    and-long/2addr v1, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    .line 228
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unimplemented: reference to method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as variable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v1, v3, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 229
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const-string v2, "here is the definition of "

    const-string v4, ""

    invoke-virtual {v1, v3, v0, v2, v4}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_3
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    return-object p1
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 2

    const/4 p2, 0x0

    .line 279
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ScopeExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->visitDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 281
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 284
    iget-object v0, p2, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 287
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v1, p2, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    .line 288
    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    :goto_1
    invoke-virtual {p2, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 282
    :cond_1
    invoke-virtual {p2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method protected bridge synthetic visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 5

    .line 368
    invoke-virtual {p1}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 369
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v3, 0x100080

    and-long/2addr v1, v3

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    .line 373
    iget-object p2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const/16 v1, 0x65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t assign to method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    :cond_0
    if-eqz v0, :cond_1

    const-wide/16 v1, 0x2000

    .line 374
    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 376
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object p2

    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-static {p2, v1}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result p2

    if-gez p2, :cond_1

    .line 377
    sget-object p2, Lgnu/bytecode/Type;->errorType:Lgnu/bytecode/ObjectType;

    invoke-virtual {v0, p2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    :cond_1
    return-object p1
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitSetExp(Lgnu/expr/SetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitSetExpValue(Lgnu/expr/Expression;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 0

    if-eqz p3, :cond_1

    .line 363
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isAlias()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p3, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic visitSetExpValue(Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 0

    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2, p3}, Lgnu/expr/InlineCalls;->visitSetExpValue(Lgnu/expr/Expression;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitTryExp(Lgnu/expr/TryExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 1

    .line 354
    invoke-virtual {p1}, Lgnu/expr/TryExp;->getCatchClauses()Lgnu/expr/CatchClause;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lgnu/expr/TryExp;->getFinallyClause()Lgnu/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    .line 355
    iget-object p1, p1, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 357
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    return-object p1
.end method

.method protected bridge synthetic visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitTryExp(Lgnu/expr/TryExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
