.class public Lgnu/expr/ClassExp;
.super Lgnu/expr/LambdaExp;
.source "ClassExp.java"


# static fields
.field public static final CLASS_SPECIFIED:I = 0x10000

.field public static final HAS_SUBCLASS:I = 0x20000

.field public static final INTERFACE_SPECIFIED:I = 0x8000

.field public static final IS_ABSTRACT:I = 0x4000


# instance fields
.field public classNameSpecifier:Ljava/lang/String;

.field public clinitMethod:Lgnu/expr/LambdaExp;

.field explicitInit:Z

.field public initMethod:Lgnu/expr/LambdaExp;

.field instanceType:Lgnu/bytecode/ClassType;

.field partsDeclared:Z

.field simple:Z

.field public superClassIndex:I

.field public supers:[Lgnu/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lgnu/expr/LambdaExp;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lgnu/expr/ClassExp;->superClassIndex:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lgnu/expr/LambdaExp;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lgnu/expr/ClassExp;->superClassIndex:I

    .line 70
    iput-boolean p1, p0, Lgnu/expr/ClassExp;->simple:Z

    .line 71
    new-instance p1, Lgnu/bytecode/ClassType;

    invoke-direct {p1}, Lgnu/bytecode/ClassType;-><init>()V

    iput-object p1, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    iput-object p1, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method static getImplMethods(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/bytecode/Type;Ljava/util/Vector;)V
    .locals 5

    .line 371
    instance-of v0, p0, Lgnu/expr/PairClassType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 372
    move-object v0, p0

    check-cast v0, Lgnu/expr/PairClassType;

    iget-object v0, v0, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 379
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 382
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 385
    invoke-static {v2, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 389
    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :goto_0
    array-length v2, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lgnu/bytecode/Type;

    .line 397
    aput-object p0, v2, v1

    .line 398
    array-length v4, p2

    invoke-static {p2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    invoke-virtual {v0, p1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 402
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p0

    if-eqz p0, :cond_3

    sub-int/2addr p0, v3

    .line 403
    invoke-virtual {p3, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 404
    :cond_3
    invoke-virtual {p3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 408
    :cond_4
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object p0

    .line 409
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_5

    .line 410
    aget-object v0, p0, v1

    invoke-static {v0, p1, p2, p3}, Lgnu/expr/ClassExp;->getImplMethods(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/bytecode/Type;Ljava/util/Vector;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    :cond_5
    :goto_2
    return-void
.end method

.method static invokeDefaultSuperConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;)V
    .locals 3

    .line 718
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    const-string v1, "<init>"

    const/4 v2, 0x0

    .line 719
    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 p0, 0x65

    const-string p2, "super class does not have a default constructor"

    .line 722
    invoke-virtual {p1, p0, p2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_0
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 726
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p2, Lgnu/expr/ClassExp;

    if-eqz v2, :cond_1

    .line 728
    check-cast p2, Lgnu/expr/ClassExp;

    .line 729
    iget-object v2, p2, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    iget p2, p2, Lgnu/expr/ClassExp;->superClassIndex:I

    aget-object p2, v2, p2

    .line 730
    invoke-static {p2, p0, p1}, Lgnu/expr/ClassExp;->loadSuperStaticLink(Lgnu/expr/Expression;Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 732
    :cond_1
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    :goto_0
    return-void
.end method

.method static loadSuperStaticLink(Lgnu/expr/Expression;Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V
    .locals 2

    .line 707
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 709
    sget-object v1, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-static {v1}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    const-string p0, "gnu.expr.PairClassType"

    .line 710
    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p0

    const-string p2, "extractStaticLink"

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 711
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getOuterLinkType()Lgnu/bytecode/ClassType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public static slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 797
    invoke-static {p1}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 798
    invoke-static {p1, v1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 799
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 800
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v3, v0, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 801
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lez v0, :cond_1

    .line 804
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toTitleCase(C)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p0, 0x1

    .line 805
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 807
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static usedSuperClasses(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V
    .locals 2

    .line 417
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 418
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 421
    array-length v0, p0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 422
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addMethod(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 4

    .line 812
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p2, v0}, Lgnu/expr/ClassExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 813
    iput-object p0, p1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    const/4 v1, 0x1

    .line 814
    invoke-virtual {p1, v1}, Lgnu/expr/LambdaExp;->setClassMethod(Z)V

    .line 815
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    const-wide/32 v2, 0x100000

    .line 816
    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 817
    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 818
    invoke-virtual {p1, p2}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    return-object v0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1

    .line 78
    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/ClassExp;->compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    .line 81
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ClassExp;->compilePushClass(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 428
    iget-object v3, v2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 429
    iget-object v4, v2, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 432
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 433
    iput-object v0, v2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 435
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v5

    .line 437
    instance-of v6, v5, Lgnu/expr/ClassExp;

    if-eqz v6, :cond_0

    .line 438
    iget-object v5, v5, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 439
    instance-of v6, v5, Lgnu/expr/ModuleExp;

    if-nez v6, :cond_1

    move-object v5, v4

    goto :goto_0

    .line 441
    :cond_1
    instance-of v6, v5, Lgnu/expr/ModuleExp;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x24

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_2

    .line 442
    iget-object v5, v5, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    .line 445
    invoke-virtual {v0, v5}, Lgnu/bytecode/ClassType;->setEnclosingMember(Lgnu/bytecode/Member;)V

    .line 446
    instance-of v6, v5, Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_3

    .line 447
    check-cast v5, Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v0}, Lgnu/bytecode/ClassType;->addMemberClass(Lgnu/bytecode/ClassType;)V

    .line 449
    :cond_3
    iget-object v5, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-eq v5, v0, :cond_4

    .line 451
    iget-object v6, v1, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->setEnclosingMember(Lgnu/bytecode/Member;)V

    .line 452
    iget-object v5, v1, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    iget-object v6, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->addMemberClass(Lgnu/bytecode/ClassType;)V

    .line 455
    :cond_4
    iget-object v5, v1, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-static {v5, v2}, Lgnu/expr/ClassExp;->usedSuperClasses(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 456
    iget-object v5, v1, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    iget-object v6, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-eq v5, v6, :cond_5

    .line 457
    invoke-static {v6, v2}, Lgnu/expr/ClassExp;->usedSuperClasses(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 459
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->getFileName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 461
    invoke-virtual {v0, v5}, Lgnu/bytecode/ClassType;->setSourceFile(Ljava/lang/String;)V

    .line 463
    :cond_6
    iget-object v5, v2, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 464
    iput-object v1, v2, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 466
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ClassExp;->allocFrame(Lgnu/expr/Compilation;)V

    .line 469
    iget-object v6, v1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    :goto_1
    const/4 v10, 0x1

    if-eqz v6, :cond_13

    .line 472
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v11

    if-eqz v11, :cond_7

    goto/16 :goto_6

    .line 474
    :cond_7
    iget-object v11, v2, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 475
    iget-object v12, v2, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 476
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v13

    .line 477
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v14

    .line 478
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v15

    .line 479
    invoke-virtual {v2, v6}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    .line 480
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v7

    iput-object v7, v2, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 482
    iget-object v7, v6, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v7, :cond_8

    const-wide/16 v8, 0x800

    .line 483
    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-nez v7, :cond_9

    .line 485
    :cond_8
    iget-object v7, v2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v7}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    .line 486
    :cond_9
    iget-object v7, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    iput-object v7, v2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 487
    iput-object v6, v2, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 488
    iget-object v7, v2, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v7}, Lgnu/bytecode/Method;->initCode()V

    .line 489
    invoke-virtual {v6, v2}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 490
    invoke-virtual {v6, v2}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    const-string v7, "*init*"

    .line 491
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 493
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 495
    iget-object v8, v1, Lgnu/expr/ClassExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v8, :cond_a

    .line 497
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 498
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v8

    invoke-virtual {v8, v10}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 499
    iget-object v8, v1, Lgnu/expr/ClassExp;->staticLinkField:Lgnu/bytecode/Field;

    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 503
    :cond_a
    iget-object v7, v6, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 504
    :goto_2
    instance-of v8, v7, Lgnu/expr/BeginExp;

    if-eqz v8, :cond_c

    .line 506
    check-cast v7, Lgnu/expr/BeginExp;

    .line 507
    iget v8, v7, Lgnu/expr/BeginExp;->length:I

    if-nez v8, :cond_b

    const/4 v7, 0x0

    goto :goto_2

    .line 510
    :cond_b
    iget-object v7, v7, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    goto :goto_2

    .line 516
    :cond_c
    instance-of v8, v7, Lgnu/expr/ApplyExp;

    if-eqz v8, :cond_d

    move-object v8, v7

    check-cast v8, Lgnu/expr/ApplyExp;

    iget-object v8, v8, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v9, v8, Lgnu/expr/QuoteExp;

    if-eqz v9, :cond_d

    check-cast v8, Lgnu/expr/QuoteExp;

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lgnu/expr/PrimProcedure;

    if-eqz v9, :cond_d

    .line 520
    check-cast v8, Lgnu/expr/PrimProcedure;

    .line 521
    invoke-virtual {v8}, Lgnu/expr/PrimProcedure;->isSpecial()Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "<init>"

    iget-object v10, v8, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 523
    iget-object v8, v8, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v8}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v8

    goto :goto_3

    :cond_d
    const/4 v8, 0x0

    .line 525
    :goto_3
    iget-object v9, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v9

    if-eqz v8, :cond_e

    .line 528
    sget-object v10, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v7, v2, v10}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 529
    iget-object v7, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-eq v8, v7, :cond_f

    if-eq v8, v9, :cond_f

    const-string v7, "call to <init> for not this or super class"

    const/16 v9, 0x65

    .line 530
    invoke-virtual {v2, v9, v7}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_4

    :cond_e
    if-eqz v9, :cond_f

    .line 536
    invoke-static {v9, v2, v1}, Lgnu/expr/ClassExp;->invokeDefaultSuperConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;)V

    .line 538
    :cond_f
    :goto_4
    invoke-virtual {v6, v2}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 539
    iget-object v7, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-eq v8, v7, :cond_10

    .line 540
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v7

    new-instance v9, Ljava/util/Vector;

    const/16 v10, 0xa

    invoke-direct {v9, v10}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v2, v7, v9}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    :cond_10
    if-eqz v8, :cond_11

    .line 544
    iget-object v7, v6, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-static {v7, v2}, Lgnu/expr/Expression;->compileButFirst(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    goto :goto_5

    .line 546
    :cond_11
    invoke-virtual {v6, v2}, Lgnu/expr/LambdaExp;->compileBody(Lgnu/expr/Compilation;)V

    goto :goto_5

    .line 550
    :cond_12
    invoke-virtual {v6, v2}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 551
    invoke-virtual {v6, v2}, Lgnu/expr/LambdaExp;->compileBody(Lgnu/expr/Compilation;)V

    .line 553
    :goto_5
    invoke-virtual {v6, v2}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 554
    invoke-virtual {v6, v2}, Lgnu/expr/LambdaExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 555
    iput-object v11, v2, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 556
    iput-object v0, v2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 557
    iput-object v12, v2, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 558
    invoke-virtual {v2, v13, v14, v15}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    .line 470
    :goto_6
    iget-object v6, v6, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto/16 :goto_1

    .line 560
    :cond_13
    iget-boolean v6, v1, Lgnu/expr/ClassExp;->explicitInit:Z

    if-nez v6, :cond_14

    iget-object v6, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v6

    if-nez v6, :cond_14

    .line 561
    iget-object v6, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v6, v1}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    goto :goto_7

    .line 562
    :cond_14
    iget-object v6, v1, Lgnu/expr/ClassExp;->initChain:Lgnu/expr/Initializer;

    if-eqz v6, :cond_15

    .line 563
    iget-object v6, v1, Lgnu/expr/ClassExp;->initChain:Lgnu/expr/Initializer;

    const-string v7, "unimplemented: explicit constructor cannot initialize "

    invoke-virtual {v6, v7, v2}, Lgnu/expr/Initializer;->reportError(Ljava/lang/String;Lgnu/expr/Compilation;)V

    .line 567
    :cond_15
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->isAbstract()Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_8

    .line 574
    :cond_16
    iget-object v6, v1, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getAbstractMethods()[Lgnu/bytecode/Method;

    move-result-object v7

    .line 575
    array-length v6, v7

    move v8, v6

    :goto_8
    const/4 v6, 0x0

    :goto_9
    if-ge v6, v8, :cond_21

    .line 579
    aget-object v9, v7, v6

    .line 580
    invoke-virtual {v9}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v11

    .line 581
    invoke-virtual {v9}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v12

    .line 582
    invoke-virtual {v9}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v13

    .line 584
    iget-object v14, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v14, v11, v12}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v14

    if-eqz v14, :cond_18

    .line 585
    invoke-virtual {v14}, Lgnu/bytecode/Method;->isAbstract()Z

    move-result v14

    if-nez v14, :cond_18

    :cond_17
    move-object/from16 v16, v7

    :goto_a
    const/16 v9, 0x65

    :goto_b
    const/4 v11, 0x0

    const/4 v14, 0x1

    goto/16 :goto_11

    .line 589
    :cond_18
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_1d

    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x74

    if-ne v14, v15, :cond_1d

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x65

    if-ne v14, v15, :cond_1d

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v14, 0x73

    const/16 v10, 0x67

    if-eq v15, v10, :cond_19

    if-ne v15, v14, :cond_1d

    :cond_19
    if-ne v15, v14, :cond_1a

    .line 595
    invoke-virtual {v13}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v9

    if-eqz v9, :cond_1a

    array-length v9, v12

    const/4 v14, 0x1

    if-ne v9, v14, :cond_1a

    const/4 v9, 0x0

    .line 596
    aget-object v14, v12, v9

    goto :goto_c

    :cond_1a
    if-ne v15, v10, :cond_17

    .line 597
    array-length v9, v12

    if-nez v9, :cond_17

    move-object v14, v13

    .line 601
    :goto_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x3

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v10, 0x4

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 603
    iget-object v10, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v10, v9}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v10

    if-nez v10, :cond_1b

    .line 605
    iget-object v10, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v16, v7

    const/4 v7, 0x1

    invoke-virtual {v10, v9, v14, v7}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v10

    goto :goto_d

    :cond_1b
    move-object/from16 v16, v7

    const/4 v7, 0x1

    .line 606
    :goto_d
    iget-object v9, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v9, v11, v7, v12, v13}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v9

    .line 608
    invoke-virtual {v9}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 609
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    const/16 v9, 0x67

    if-ne v15, v9, :cond_1c

    .line 612
    invoke-virtual {v7, v10}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto :goto_e

    :cond_1c
    const/4 v9, 0x1

    .line 616
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v11

    invoke-virtual {v7, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 617
    invoke-virtual {v7, v10}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 619
    :goto_e
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v16, v7

    .line 623
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 624
    iget-object v10, v1, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-static {v10, v11, v12, v7}, Lgnu/expr/ClassExp;->getImplMethods(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/bytecode/Type;Ljava/util/Vector;)V

    .line 625
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v10

    const/4 v14, 0x1

    if-eq v10, v14, :cond_1f

    .line 628
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, "missing implementation for "

    goto :goto_f

    :cond_1e
    const-string v7, "ambiguous implementation for "

    .line 631
    :goto_f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x65

    invoke-virtual {v2, v9, v7}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_b

    :cond_1f
    const/16 v9, 0x65

    .line 635
    iget-object v10, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v14, v12, v13}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v10

    .line 637
    invoke-virtual {v10}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v10

    .line 638
    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v11

    :goto_10
    if-eqz v11, :cond_20

    .line 640
    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 639
    invoke-virtual {v11}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v11

    goto :goto_10

    :cond_20
    const/4 v11, 0x0

    .line 641
    invoke-virtual {v7, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/Method;

    .line 642
    invoke-virtual {v10, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 643
    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    :goto_11
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v16

    const/4 v10, 0x1

    goto/16 :goto_9

    .line 648
    :cond_21
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ClassExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 649
    iput-object v5, v2, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    iput-object v3, v2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 656
    iput-object v4, v2, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    return-object v0

    :catchall_0
    move-exception v0

    .line 655
    iput-object v3, v2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 656
    iput-object v4, v2, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    throw v0
.end method

.method public compilePushClass(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5

    .line 86
    iget-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    .line 88
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 89
    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 92
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v2

    .line 93
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "gnu.bytecode.Type"

    .line 106
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const/4 v3, 0x1

    goto :goto_2

    .line 97
    :cond_2
    :goto_0
    iget-object v3, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-ne v0, v3, :cond_3

    .line 98
    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {p1, v3}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    :goto_1
    const-string v0, "gnu.expr.PairClassType"

    .line 101
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    if-eqz v2, :cond_4

    const/4 v3, 0x3

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    .line 109
    :goto_2
    new-array v4, v3, [Lgnu/bytecode/Type;

    if-eqz v2, :cond_5

    .line 112
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    add-int/lit8 v3, v3, -0x1

    .line 113
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    aput-object v2, v4, v3

    :cond_5
    const-string v2, "java.lang.Class"

    .line 115
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    :goto_3
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_6

    .line 116
    aput-object v2, v4, v3

    goto :goto_3

    :cond_6
    const/16 v2, 0x9

    const-string v3, "make"

    .line 117
    invoke-virtual {v0, v3, v4, v0, v2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 122
    invoke-virtual {p2, p1, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .locals 1

    .line 788
    new-instance v0, Lgnu/expr/ClassInitializer;

    invoke-direct {v0, p0, p1}, Lgnu/expr/ClassInitializer;-><init>(Lgnu/expr/ClassExp;Lgnu/expr/Compilation;)V

    iget-object p1, v0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    return-object p1
.end method

.method public declareParts(Lgnu/expr/Compilation;)V
    .locals 9

    .line 280
    iget-boolean v0, p0, Lgnu/expr/ClassExp;->partsDeclared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lgnu/expr/ClassExp;->partsDeclared:Z

    .line 283
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 285
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    :goto_0
    const-wide/16 v3, 0x800

    if-eqz v2, :cond_5

    .line 289
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 291
    invoke-virtual {v2, v0}, Lgnu/expr/Declaration;->getAccessFlags(S)S

    move-result v5

    .line 292
    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v5, v5, 0x8

    .line 294
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    or-int/lit16 v3, v5, 0x400

    .line 297
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 298
    iget-object v6, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "get"

    invoke-static {v8, v7}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {v6, v7, v3, v8, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    new-array v6, v0, [Lgnu/bytecode/Type;

    aput-object v5, v6, v4

    .line 301
    iget-object v4, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "set"

    invoke-static {v7, v5}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v5, v3, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    goto :goto_1

    .line 306
    :cond_2
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    iget-object v6, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v6, v3, v7, v5}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v5

    iput-object v5, v2, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 310
    invoke-virtual {v2, v4}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 311
    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Declaration;

    if-eqz v4, :cond_3

    .line 313
    invoke-static {v4, v2, p1}, Lgnu/expr/ClassExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 314
    :cond_3
    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    goto :goto_0

    .line 319
    :cond_5
    iget-object v1, p0, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    :goto_2
    if-eqz v1, :cond_d

    .line 322
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x4000

    .line 323
    invoke-virtual {p0, v2}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 324
    :cond_6
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "*init*"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 326
    iput-boolean v0, p0, Lgnu/expr/ClassExp;->explicitInit:Z

    .line 327
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v2

    const/16 v5, 0x65

    if-eqz v2, :cond_7

    const-string v2, "*init* method cannot be abstract"

    .line 328
    invoke-virtual {p1, v5, v2, v1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 329
    :cond_7
    iget-object v2, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    instance-of v2, v2, Lgnu/expr/PairClassType;

    if-eqz v2, :cond_8

    const-string v2, "\'*init*\' methods only supported for simple classes"

    .line 330
    invoke-virtual {p1, v5, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 336
    :cond_8
    iput-object p0, v1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 337
    iget-object v2, p0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    if-eq v1, v2, :cond_9

    iget-object v2, p0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    if-eq v1, v2, :cond_9

    iget-object v2, v1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v2

    if-nez v2, :cond_b

    .line 341
    :cond_a
    iget-object v2, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p1, v5}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 342
    :cond_b
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 343
    iget-object v2, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    iget-object v5, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2, p1, v5}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 320
    :cond_c
    iget-object v1, v1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_2

    .line 345
    :cond_d
    iget-boolean p1, p0, Lgnu/expr/ClassExp;->explicitInit:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result p1

    if-nez p1, :cond_e

    .line 346
    iget-object p1, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-static {p1, p0}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    .line 347
    :cond_e
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isAbstract()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 348
    iget-object p1, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassType;->setModifiers(I)V

    .line 349
    :cond_f
    iget-object p1, p0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz p1, :cond_10

    .line 350
    iget-object p1, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v2, v0}, Lgnu/expr/Declaration;->getAccessFlags(S)S

    move-result v0

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->setModifiers(I)V

    :cond_10
    return-void
.end method

.method public getClassType()Lgnu/bytecode/ClassType;
    .locals 1

    .line 48
    iget-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method protected getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 0

    .line 127
    iget-object p1, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    return-object p1
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .line 44
    iget-boolean v0, p0, Lgnu/expr/ClassExp;->simple:Z

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_0
    sget-object v0, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    :goto_0
    return-object v0
.end method

.method public final isAbstract()Z
    .locals 1

    const/16 v0, 0x4000

    .line 15
    invoke-virtual {p0, v0}, Lgnu/expr/ClassExp;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isMakingClassPair()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    iget-object v1, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSimple()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lgnu/expr/ClassExp;->simple:Z

    return v0
.end method

.method protected mustCompile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 6

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/expr/ClassExp;->getExpClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 739
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    const/16 v0, 0x2f

    .line 743
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(C)V

    .line 745
    :cond_0
    iget v0, p0, Lgnu/expr/ClassExp;->id:I

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(I)V

    const-string v0, "/fl:"

    .line 746
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    iget v0, p0, Lgnu/expr/ClassExp;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    array-length v0, v0

    const/4 v3, 0x0

    if-lez v0, :cond_2

    .line 750
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    const-string v0, "supers:"

    const-string v4, ""

    .line 751
    invoke-virtual {p1, v0, v4, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 752
    :goto_0
    iget-object v2, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    array-length v5, v2

    if-ge v0, v5, :cond_1

    .line 754
    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 755
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 757
    :cond_1
    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x28

    .line 759
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(C)V

    .line 762
    iget-object v0, p0, Lgnu/expr/ClassExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lgnu/expr/ClassExp;->keywords:[Lgnu/expr/Keyword;

    array-length v0, v0

    .line 764
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    if-lez v3, :cond_4

    const/16 v2, 0x20

    .line 767
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 768
    :cond_4
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    add-int/lit8 v3, v3, 0x1

    .line 764
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, ") "

    .line 771
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    :goto_3
    if-eqz v0, :cond_6

    .line 775
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeBreakLinear()V

    .line 776
    invoke-virtual {v0, p1}, Lgnu/expr/LambdaExp;->print(Lgnu/mapping/OutPort;)V

    .line 773
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_3

    .line 778
    :cond_6
    iget-object v0, p0, Lgnu/expr/ClassExp;->body:Lgnu/expr/Expression;

    if-eqz v0, :cond_7

    .line 780
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeBreakLinear()V

    .line 781
    iget-object v0, p0, Lgnu/expr/ClassExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 783
    :cond_7
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    return-void
.end method

.method public setSimple(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lgnu/expr/ClassExp;->simple:Z

    return-void
.end method

.method public setTypes(Lgnu/expr/Compilation;)V
    .locals 11

    .line 132
    iget-object v0, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 133
    :goto_0
    new-array v2, v0, [Lgnu/bytecode/ClassType;

    const/4 v3, 0x0

    move-object v5, v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x65

    if-ge v4, v0, :cond_5

    .line 138
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v8

    iget-object v9, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v8

    .line 139
    instance-of v9, v8, Lgnu/bytecode/ClassType;

    if-nez v9, :cond_1

    .line 141
    iget-object v8, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    aget-object v8, v8, v4

    invoke-virtual {p1, v8}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    const-string v8, "invalid super type"

    .line 142
    invoke-virtual {p1, v7, v8}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_3

    .line 145
    :cond_1
    check-cast v8, Lgnu/bytecode/ClassType;

    .line 149
    :try_start_0
    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    if-eqz p1, :cond_2

    .line 155
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown super-type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v7, v9}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    :cond_2
    const/4 v9, 0x0

    :goto_2
    and-int/lit16 v9, v9, 0x200

    if-nez v9, :cond_4

    if-ge v6, v4, :cond_3

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "duplicate superclass for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v7, v5}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 162
    :cond_3
    iput v4, p0, Lgnu/expr/ClassExp;->superClassIndex:I

    move-object v5, v8

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v6, 0x1

    .line 165
    aput-object v8, v2, v6

    move v6, v7

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const v4, 0x8000

    if-eqz v5, :cond_6

    .line 167
    iget v8, p0, Lgnu/expr/ClassExp;->flags:I

    and-int/2addr v8, v4

    if-eqz v8, :cond_6

    const-string v8, "cannot be interface since has superclass"

    .line 168
    invoke-virtual {p1, v7, v8}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 169
    :cond_6
    iget-boolean v7, p0, Lgnu/expr/ClassExp;->simple:Z

    const/4 v8, 0x1

    if-nez v7, :cond_8

    if-nez v5, :cond_8

    iget v7, p0, Lgnu/expr/ClassExp;->flags:I

    const/high16 v9, 0x10000

    and-int/2addr v7, v9

    if-nez v7, :cond_8

    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Lgnu/expr/ClassExp;->getFlag(I)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 173
    :cond_7
    new-instance v4, Lgnu/expr/PairClassType;

    invoke-direct {v4}, Lgnu/expr/PairClassType;-><init>()V

    .line 174
    iput-object v4, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    .line 175
    invoke-virtual {v4, v8}, Lgnu/expr/PairClassType;->setInterface(Z)V

    .line 176
    iget-object v7, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    iput-object v7, v4, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    new-array v4, v8, [Lgnu/bytecode/ClassType;

    .line 177
    iget-object v7, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    aput-object v7, v4, v1

    .line 179
    iget-object v7, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    sget-object v9, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v9}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 180
    iget-object v7, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v4}, Lgnu/bytecode/ClassType;->setInterfaces([Lgnu/bytecode/ClassType;)V

    goto :goto_4

    .line 182
    :cond_8
    invoke-virtual {p0, v4}, Lgnu/expr/ClassExp;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 183
    iget-object v4, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v8}, Lgnu/bytecode/ClassType;->setInterface(Z)V

    .line 184
    :cond_9
    :goto_4
    iget-object v4, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    if-nez v5, :cond_a

    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    :cond_a
    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    if-ne v6, v0, :cond_b

    goto :goto_5

    .line 191
    :cond_b
    new-array v0, v6, [Lgnu/bytecode/ClassType;

    .line 192
    invoke-static {v2, v1, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    .line 194
    :goto_5
    iget-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/bytecode/ClassType;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 196
    iget-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 199
    iget-object v0, p0, Lgnu/expr/ClassExp;->classNameSpecifier:Ljava/lang/String;

    if-eqz v0, :cond_c

    goto :goto_6

    .line 203
    :cond_c
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 206
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_d

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_d

    sub-int/2addr v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_d

    .line 209
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_d
    :goto_6
    const/16 v2, 0x24

    const/16 v4, 0x64

    if-nez v0, :cond_f

    .line 214
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 215
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    .line 216
    iget-object v0, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 221
    :goto_7
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    if-nez v2, :cond_e

    goto/16 :goto_d

    .line 225
    :cond_e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 228
    :cond_f
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v5

    if-eqz v5, :cond_19

    instance-of v5, p0, Lgnu/expr/ObjectExp;

    if-eqz v5, :cond_10

    goto/16 :goto_c

    .line 233
    :cond_10
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v4, 0x0

    :cond_11
    :goto_8
    const/16 v6, 0x2e

    .line 236
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-gez v7, :cond_18

    if-nez v4, :cond_15

    .line 247
    iget-object v2, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-nez v2, :cond_12

    goto :goto_9

    :cond_12
    iget-object v2, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_9
    if-nez v3, :cond_13

    const/4 v2, -0x1

    goto :goto_a

    .line 249
    :cond_13
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    :goto_a
    if-lez v2, :cond_14

    add-int/2addr v2, v8

    .line 251
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 252
    :cond_14
    iget-object v1, p1, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 253
    iget-object v1, p1, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    :cond_15
    if-ne v4, v8, :cond_16

    .line 255
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_16

    .line 257
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 258
    iget-object v1, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    :cond_16
    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_17

    .line 262
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    :cond_17
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 239
    :cond_18
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v7, 0x1

    .line 242
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_11

    .line 243
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 229
    :cond_19
    :goto_c
    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_d
    iget-object v1, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v0}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 268
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 270
    iget-object v0, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    :cond_1a
    return-void
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 662
    invoke-virtual {p1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 664
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 665
    :cond_0
    iget-object v1, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 669
    :try_start_0
    iget-object v2, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    iput-object v2, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 670
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    iput-object v1, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v1, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    throw p1
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)V"
        }
    .end annotation

    .line 680
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 681
    iput-object p0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 682
    iget-object v1, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    array-length v2, v1

    invoke-virtual {p1, v1, v2, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    .line 685
    :try_start_0
    iget-object v1, p0, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    :goto_0
    if-eqz v1, :cond_1

    .line 686
    iget-object v2, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 689
    iget-object v2, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_0

    .line 691
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 692
    invoke-virtual {v2}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    iget-object v3, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 695
    :cond_0
    invoke-virtual {p1, v1, p2}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v1, v1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 700
    :cond_1
    iput-object v0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    return-void

    :catchall_0
    move-exception p2

    iput-object v0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    throw p2
.end method
