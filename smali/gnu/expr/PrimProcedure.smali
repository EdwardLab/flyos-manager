.class public Lgnu/expr/PrimProcedure;
.super Lgnu/mapping/MethodProc;
.source "PrimProcedure.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field private static systemClassLoader:Ljava/lang/ClassLoader;


# instance fields
.field argTypes:[Lgnu/bytecode/Type;

.field member:Ljava/lang/reflect/Member;

.field method:Lgnu/bytecode/Method;

.field mode:C

.field op_code:I

.field retType:Lgnu/bytecode/Type;

.field sideEffectFree:Z

.field source:Lgnu/expr/LambdaExp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 756
    const-class v0, Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lgnu/expr/PrimProcedure;->systemClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(ILgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .locals 3

    .line 428
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 429
    iput p1, p0, Lgnu/expr/PrimProcedure;->op_code:I

    const/4 v0, 0x0

    const/16 v1, 0xb8

    if-ne p1, v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 430
    :goto_0
    invoke-virtual {p2, p3, v2, p5, p4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object p2

    iput-object p2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    .line 432
    iput-object p4, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 433
    iput-object p5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x56

    .line 434
    :goto_1
    iput-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    return-void
.end method

.method public constructor <init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .locals 0

    .line 403
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 404
    iput p1, p0, Lgnu/expr/PrimProcedure;->op_code:I

    .line 405
    iput-object p2, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 406
    iput-object p3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;)V
    .locals 2

    .line 308
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 309
    invoke-direct {p0, p1}, Lgnu/expr/PrimProcedure;->init(Lgnu/bytecode/Method;)V

    .line 310
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V
    .locals 5

    .line 320
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 321
    iput-char p2, p0, Lgnu/expr/PrimProcedure;->mode:C

    .line 323
    invoke-direct {p0, p1}, Lgnu/expr/PrimProcedure;->init(Lgnu/bytecode/Method;)V

    .line 327
    iget-object p2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 328
    array-length v0, p2

    const/4 v1, 0x0

    .line 329
    iput-object v1, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move v1, v0

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 332
    aget-object v2, p2, v1

    .line 333
    invoke-virtual {p3, v2}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 336
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    if-nez v2, :cond_1

    .line 338
    new-array v2, v0, [Lgnu/bytecode/Type;

    iput-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    const/4 v4, 0x0

    .line 339
    invoke-static {p2, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    :cond_1
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aput-object v3, v2, v1

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    if-nez v0, :cond_3

    .line 345
    iput-object p2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 346
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 347
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    goto :goto_1

    .line 348
    :cond_4
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "$X"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 349
    sget-object p1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object p1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    goto :goto_1

    .line 352
    :cond_5
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p3, p1}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 357
    sget-object p2, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, p2, :cond_6

    .line 358
    sget-object p1, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    iput-object p1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    :cond_6
    :goto_1
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V
    .locals 0

    .line 397
    invoke-direct {p0, p1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 398
    invoke-virtual {p2}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 399
    iput-object p2, p0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V
    .locals 1

    const/4 v0, 0x0

    .line 316
    invoke-direct {p0, p1, v0, p2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 298
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-direct {p0, p1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Lgnu/expr/Language;)V
    .locals 1

    .line 303
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    return-void
.end method

.method private compileArgs([Lgnu/expr/Expression;ILgnu/bytecode/Type;Lgnu/expr/Compilation;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 459
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v4

    .line 460
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->getName()Ljava/lang/String;

    move-result-object v5

    .line 462
    invoke-virtual/range {p4 .. p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 463
    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/4 v9, 0x1

    if-ne v2, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 464
    :goto_0
    iget-object v10, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v10, v10

    sub-int/2addr v10, v7

    .line 465
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v10, v10, -0x1

    .line 467
    :cond_1
    array-length v11, v1

    sub-int v11, v11, p2

    if-eqz v2, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v12, 0x1

    :goto_2
    if-eqz v4, :cond_4

    .line 475
    iget-object v13, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v13}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v13

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_4

    if-lez v11, :cond_4

    iget-object v13, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v13, v13

    if-lez v13, :cond_4

    xor-int/lit8 v13, v12, 0x1

    add-int/2addr v13, v10

    if-ne v11, v13, :cond_4

    .line 479
    array-length v13, v1

    sub-int/2addr v13, v9

    aget-object v13, v1, v13

    invoke-virtual {v13}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v13

    .line 480
    iget-object v14, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v15, v14

    sub-int/2addr v15, v9

    aget-object v14, v14, v15

    .line 481
    instance-of v15, v13, Lgnu/bytecode/ObjectType;

    if-eqz v15, :cond_4

    instance-of v15, v14, Lgnu/bytecode/ArrayType;

    if-eqz v15, :cond_4

    check-cast v14, Lgnu/bytecode/ArrayType;

    invoke-virtual {v14}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v14

    instance-of v14, v14, Lgnu/bytecode/ArrayType;

    if-nez v14, :cond_4

    .line 486
    instance-of v4, v13, Lgnu/bytecode/ArrayType;

    xor-int/2addr v4, v9

    move v13, v4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    if-eqz v4, :cond_5

    sub-int v14, v10, v12

    goto :goto_4

    .line 491
    :cond_5
    array-length v14, v1

    sub-int v14, v14, p2

    .line 492
    :goto_4
    iget-object v15, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    const/16 v16, 0x0

    if-nez v15, :cond_6

    move-object/from16 v15, v16

    goto :goto_5

    :cond_6
    invoke-virtual {v15}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v15

    :goto_5
    if-eqz v15, :cond_7

    .line 493
    invoke-virtual {v15}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 494
    invoke-virtual {v15}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v15

    :cond_7
    const/4 v8, 0x0

    :goto_6
    if-eqz v4, :cond_a

    if-ne v8, v14, :cond_a

    .line 499
    iget-object v2, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    add-int/lit8 v16, v10, -0x1

    add-int v16, v16, v7

    aget-object v2, v2, v16

    .line 500
    sget-object v9, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    if-eq v2, v9, :cond_9

    sget-object v9, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    if-ne v2, v9, :cond_8

    goto :goto_7

    .line 505
    :cond_8
    array-length v9, v1

    sub-int v9, v9, p2

    sub-int/2addr v9, v14

    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 506
    check-cast v2, Lgnu/bytecode/ArrayType;

    invoke-virtual {v2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 507
    invoke-virtual {v6, v2}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    move-object/from16 v16, v2

    goto :goto_8

    :cond_9
    :goto_7
    add-int v2, p2, v8

    .line 502
    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/MakeList;->compile([Lgnu/expr/Expression;ILgnu/expr/Compilation;)V

    goto :goto_9

    :cond_a
    :goto_8
    if-lt v8, v11, :cond_b

    :goto_9
    return-void

    :cond_b
    if-eqz v13, :cond_c

    add-int/lit8 v2, v8, 0x1

    if-ne v2, v11, :cond_c

    const/4 v2, 0x1

    goto :goto_a

    :cond_c
    const/4 v2, 0x0

    :goto_a
    if-lt v8, v14, :cond_d

    const/4 v9, 0x1

    .line 514
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    sub-int v9, v8, v14

    .line 515
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    move-object/from16 v9, v16

    goto :goto_b

    :cond_d
    if-eqz v15, :cond_f

    if-nez v12, :cond_e

    if-lez v8, :cond_f

    .line 518
    :cond_e
    invoke-virtual {v15}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    goto :goto_b

    :cond_f
    if-eqz v12, :cond_10

    iget-object v9, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    add-int v16, v8, v7

    aget-object v9, v9, v16

    goto :goto_b

    :cond_10
    if-nez v8, :cond_11

    move-object/from16 v9, p3

    goto :goto_b

    :cond_11
    iget-object v9, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    add-int/lit8 v16, v8, -0x1

    aget-object v9, v9, v16

    .line 522
    :goto_b
    invoke-virtual {v3, v9}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    if-eqz v2, :cond_12

    .line 523
    sget-object v16, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move/from16 v18, v7

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    goto :goto_c

    :cond_12
    move/from16 v16, v4

    move/from16 v18, v7

    move-object v4, v9

    .line 524
    :goto_c
    iget-object v7, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    if-nez v7, :cond_13

    add-int/lit8 v7, v8, 0x1

    invoke-static {v4, v5, v7}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Ljava/lang/String;I)Lgnu/expr/Target;

    move-result-object v4

    goto :goto_d

    :cond_13
    invoke-static {v4, v7, v8}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)Lgnu/expr/Target;

    move-result-object v4

    :goto_d
    add-int v7, p2, v8

    .line 527
    aget-object v7, v1, v7

    invoke-virtual {v7, v3, v4, v7}, Lgnu/expr/Expression;->compileNotePosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    if-eqz v2, :cond_14

    .line 532
    move-object v2, v9

    check-cast v2, Lgnu/bytecode/ArrayType;

    invoke-virtual {v2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 533
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 534
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitInstanceof(Lgnu/bytecode/Type;)V

    .line 535
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 536
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 537
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitElse()V

    const/4 v4, 0x1

    .line 538
    invoke-virtual {v6, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 539
    invoke-virtual {v6, v2}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 540
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 541
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    const/4 v7, 0x0

    .line 542
    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 543
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 544
    invoke-virtual {v2, v6}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 545
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 546
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_e

    :cond_14
    const/4 v4, 0x1

    const/4 v7, 0x0

    :goto_e
    if-lt v8, v14, :cond_15

    .line 549
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    :cond_15
    if-eqz v15, :cond_17

    if-nez v12, :cond_16

    if-lez v8, :cond_17

    .line 551
    :cond_16
    invoke-virtual {v15}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    move-object v15, v2

    :cond_17
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p3

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v16, v9

    const/4 v9, 0x1

    goto/16 :goto_6
.end method

.method public static compileInvoke(Lgnu/expr/Compilation;Lgnu/bytecode/Method;Lgnu/expr/Target;ZILgnu/bytecode/Type;)V
    .locals 6

    .line 657
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 658
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 659
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 660
    invoke-static {p1}, Lgnu/expr/PrimProcedure;->takesContext(Lgnu/bytecode/Method;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 662
    invoke-virtual {v0, p1, p4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    goto :goto_0

    .line 664
    :cond_0
    instance-of p5, p2, Lgnu/expr/IgnoreTarget;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p5, :cond_2

    instance-of v3, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v3, :cond_1

    move-object v3, p2

    check-cast v3, Lgnu/expr/ConsumerTarget;

    invoke-virtual {v3}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 707
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 708
    sget-object p5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 709
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 710
    sget-object p3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object p3

    .line 711
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 712
    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v4, "startFromContext"

    invoke-virtual {v3, v4, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 714
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 715
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitWithCleanupStart()V

    .line 716
    invoke-virtual {v0, p1, p4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 717
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitWithCleanupCatch(Lgnu/bytecode/Variable;)V

    .line 718
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 719
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 720
    sget-object p1, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string p4, "cleanupFromContext"

    const/4 v1, 0x1

    invoke-virtual {p1, p4, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 722
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitWithCleanupDone()V

    .line 723
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 724
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 725
    sget-object p1, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string p3, "getFromContext"

    invoke-virtual {p1, p3, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 727
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 729
    :goto_0
    invoke-virtual {p2, p0, p5}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void

    .line 670
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    if-eqz p5, :cond_3

    .line 673
    sget-object p2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v2, "consumer"

    .line 674
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v2

    .line 678
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 679
    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object p2

    .line 680
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 681
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 682
    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 683
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    const-string v3, "gnu.lists.VoidConsumer"

    .line 684
    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "instance"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 686
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    move-object v5, v2

    move-object v2, p2

    move-object p2, v5

    goto :goto_2

    :cond_3
    move-object p2, v2

    .line 688
    :goto_2
    invoke-virtual {v0, p1, p4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    if-eqz p3, :cond_4

    .line 691
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 692
    sget-object p1, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string p3, "runUntilDone"

    invoke-virtual {p1, p3, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    :cond_4
    if-eqz p5, :cond_5

    .line 698
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 699
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 700
    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 701
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    :cond_5
    return-void
.end method

.method public static disassemble(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassTypeWriter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 825
    instance-of v0, p0, Lgnu/expr/GenericProc;

    if-eqz v0, :cond_3

    .line 827
    check-cast p0, Lgnu/expr/GenericProc;

    .line 828
    invoke-virtual {p0}, Lgnu/expr/GenericProc;->getMethodCount()I

    move-result v0

    const-string v1, "Generic procedure with "

    .line 829
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v1, " method."

    goto :goto_0

    :cond_0
    const-string v1, "methods."

    .line 831
    :goto_0
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 834
    invoke-virtual {p0, v1}, Lgnu/expr/GenericProc;->getMethod(I)Lgnu/mapping/MethodProc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 837
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 838
    invoke-static {v2, p1}, Lgnu/expr/PrimProcedure;->disassemble(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassTypeWriter;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 844
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 845
    instance-of v2, p0, Lgnu/expr/ModuleMethod;

    if-eqz v2, :cond_4

    .line 846
    move-object v1, p0

    check-cast v1, Lgnu/expr/ModuleMethod;

    iget-object v1, v1, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 847
    :cond_4
    instance-of v2, p0, Lgnu/expr/PrimProcedure;

    if-eqz v2, :cond_5

    .line 849
    move-object v2, p0

    check-cast v2, Lgnu/expr/PrimProcedure;

    iget-object v2, v2, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v2, :cond_5

    .line 852
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    .line 853
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 856
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 857
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 858
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 859
    new-instance v4, Lgnu/bytecode/ClassType;

    invoke-direct {v4}, Lgnu/bytecode/ClassType;-><init>()V

    .line 860
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 863
    new-instance v6, Lgnu/bytecode/ClassFileInput;

    invoke-direct {v6, v4, v5}, Lgnu/bytecode/ClassFileInput;-><init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V

    .line 864
    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->setClass(Lgnu/bytecode/ClassType;)V

    .line 865
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    const-string v3, "In class "

    .line 866
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    if-eqz v2, :cond_6

    const-string v1, " at "

    .line 870
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/Object;)V

    .line 873
    :cond_6
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    if-nez v0, :cond_8

    .line 876
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    const-string p0, "Anonymous function - unknown method."

    .line 879
    invoke-virtual {p1, p0}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    return-void

    .line 882
    :cond_7
    invoke-static {p0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    :cond_8
    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getMethods()Lgnu/bytecode/Method;

    move-result-object p0

    :goto_3
    if-eqz p0, :cond_a

    .line 887
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 888
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 889
    invoke-virtual {p1, p0}, Lgnu/bytecode/ClassTypeWriter;->printMethod(Lgnu/bytecode/Method;)V

    .line 885
    :cond_9
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object p0

    goto :goto_3

    .line 892
    :cond_a
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    return-void

    .line 862
    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "missing resource "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static disassemble(Lgnu/mapping/Procedure;Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 819
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V

    invoke-static {p0, v0}, Lgnu/expr/PrimProcedure;->disassemble(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassTypeWriter;)V

    return-void
.end method

.method public static disassemble$X(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 812
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 813
    instance-of v0, p1, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/lists/ConsumerWriter;

    invoke-direct {v0, p1}, Lgnu/lists/ConsumerWriter;-><init>(Lgnu/lists/Consumer;)V

    move-object p1, v0

    :goto_0
    invoke-static {p0, p1}, Lgnu/expr/PrimProcedure;->disassemble(Lgnu/mapping/Procedure;Ljava/io/Writer;)V

    return-void
.end method

.method public static getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 943
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 944
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "$V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 945
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "$V$X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 946
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "$X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 948
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v2

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    :goto_0
    if-eqz v7, :cond_d

    .line 951
    :try_start_1
    invoke-virtual {v7}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v15

    const/16 v8, 0x9

    and-int/2addr v15, v8

    if-eq v15, v8, :cond_1

    if-eqz v1, :cond_4

    .line 955
    iget-object v8, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v8, :cond_1

    goto :goto_1

    .line 958
    :cond_1
    invoke-virtual {v7}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 960
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v12, :cond_4

    const-string v15, "apply"

    .line 967
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "apply$V"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    :goto_1
    move-object/from16 v10, p3

    move-object/from16 v9, p4

    move-object v15, v2

    goto :goto_8

    :cond_5
    :goto_2
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_7

    if-eqz v14, :cond_6

    move-object v11, v2

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    .line 985
    :cond_7
    :goto_4
    new-instance v15, Lgnu/expr/PrimProcedure;

    move-object/from16 v9, p4

    invoke-direct {v15, v7, v9}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    .line 986
    invoke-virtual {v15, v0}, Lgnu/expr/PrimProcedure;->setName(Ljava/lang/String;)V

    move-object/from16 v10, p3

    .line 987
    invoke-virtual {v15, v10}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v2

    if-ltz v2, :cond_c

    if-ge v2, v13, :cond_8

    goto :goto_7

    :cond_8
    if-le v2, v13, :cond_9

    move-object v11, v15

    goto :goto_5

    :cond_9
    if-eqz v11, :cond_b

    .line 996
    invoke-static {v11, v15}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v14

    check-cast v14, Lgnu/expr/PrimProcedure;

    if-nez v14, :cond_a

    if-lez v13, :cond_a

    const/4 v15, 0x0

    return-object v15

    :cond_a
    const/4 v15, 0x0

    move-object v11, v14

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v15, 0x0

    :goto_6
    move v13, v2

    move v14, v8

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v15, 0x0

    .line 949
    :goto_8
    invoke-virtual {v7}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v15

    goto/16 :goto_0

    :catch_0
    move-object v2, v11

    goto :goto_9

    :catch_1
    move-object v15, v2

    :goto_9
    move-object v11, v2

    :cond_d
    return-object v11
.end method

.method public static getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 3

    .line 926
    array-length v0, p3

    .line 927
    new-array v1, v0, [Lgnu/bytecode/Type;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 928
    aget-object v2, p3, v0

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    .line 929
    :cond_0
    invoke-static {p0, p1, p2, v1, p4}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 4

    .line 779
    instance-of v0, p0, Lgnu/expr/GenericProc;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 781
    check-cast p0, Lgnu/expr/GenericProc;

    .line 782
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    .line 784
    iget p0, p0, Lgnu/expr/GenericProc;->count:I

    move-object v2, v1

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_2

    .line 786
    aget-object v3, v0, p0

    invoke-virtual {v3, p2}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    return-object v1

    .line 791
    :cond_1
    aget-object v2, v0, p0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    return-object v1

    :cond_3
    move-object p0, v2

    .line 796
    :cond_4
    instance-of v0, p0, Lgnu/expr/PrimProcedure;

    if-eqz v0, :cond_5

    .line 798
    move-object v0, p0

    check-cast v0, Lgnu/expr/PrimProcedure;

    .line 799
    invoke-virtual {v0, p2}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v2

    if-ltz v2, :cond_5

    return-object v0

    .line 802
    :cond_5
    invoke-static {p0}, Lgnu/expr/PrimProcedure;->getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_6

    return-object v1

    .line 805
    :cond_6
    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1, p2, p3}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 3

    .line 770
    array-length v0, p2

    .line 771
    new-array v1, v0, [Lgnu/bytecode/Type;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 772
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    .line 773
    :cond_0
    invoke-static {p0, p1, v1, p3}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .locals 2

    .line 761
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodFor(Ljava/lang/Class;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 0

    .line 918
    invoke-static {p0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    check-cast p0, Lgnu/bytecode/ClassType;

    invoke-static {p0, p1, p2, p3, p4}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object p0

    return-object p0
.end method

.method public static getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2

    .line 898
    instance-of v0, p0, Lgnu/expr/ModuleMethod;

    if-eqz v0, :cond_0

    .line 899
    check-cast p0, Lgnu/expr/ModuleMethod;

    iget-object p0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 901
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 904
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lgnu/expr/PrimProcedure;->systemClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_1

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private init(Lgnu/bytecode/Method;)V
    .locals 4

    .line 364
    iput-object p1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    .line 365
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/16 v0, 0xb8

    .line 367
    iput v0, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 371
    iget-char v1, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v2, 0x50

    const/16 v3, 0xb7

    if-ne v1, v2, :cond_1

    .line 372
    iput v3, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x56

    .line 375
    iput-char v1, p0, Lgnu/expr/PrimProcedure;->mode:C

    .line 376
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<init>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    iput v3, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0

    .line 378
    :cond_2
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    const/16 v0, 0xb9

    .line 379
    iput v0, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0

    :cond_3
    const/16 v0, 0xb6

    .line 381
    iput v0, p0, Lgnu/expr/PrimProcedure;->op_code:I

    .line 384
    :goto_0
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v0

    .line 385
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 387
    array-length p1, v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 388
    new-array v2, p1, [Lgnu/bytecode/Type;

    const/4 v3, 0x0

    .line 389
    invoke-static {v0, v1, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 392
    :cond_4
    iput-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    return-void
.end method

.method public static makeBuiltinBinary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/bytecode/Type;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 423
    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p0, p1, v0}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    return-object v1
.end method

.method public static makeBuiltinUnary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/bytecode/Type;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 414
    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p0, p1, v0}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    return-object v1
.end method

.method public static takesContext(Lgnu/bytecode/Method;)Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "$X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v0, v0

    .line 241
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 242
    iget-object v4, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 246
    :goto_0
    :try_start_0
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    if-nez v5, :cond_6

    .line 248
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v5}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    add-int/2addr v6, v0

    .line 249
    new-array v6, v6, [Ljava/lang/Class;

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    if-eqz v4, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    add-int/2addr v7, v0

    .line 251
    iget-object v8, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    .line 253
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getOuterLinkType()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v6, v3

    :cond_4
    if-eqz v1, :cond_5

    .line 255
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    goto :goto_4

    .line 256
    :cond_5
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    sget-object v7, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    if-eq v0, v7, :cond_6

    .line 257
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    :cond_6
    :goto_4
    if-eqz v1, :cond_8

    .line 262
    iget-object v0, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 265
    array-length v1, v0

    add-int/2addr v1, v2

    .line 266
    new-array v4, v1, [Ljava/lang/Object;

    sub-int/2addr v1, v2

    .line 267
    invoke-static {v0, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    iget-object v0, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    check-cast v0, Lgnu/expr/PairClassType;

    iget-object v0, v0, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    aput-object v0, v4, v3

    move-object v0, v4

    .line 272
    :cond_7
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 275
    :cond_8
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    sget-object v1, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    if-ne v0, v1, :cond_9

    .line 278
    iget-object v0, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 279
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 280
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 281
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 282
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_5

    .line 285
    :cond_9
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    iget-object v1, p0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    check-cast v1, Ljava/lang/reflect/Method;

    iget-object v2, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iget-object v3, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 287
    :goto_5
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v1

    if-nez v1, :cond_a

    .line 288
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return-void

    :catch_0
    move-exception p1

    .line 292
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

.method compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .line 603
    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 604
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 605
    iget-object v7, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 607
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 609
    iget-object p1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez p1, :cond_0

    move-object p1, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p1

    .line 610
    :goto_0
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    aget-object v2, v0, v3

    invoke-static {v2, p1, p3}, Lgnu/expr/ClassExp;->loadSuperStaticLink(Lgnu/expr/Expression;Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    :cond_1
    :goto_1
    move-object p1, v5

    goto :goto_3

    .line 619
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result v2

    const/16 v6, 0xb7

    if-ne v2, v6, :cond_4

    iget-char v2, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v6, 0x50

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "<init>"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 622
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v2, :cond_3

    move-object v2, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 623
    :goto_2
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 625
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 627
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object p1

    invoke-virtual {p1, v4}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_1

    .line 632
    :cond_4
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_3
    const/4 v3, 0x1

    .line 635
    :cond_5
    invoke-direct {p0, v0, v3, p1, p3}, Lgnu/expr/PrimProcedure;->compileArgs([Lgnu/expr/Expression;ILgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 637
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v3, :cond_6

    .line 639
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result p1

    array-length p2, v0

    iget-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    invoke-virtual {v1, p1, p2, v0}, Lgnu/bytecode/CodeAttr;->emitPrimop(IILgnu/bytecode/Type;)V

    .line 640
    invoke-virtual {p4, p3, v7}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_4

    .line 644
    :cond_6
    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v5

    iget v6, p0, Lgnu/expr/PrimProcedure;->op_code:I

    move-object v2, p3

    move-object v4, p4

    invoke-static/range {v2 .. v7}, Lgnu/expr/PrimProcedure;->compileInvoke(Lgnu/expr/Compilation;Lgnu/bytecode/Method;Lgnu/expr/Target;ZILgnu/bytecode/Type;)V

    :goto_4
    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .line 557
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 559
    :goto_0
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 560
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    .line 562
    invoke-virtual {p1, v4}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 575
    array-length v0, v3

    .line 576
    invoke-virtual {p2}, Lgnu/expr/Compilation;->letStart()V

    .line 577
    new-array v1, v0, [Lgnu/expr/Expression;

    const/4 v4, 0x0

    .line 578
    aget-object v5, v3, v4

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_1
    if-ge v5, v0, :cond_1

    .line 581
    aget-object v6, v3, v5

    .line 582
    invoke-virtual {v6}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {p2, v2, v7, v6}, Lgnu/expr/Compilation;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v6

    .line 583
    invoke-virtual {v6, v4}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 584
    new-instance v7, Lgnu/expr/ReferenceExp;

    invoke-direct {v7, v6}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 586
    :cond_1
    invoke-virtual {p2}, Lgnu/expr/Compilation;->letEnter()V

    .line 587
    new-instance v0, Lgnu/expr/ApplyExp;

    iget-object p1, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-direct {v0, p1, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, v0}, Lgnu/expr/Compilation;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object p1

    .line 588
    invoke-virtual {p1, p2, p3}, Lgnu/expr/LetExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 591
    :cond_2
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 592
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 594
    :cond_3
    array-length v0, v3

    invoke-static {p0, v0}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v3, 0x65

    .line 596
    invoke-virtual {p2, v3, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 598
    :cond_4
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    invoke-virtual {p0, v2, p1, p2, p3}, Lgnu/expr/PrimProcedure;->compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public getMethod()Lgnu/bytecode/Method;
    .locals 1

    .line 43
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1015
    invoke-super {p0}, Lgnu/mapping/MethodProc;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->getVerboseName()Ljava/lang/String;

    move-result-object v0

    .line 1019
    invoke-virtual {p0, v0}, Lgnu/expr/PrimProcedure;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public getParameterType(I)Lgnu/bytecode/Type;
    .locals 3

    .line 734
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 737
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 741
    :cond_2
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v1, v0

    add-int/lit8 v2, v1, -0x1

    if-ge p1, v2, :cond_3

    .line 743
    aget-object p1, v0, p1

    return-object p1

    .line 744
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v0

    if-ge p1, v1, :cond_4

    if-nez v0, :cond_4

    .line 746
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aget-object p1, v0, p1

    return-object p1

    .line 748
    :cond_4
    iget-object p1, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aget-object p1, p1, v2

    .line 749
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_5

    .line 750
    check-cast p1, Lgnu/bytecode/ArrayType;

    invoke-virtual {p1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 752
    :cond_5
    sget-object p1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    return-object p1
.end method

.method public final getParameterTypes()[Lgnu/bytecode/Type;
    .locals 1

    .line 445
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getReturnType()Lgnu/bytecode/Type;
    .locals 1

    .line 36
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 41
    iget-object p1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-object p1
.end method

.method public final getStaticFlag()Z
    .locals 1

    .line 440
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getVerboseName()Ljava/lang/String;
    .locals 3

    .line 1025
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1026
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v1, :cond_0

    const-string v1, "<op "

    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1029
    iget v1, p0, Lgnu/expr/PrimProcedure;->op_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    .line 1030
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1034
    :cond_0
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    .line 1035
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1036
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/16 v1, 0x28

    .line 1038
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 1039
    :goto_1
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0x2c

    .line 1042
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1043
    :cond_1
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0x29

    .line 1045
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1046
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isApplicable([Lgnu/bytecode/Type;)I
    .locals 4

    .line 80
    invoke-super {p0, p1}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v0

    .line 81
    array-length v1, p1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 82
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-object v3, p1, v2

    instance-of v3, v3, Lgnu/bytecode/ArrayType;

    if-eqz v3, :cond_0

    .line 88
    new-array v0, v1, [Lgnu/bytecode/Type;

    const/4 v1, 0x0

    .line 89
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    aget-object p1, p1, v2

    check-cast p1, Lgnu/bytecode/ArrayType;

    invoke-virtual {p1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p1

    aput-object p1, v0, v2

    .line 91
    invoke-super {p0, v0}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final isConstructor()Z
    .locals 2

    .line 99
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result v0

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    iget-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSideEffectFree()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lgnu/expr/PrimProcedure;->sideEffectFree:Z

    return v0
.end method

.method public isSpecial()Z
    .locals 2

    .line 39
    iget-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 1

    .line 132
    sget-object v0, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 138
    invoke-virtual {p0, v0, p2}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 144
    invoke-virtual {p0, v0, p3}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 150
    invoke-virtual {p0, v0, p4}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 157
    invoke-virtual {p0, v0, p5}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 12

    .line 162
    array-length v0, p1

    .line 163
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v1

    .line 164
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->minArgs()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v2

    return p1

    :cond_0
    if-nez v1, :cond_1

    if-le v0, v2, :cond_1

    const/high16 p1, -0xe0000

    or-int/2addr p1, v2

    return p1

    .line 169
    :cond_1
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v3, v3

    .line 172
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    .line 173
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v7

    .line 174
    new-array v8, v3, [Ljava/lang/Object;

    if-eqz v7, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 176
    aput-object p2, v8, v3

    :cond_4
    const/4 v7, 0x0

    if-eqz v1, :cond_7

    .line 180
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    sub-int/2addr v3, v6

    aget-object v1, v1, v3

    .line 181
    sget-object v9, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    if-eq v1, v9, :cond_6

    sget-object v9, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    if-ne v1, v9, :cond_5

    goto :goto_2

    .line 189
    :cond_5
    check-cast v1, Lgnu/bytecode/ArrayType;

    .line 190
    invoke-virtual {v1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v9

    sub-int/2addr v0, v2

    .line 192
    invoke-static {v9, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 194
    aput-object v0, v8, v3

    goto :goto_3

    .line 183
    :cond_6
    :goto_2
    invoke-static {p1, v2}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    aput-object v0, v8, v3

    .line 185
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v0, v7

    goto :goto_3

    :cond_7
    move-object v0, v7

    move-object v1, v0

    .line 197
    :goto_3
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 198
    aget-object v7, p1, v5

    goto :goto_4

    :cond_8
    if-eqz v4, :cond_9

    .line 203
    :try_start_0
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v3

    aget-object v7, p1, v5

    invoke-virtual {v3, v7}, Lgnu/bytecode/ClassType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const p1, -0xbffff

    return p1

    :cond_9
    :goto_4
    move v3, v4

    .line 212
    :goto_5
    array-length v9, p1

    if-ge v3, v9, :cond_e

    .line 214
    aget-object v9, p1, v3

    if-ge v3, v2, :cond_a

    .line 215
    iget-object v10, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    sub-int v11, v3, v4

    aget-object v10, v10, v11

    goto :goto_6

    :cond_a
    move-object v10, v1

    .line 216
    :goto_6
    sget-object v11, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq v10, v11, :cond_b

    .line 220
    :try_start_1
    invoke-virtual {v10, v9}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    const/high16 p1, -0xc0000

    add-int/2addr v3, v6

    or-int/2addr p1, v3

    return p1

    :cond_b
    :goto_7
    if-ge v3, v2, :cond_c

    sub-int v10, v3, v4

    .line 228
    aput-object v9, v8, v10

    goto :goto_8

    :cond_c
    if-eqz v0, :cond_d

    sub-int v10, v3, v2

    .line 230
    aput-object v9, v0, v10

    :cond_d
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 232
    :cond_e
    iput-object v7, p2, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 233
    iput-object v8, p2, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 234
    iput-object p0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v5
.end method

.method public numArgs()I
    .locals 2

    .line 122
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v0, v0

    .line 123
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 127
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    add-int/lit16 v0, v0, -0x1000

    goto :goto_0

    :cond_2
    shl-int/lit8 v1, v0, 0xc

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public final opcode()I
    .locals 1

    .line 34
    iget v0, p0, Lgnu/expr/PrimProcedure;->op_code:I

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "#<primitive procedure "

    .line 1061
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3e

    .line 1063
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public setReturnType(Lgnu/bytecode/Type;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-void
.end method

.method public setSideEffectFree()V
    .locals 1

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lgnu/expr/PrimProcedure;->sideEffectFree:Z

    return-void
.end method

.method public takesContext()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lgnu/expr/PrimProcedure;->takesContext(Lgnu/bytecode/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public takesTarget()Z
    .locals 1

    .line 112
    iget-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public takesVarArgs()Z
    .locals 4

    .line 58
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 62
    :cond_0
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "$V"

    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "$V$X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1052
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1053
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    if-nez v1, :cond_0

    const-string v1, "<unknown>"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    .line 1054
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1055
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->getVerboseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1056
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
