.class public Lgnu/expr/LitTable;
.super Ljava/lang/Object;
.source "LitTable.java"

# interfaces
.implements Ljava/io/ObjectOutput;


# static fields
.field static staticTable:Lgnu/mapping/Table2D;


# instance fields
.field comp:Lgnu/expr/Compilation;

.field literalTable:Ljava/util/IdentityHashMap;

.field literalsChain:Lgnu/expr/Literal;

.field literalsCount:I

.field mainClass:Lgnu/bytecode/ClassType;

.field stackPointer:I

.field typeStack:[Lgnu/bytecode/Type;

.field valueStack:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lgnu/mapping/Table2D;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lgnu/mapping/Table2D;-><init>(I)V

    sput-object v0, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/IdentityHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    const/16 v0, 0x14

    new-array v1, v0, [Ljava/lang/Object;

    .line 82
    iput-object v1, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    new-array v0, v0, [Lgnu/bytecode/Type;

    .line 83
    iput-object v0, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    .line 47
    iput-object p1, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    .line 48
    iget-object p1, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    iput-object p1, p0, Lgnu/expr/LitTable;->mainClass:Lgnu/bytecode/ClassType;

    return-void
.end method

.method private store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V
    .locals 1

    .line 528
    iget-object v0, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 531
    iget-object p2, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {p3, p2}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 532
    :cond_0
    iget-object p2, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {p3, p2}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 534
    :cond_1
    iget p2, p1, Lgnu/expr/Literal;->flags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lgnu/expr/Literal;->flags:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public emit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    :goto_0
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 65
    iget-object v0, v0, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    :goto_1
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 72
    iget-object v0, v0, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lgnu/expr/LitTable;->literalsCount:I

    return-void
.end method

.method emit(Lgnu/expr/Literal;Z)V
    .locals 11

    .line 539
    iget-object v0, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 540
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    if-nez p2, :cond_1d

    .line 543
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    goto/16 :goto_9

    .line 545
    :cond_0
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    if-nez p2, :cond_1d

    .line 548
    iget-object p1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 550
    :cond_1
    iget v1, p1, Lgnu/expr/Literal;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    if-nez p2, :cond_1d

    .line 553
    iget-object p1, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto/16 :goto_9

    .line 555
    :cond_2
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 557
    iget-object v1, p1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    array-length v1, v1

    .line 558
    iget-object v3, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    check-cast v3, Lgnu/bytecode/ArrayType;

    invoke-virtual {v3}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 559
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 560
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 561
    invoke-direct {p0, p1, p2, v0}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_1d

    .line 564
    iget-object v4, p1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    aget-object v4, v4, p2

    check-cast v4, Lgnu/expr/Literal;

    .line 565
    iget-object v5, v4, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    if-nez v5, :cond_3

    goto :goto_1

    .line 567
    :cond_3
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 568
    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 569
    invoke-virtual {p0, v4, v2}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 570
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 573
    :cond_4
    iget-object v1, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    instance-of v1, v1, Lgnu/bytecode/ArrayType;

    if-eqz v1, :cond_5

    .line 575
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    iget-object v2, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    check-cast v2, Lgnu/bytecode/ArrayType;

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushPrimArray(Ljava/lang/Object;Lgnu/bytecode/ArrayType;)V

    .line 576
    invoke-direct {p0, p1, p2, v0}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_9

    .line 578
    :cond_5
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Class;

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 580
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    .line 581
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 583
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "int"

    .line 584
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v1, "integer"

    .line 586
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "java.lang."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 589
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_2

    .line 592
    :cond_7
    iget-object v2, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ObjectType;

    invoke-virtual {v2, v1}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 593
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_9

    .line 595
    :cond_8
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/bytecode/ClassType;

    const-string v4, "make"

    const-string v5, "valueOf"

    if-eqz v1, :cond_a

    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v1

    if-nez v1, :cond_a

    .line 601
    iget-object v1, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    iget-object v2, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    check-cast v2, Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 602
    sget-object v1, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v5, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    if-nez v1, :cond_9

    .line 604
    sget-object v1, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v4, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 605
    :cond_9
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 606
    sget-object v1, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 607
    invoke-direct {p0, p1, p2, v0}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_9

    .line 611
    :cond_a
    iget-object v1, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    check-cast v1, Lgnu/bytecode/ClassType;

    .line 612
    iget v6, p1, Lgnu/expr/Literal;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    goto :goto_3

    :cond_b
    const/4 v6, 0x0

    :goto_3
    const-string v7, "<init>"

    const/4 v8, 0x0

    if-nez v6, :cond_11

    .line 620
    iget-object v9, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-nez v9, :cond_c

    .line 621
    invoke-virtual {p0, v1, v5, p1, v3}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v5

    goto :goto_4

    :cond_c
    move-object v5, v8

    :goto_4
    if-nez v5, :cond_e

    .line 622
    iget-object v9, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v9, v9, Lgnu/mapping/Values;

    if-nez v9, :cond_e

    .line 628
    iget-object v5, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/util/regex/Pattern;

    if-eqz v5, :cond_d

    const-string v4, "compile"

    .line 631
    :cond_d
    invoke-virtual {p0, v1, v4, p1, v3}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v5

    :cond_e
    if-eqz v5, :cond_f

    const/4 v4, 0x1

    goto :goto_5

    .line 636
    :cond_f
    iget-object v4, p1, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    array-length v4, v4

    if-lez v4, :cond_10

    .line 637
    invoke-virtual {p0, v1, v7, p1, v2}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v5

    :cond_10
    const/4 v4, 0x0

    :goto_5
    if-nez v5, :cond_12

    const/4 v6, 0x1

    goto :goto_6

    :cond_11
    move-object v5, v8

    const/4 v4, 0x0

    :cond_12
    :goto_6
    if-eqz v6, :cond_13

    const-string v5, "set"

    .line 644
    invoke-virtual {p0, v1, v5, p1, v2}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v5

    :cond_13
    if-nez v5, :cond_14

    .line 647
    iget-object v9, p1, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    array-length v9, v9

    if-lez v9, :cond_14

    .line 648
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no method to construct "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    :cond_14
    if-eqz v4, :cond_15

    .line 651
    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 652
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_7

    :cond_15
    if-eqz v6, :cond_16

    .line 656
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 657
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 658
    invoke-virtual {v1, v7, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    .line 659
    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto :goto_7

    .line 663
    :cond_16
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 664
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 665
    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 666
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    :goto_7
    if-nez v4, :cond_18

    .line 668
    iget-object v4, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v4, v4, Lgnu/mapping/Values;

    if-eqz v4, :cond_17

    goto :goto_8

    :cond_17
    const-string v4, "readResolve"

    invoke-virtual {v1, v4, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    :cond_18
    :goto_8
    if-eqz v8, :cond_19

    .line 673
    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 674
    invoke-virtual {v1, v0}, Lgnu/bytecode/ClassType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    :cond_19
    if-eqz p2, :cond_1b

    if-eqz v6, :cond_1a

    if-nez v5, :cond_1b

    :cond_1a
    const/4 v2, 0x1

    .line 676
    :cond_1b
    invoke-direct {p0, p1, v2, v0}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    if-eqz v6, :cond_1d

    if-eqz v5, :cond_1d

    if-nez p2, :cond_1c

    .line 680
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 681
    :cond_1c
    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 682
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    :cond_1d
    :goto_9
    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 1

    .line 104
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;
    .locals 10

    if-nez p1, :cond_0

    .line 295
    sget-object p1, Lgnu/expr/Literal;->nullLiteral:Lgnu/expr/Literal;

    return-object p1

    .line 296
    :cond_0
    iget-object v0, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Literal;

    if-eqz v0, :cond_1

    return-object v0

    .line 299
    :cond_1
    iget-object v0, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v0, :cond_2

    .line 300
    new-instance v0, Lgnu/expr/Literal;

    invoke-direct {v0, p1, p0}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/expr/LitTable;)V

    return-object v0

    .line 301
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 302
    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 304
    sget-object v2, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    monitor-enter v2

    .line 306
    :try_start_0
    sget-object v3, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v4}, Lgnu/mapping/Table2D;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Literal;

    if-eqz v3, :cond_3

    .line 307
    iget-object v5, v3, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    if-eq v5, p1, :cond_8

    :cond_3
    instance-of v5, v1, Lgnu/bytecode/ClassType;

    if-eqz v5, :cond_8

    const/16 v5, 0x19

    .line 313
    move-object v6, v1

    check-cast v6, Lgnu/bytecode/ClassType;

    .line 314
    :goto_0
    sget-object v7, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v0, v8, v4}, Lgnu/mapping/Table2D;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_8

    .line 317
    sget-object v7, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v0, v8, v0}, Lgnu/mapping/Table2D;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_6

    .line 321
    invoke-virtual {v6}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_5

    .line 325
    :try_start_1
    invoke-virtual {v6}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v7

    .line 326
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 327
    invoke-virtual {v0, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    .line 330
    :cond_4
    new-instance v8, Lgnu/expr/Literal;

    invoke-direct {v8, v7, v6, p0}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    .line 331
    sget-object v9, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    invoke-virtual {v9, v7, v4, v8}, Lgnu/mapping/Table2D;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v7, :cond_5

    move-object v3, v8

    goto :goto_2

    :catchall_0
    move-exception v7

    .line 337
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " getting static field "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 319
    :cond_5
    :goto_2
    invoke-virtual {v6}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v6

    goto :goto_1

    .line 341
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 344
    :cond_7
    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 347
    :cond_8
    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_9

    .line 350
    iget-object v0, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 352
    :cond_9
    new-instance v3, Lgnu/expr/Literal;

    invoke-direct {v3, p1, v1, p0}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/LitTable;)V

    :goto_4
    return-object v3

    :catchall_1
    move-exception p1

    .line 347
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;
    .locals 28

    move-object/from16 v0, p3

    .line 359
    iget-object v1, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 360
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v2

    .line 361
    array-length v3, v1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const-string v14, "gnu.math.IntNum"

    if-eqz v2, :cond_13

    .line 369
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v13, p2

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_3

    .line 371
    :cond_0
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v4

    move/from16 v7, p4

    if-eq v7, v4, :cond_1

    goto :goto_3

    .line 376
    :cond_1
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v15, 0x0

    const-wide/16 v23, 0x0

    :goto_1
    if-ne v15, v3, :cond_a

    .line 380
    array-length v6, v4

    if-ne v5, v6, :cond_a

    if-eqz v12, :cond_9

    const-wide/16 v5, 0x0

    cmp-long v14, v9, v5

    if-eqz v14, :cond_2

    cmp-long v14, v23, v5

    if-nez v14, :cond_2

    goto :goto_5

    :cond_2
    cmp-long v14, v23, v5

    if-nez v14, :cond_8

    move v8, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_3
    const/4 v14, -0x1

    add-int/2addr v8, v14

    if-ltz v8, :cond_5

    .line 398
    aget-object v15, v11, v8

    aget-object v14, v4, v8

    invoke-virtual {v15, v14}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_4

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    const/4 v5, 0x1

    if-eqz v6, :cond_3

    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    move-object v12, v2

    move-object v11, v4

    :cond_6
    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :cond_8
    :goto_3
    move-object/from16 v26, v1

    :goto_4
    move-object v6, v2

    goto/16 :goto_a

    :cond_9
    :goto_5
    move-object/from16 v26, v1

    move-object v6, v2

    move-object v12, v6

    move-object v11, v4

    move-wide/from16 v9, v23

    goto/16 :goto_a

    :cond_a
    if-eq v15, v3, :cond_8

    .line 421
    array-length v6, v4

    if-ne v5, v6, :cond_b

    goto :goto_3

    .line 423
    :cond_b
    aget-object v6, v1, v15

    .line 424
    aget-object v7, v4, v5

    .line 425
    invoke-virtual {v6, v7}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v25

    if-eqz v25, :cond_c

    move-object/from16 v26, v1

    move-object v6, v2

    move-object/from16 v25, v4

    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_9

    :cond_c
    move-object/from16 v25, v4

    .line 427
    instance-of v4, v7, Lgnu/bytecode/ArrayType;

    if-eqz v4, :cond_8

    const/16 v4, 0x40

    if-ge v5, v4, :cond_8

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v6, v4, :cond_d

    sget-object v4, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    if-ne v6, v4, :cond_8

    .line 430
    :cond_d
    iget-object v4, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    aget-object v4, v4, v15

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-gez v4, :cond_e

    .line 431
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/high16 v6, -0x80000000

    sub-int/2addr v4, v6

    .line 433
    :cond_e
    check-cast v7, Lgnu/bytecode/ArrayType;

    invoke-virtual {v7}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v6

    if-ltz v4, :cond_8

    add-int v7, v15, v4

    if-lt v7, v3, :cond_f

    goto :goto_3

    :cond_f
    :goto_7
    const/16 v20, -0x1

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_12

    add-int v26, v15, v4

    const/16 v19, 0x1

    add-int/lit8 v26, v26, 0x1

    move/from16 v27, v4

    .line 440
    aget-object v4, v1, v26

    move-object/from16 v26, v1

    .line 441
    instance-of v1, v6, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_10

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v4

    if-eq v1, v4, :cond_11

    goto :goto_8

    :cond_10
    invoke-virtual {v4, v6}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-nez v1, :cond_11

    :goto_8
    goto/16 :goto_4

    :cond_11
    move-object/from16 v1, v26

    move/from16 v4, v27

    goto :goto_7

    :cond_12
    move-object/from16 v26, v1

    const/4 v1, 0x1

    shl-int v4, v1, v5

    move-object v6, v2

    int-to-long v1, v4

    or-long v1, v23, v1

    move-wide/from16 v23, v1

    move v15, v7

    goto :goto_6

    :goto_9
    add-int/2addr v15, v1

    add-int/lit8 v5, v5, 0x1

    move/from16 v7, p4

    move-object v2, v6

    move-object/from16 v4, v25

    move-object/from16 v1, v26

    goto/16 :goto_1

    .line 367
    :goto_a
    invoke-virtual {v6}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v2

    move-object/from16 v1, v26

    goto/16 :goto_0

    :cond_13
    if-eqz v8, :cond_14

    const/4 v1, 0x0

    return-object v1

    :cond_14
    const-wide/16 v1, 0x0

    cmp-long v4, v9, v1

    if-eqz v4, :cond_1c

    .line 460
    array-length v1, v11

    new-array v1, v1, [Ljava/lang/Object;

    .line 461
    array-length v2, v11

    new-array v2, v2, [Lgnu/bytecode/Type;

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_b
    if-ne v7, v3, :cond_15

    .line 506
    iput-object v1, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 507
    iput-object v2, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    goto/16 :goto_10

    .line 467
    :cond_15
    aget-object v4, v11, v16

    const/4 v5, 0x1

    shl-int v6, v5, v16

    int-to-long v5, v6

    and-long/2addr v5, v9

    const-wide/16 v21, 0x0

    cmp-long v8, v5, v21

    if-nez v8, :cond_16

    .line 470
    iget-object v4, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    aget-object v4, v4, v7

    aput-object v4, v1, v16

    .line 471
    iget-object v4, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    aget-object v4, v4, v7

    aput-object v4, v2, v16

    const/4 v0, 0x1

    const/16 v17, -0x1

    goto/16 :goto_f

    .line 475
    :cond_16
    iget-object v5, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    aget-object v5, v5, v7

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 476
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v8, -0x80000000

    if-eqz v6, :cond_17

    sub-int/2addr v5, v8

    .line 479
    :cond_17
    move-object v13, v4

    check-cast v13, Lgnu/bytecode/ArrayType;

    invoke-virtual {v13}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v13

    .line 480
    aput-object v4, v2, v16

    .line 481
    invoke-virtual {v13}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v1, v16

    .line 483
    iget-object v15, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    if-eqz v6, :cond_19

    .line 489
    aget-object v6, v1, v16

    check-cast v6, [I

    check-cast v6, [I

    move/from16 v17, v5

    :goto_c
    if-lez v17, :cond_18

    sub-int v18, v5, v17

    add-int v23, v7, v17

    .line 491
    aget-object v23, v15, v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    aput v23, v6, v18

    add-int/lit8 v17, v17, -0x1

    goto :goto_c

    :cond_18
    const/16 v17, -0x1

    goto :goto_e

    :cond_19
    move v6, v5

    const/16 v17, -0x1

    :goto_d
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_1a

    .line 497
    aget-object v8, v1, v16

    add-int/lit8 v20, v7, 0x1

    add-int v20, v20, v6

    aget-object v0, v15, v20

    invoke-static {v8, v6, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object/from16 v0, p3

    const/high16 v8, -0x80000000

    goto :goto_d

    .line 499
    :cond_1a
    :goto_e
    new-instance v0, Lgnu/expr/Literal;

    aget-object v6, v1, v16

    invoke-direct {v0, v6, v4}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 500
    instance-of v4, v13, Lgnu/bytecode/ObjectType;

    if-eqz v4, :cond_1b

    .line 501
    aget-object v4, v1, v16

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 502
    :cond_1b
    aput-object v0, v1, v16

    add-int/2addr v7, v5

    const/4 v0, 0x1

    :goto_f
    add-int/2addr v7, v0

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p3

    goto/16 :goto_b

    :cond_1c
    :goto_10
    return-object v12
.end method

.method push(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 5

    .line 88
    iget v0, p0, Lgnu/expr/LitTable;->stackPointer:I

    iget-object v1, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 90
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    iget-object v3, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Lgnu/bytecode/Type;

    const/4 v4, 0x0

    .line 92
    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget-object v0, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    iget v1, p0, Lgnu/expr/LitTable;->stackPointer:I

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput-object v2, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    .line 95
    iput-object v3, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    .line 97
    :cond_0
    iget-object v0, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/expr/LitTable;->stackPointer:I

    aput-object p1, v0, v1

    .line 98
    iget-object p1, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 99
    iput v1, p0, Lgnu/expr/LitTable;->stackPointer:I

    return-void
.end method

.method putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V
    .locals 7

    .line 514
    iget-object p2, p1, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 515
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 518
    iget-object v3, p1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 519
    instance-of v4, v3, Lgnu/expr/Literal;

    if-eqz v4, :cond_0

    .line 520
    check-cast v3, Lgnu/expr/Literal;

    invoke-virtual {p0, v3, v1}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    goto :goto_1

    .line 522
    :cond_0
    iget-object v4, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    new-instance v5, Lgnu/expr/StackTarget;

    aget-object v6, p2, v2

    invoke-direct {v5, v6}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v4, v3, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "cannot handle call to write(int) when externalizing literal"

    .line 117
    invoke-virtual {p0, p1}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    return-void
.end method

.method public write([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "cannot handle call to write(byte[]) when externalizing literal"

    .line 127
    invoke-virtual {p0, p1}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "cannot handle call to write(byte[],int,int) when externalizing literal"

    .line 132
    invoke-virtual {p0, p1}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1

    .line 137
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    sget-object p1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public writeByte(I)V
    .locals 1

    .line 147
    new-instance v0, Ljava/lang/Byte;

    int-to-byte p1, p1

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    sget-object p1, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "cannot handle call to writeBytes(String) when externalizing literal"

    .line 122
    invoke-virtual {p0, p1}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    return-void
.end method

.method public writeChar(I)V
    .locals 1

    .line 142
    new-instance v0, Ljava/lang/Character;

    int-to-char p1, p1

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    sget-object p1, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1

    .line 182
    sget-object v0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 1

    .line 172
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    sget-object p1, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 1

    .line 167
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    sget-object p1, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    .line 157
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    sget-object p1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public writeLong(J)V
    .locals 1

    .line 162
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    sget-object p1, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0, p1}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v0

    .line 197
    iget v1, v0, Lgnu/expr/Literal;->flags:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, v0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    instance-of p1, p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 203
    invoke-virtual {v0, p0}, Lgnu/expr/Literal;->assign(Lgnu/expr/LitTable;)V

    .line 204
    :cond_0
    iget p1, v0, Lgnu/expr/Literal;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_13

    .line 205
    iget p1, v0, Lgnu/expr/Literal;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lgnu/expr/Literal;->flags:I

    goto/16 :goto_3

    .line 209
    :cond_1
    iget v1, v0, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lgnu/expr/Literal;->flags:I

    .line 210
    iget v1, p0, Lgnu/expr/LitTable;->stackPointer:I

    .line 211
    instance-of v2, p1, Lgnu/lists/FString;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lgnu/lists/FString;

    invoke-virtual {v2}, Lgnu/lists/FString;->size()I

    move-result v2

    const v4, 0xffff

    if-ge v2, v4, :cond_2

    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 216
    :cond_2
    instance-of v2, p1, Ljava/io/Externalizable;

    if-eqz v2, :cond_3

    .line 218
    check-cast p1, Ljava/io/Externalizable;

    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    goto/16 :goto_1

    .line 220
    :cond_3
    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 222
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 223
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_11

    .line 225
    aget-object v4, p1, v2

    invoke-virtual {p0, v4}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_11

    .line 228
    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_11

    iget-object v2, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    instance-of v2, v2, Lgnu/bytecode/ArrayType;

    if-eqz v2, :cond_5

    goto/16 :goto_1

    .line 233
    :cond_5
    instance-of v2, p1, Ljava/math/BigInteger;

    if-eqz v2, :cond_6

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/expr/LitTable;->writeChars(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 237
    :cond_6
    instance-of v2, p1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_7

    .line 239
    check-cast p1, Ljava/math/BigDecimal;

    .line 241
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    invoke-virtual {p0, p1}, Lgnu/expr/LitTable;->writeInt(I)V

    goto/16 :goto_1

    .line 247
    :cond_7
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_8

    .line 248
    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 249
    :cond_8
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_9

    .line 250
    sget-object v2, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 251
    :cond_9
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_a

    .line 252
    sget-object v2, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 253
    :cond_a
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_b

    .line 254
    sget-object v2, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 255
    :cond_b
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_c

    .line 256
    sget-object v2, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 257
    :cond_c
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_d

    .line 258
    sget-object v2, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 259
    :cond_d
    instance-of v2, p1, Ljava/lang/Character;

    if-eqz v2, :cond_e

    .line 260
    sget-object v2, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 261
    :cond_e
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_f

    .line 262
    sget-object v2, Lgnu/bytecode/Type;->java_lang_Class_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 264
    :cond_f
    instance-of v2, p1, Ljava/util/regex/Pattern;

    if-eqz v2, :cond_10

    .line 266
    check-cast p1, Ljava/util/regex/Pattern;

    .line 267
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v2, v4}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 268
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->flags()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 272
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement Externalizable"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 273
    :cond_11
    :goto_1
    iget p1, p0, Lgnu/expr/LitTable;->stackPointer:I

    sub-int/2addr p1, v1

    if-nez p1, :cond_12

    .line 276
    sget-object p1, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    iput-object p1, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 277
    sget-object p1, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object p1, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    goto :goto_2

    .line 281
    :cond_12
    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 282
    new-array v2, p1, [Lgnu/bytecode/Type;

    iput-object v2, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 283
    iget-object v2, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    iget-object v4, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    invoke-static {v2, v1, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget-object v2, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    iget-object v4, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    invoke-static {v2, v1, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iput v1, p0, Lgnu/expr/LitTable;->stackPointer:I

    .line 287
    :goto_2
    iget p1, v0, Lgnu/expr/Literal;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lgnu/expr/Literal;->flags:I

    .line 289
    :cond_13
    :goto_3
    iget-object p1, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public writeShort(I)V
    .locals 1

    .line 152
    new-instance v0, Ljava/lang/Short;

    int-to-short p1, p1

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    sget-object p1, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1

    .line 177
    sget-object v0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-void
.end method
