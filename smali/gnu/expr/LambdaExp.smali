.class public Lgnu/expr/LambdaExp;
.super Lgnu/expr/ScopeExp;
.source "LambdaExp.java"


# static fields
.field public static final ATTEMPT_INLINE:I = 0x1000

.field static final CANNOT_INLINE:I = 0x20

.field static final CAN_CALL:I = 0x4

.field static final CAN_READ:I = 0x2

.field static final CLASS_METHOD:I = 0x40

.field static final DEFAULT_CAPTURES_ARG:I = 0x200

.field static final IMPORTS_LEX_VARS:I = 0x8

.field static final INLINE_ONLY:I = 0x2000

.field static final METHODS_COMPILED:I = 0x80

.field static final NEEDS_STATIC_LINK:I = 0x10

.field protected static final NEXT_AVAIL_FLAG:I = 0x4000

.field public static final NO_FIELD:I = 0x100

.field public static final OVERLOADABLE_FIELD:I = 0x800

.field public static final SEQUENCE_RESULT:I = 0x400

.field static searchForKeywordMethod3:Lgnu/bytecode/Method;

.field static searchForKeywordMethod4:Lgnu/bytecode/Method;

.field static final unknownContinuation:Lgnu/expr/ApplyExp;


# instance fields
.field applyMethods:Ljava/util/Vector;

.field argsArray:Lgnu/bytecode/Variable;

.field public body:Lgnu/expr/Expression;

.field capturedVars:Lgnu/expr/Declaration;

.field closureEnv:Lgnu/bytecode/Variable;

.field public closureEnvField:Lgnu/bytecode/Field;

.field public defaultArgs:[Lgnu/expr/Expression;

.field private firstArgsArrayArg:Lgnu/expr/Declaration;

.field public firstChild:Lgnu/expr/LambdaExp;

.field heapFrame:Lgnu/bytecode/Variable;

.field initChain:Lgnu/expr/Initializer;

.field public inlineHome:Lgnu/expr/LambdaExp;

.field public keywords:[Lgnu/expr/Keyword;

.field public max_args:I

.field public min_args:I

.field public nameDecl:Lgnu/expr/Declaration;

.field public nextSibling:Lgnu/expr/LambdaExp;

.field primBodyMethods:[Lgnu/bytecode/Method;

.field primMethods:[Lgnu/bytecode/Method;

.field properties:[Ljava/lang/Object;

.field public returnContinuation:Lgnu/expr/Expression;

.field public returnType:Lgnu/bytecode/Type;

.field selectorValue:I

.field public staticLinkField:Lgnu/bytecode/Field;

.field tailCallers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lgnu/expr/LambdaExp;",
            ">;"
        }
    .end annotation
.end field

.field thisValue:Lgnu/mapping/Procedure;

.field thisVariable:Lgnu/bytecode/Variable;

.field throwsSpecification:[Lgnu/expr/Expression;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    new-instance v0, Lgnu/expr/ApplyExp;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lgnu/expr/Expression;

    move-object v2, v1

    check-cast v2, [Lgnu/expr/Expression;

    invoke-direct {v0, v1, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    sput-object v0, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 472
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 270
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 476
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 270
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 477
    iput p1, p0, Lgnu/expr/LambdaExp;->min_args:I

    .line 478
    iput p1, p0, Lgnu/expr/LambdaExp;->max_args:I

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;)V
    .locals 1

    .line 483
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 270
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 484
    iput-object p1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    return-void
.end method


# virtual methods
.method final addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 625
    invoke-virtual {p2}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 626
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p2, p0

    .line 633
    :cond_1
    invoke-virtual {p2}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object p2

    .line 634
    instance-of v0, p2, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_2

    iget-object v0, p2, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_1

    .line 638
    :cond_2
    invoke-virtual {p2}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    sget-object v1, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 640
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, p2

    .line 642
    :goto_0
    iget-object p2, p1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    if-nez p2, :cond_4

    .line 643
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    .line 644
    :cond_4
    iget-object p1, p1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 805
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v4

    .line 806
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v5

    .line 808
    iget-object v6, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    array-length v6, v6

    .line 809
    :goto_0
    iget-object v8, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v8, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    array-length v8, v8

    sub-int/2addr v8, v6

    .line 810
    :goto_1
    iget v9, v0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v9, v9, 0x200

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    move v9, v8

    .line 812
    :goto_2
    iget v10, v0, Lgnu/expr/LambdaExp;->max_args:I

    const/4 v11, 0x1

    if-ltz v10, :cond_4

    iget v12, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v12, v9

    if-ge v12, v10, :cond_3

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v10, 0x1

    :goto_4
    add-int/lit8 v12, v9, 0x1

    .line 814
    new-array v12, v12, [Lgnu/bytecode/Method;

    .line 818
    iput-object v12, v0, Lgnu/expr/LambdaExp;->primBodyMethods:[Lgnu/bytecode/Method;

    .line 819
    iget-object v13, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v13, :cond_5

    .line 820
    iput-object v12, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 825
    :cond_5
    iget-object v13, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move/from16 v16, v8

    if-eqz v13, :cond_7

    const-wide/16 v7, 0x1000

    invoke-virtual {v13, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    :goto_5
    const/4 v7, 0x0

    const/4 v14, 0x0

    goto :goto_9

    .line 828
    :cond_7
    iget-object v7, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v7, :cond_9

    const-wide/16 v14, 0x800

    invoke-virtual {v7, v14, v15}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    const/4 v7, 0x0

    :goto_6
    const/4 v14, 0x1

    goto :goto_9

    .line 831
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 833
    instance-of v7, v5, Lgnu/expr/ClassExp;

    if-eqz v7, :cond_6

    .line 835
    move-object v7, v5

    check-cast v7, Lgnu/expr/ClassExp;

    .line 836
    invoke-virtual {v7}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v14

    if-eqz v14, :cond_a

    if-eqz v3, :cond_a

    const/4 v14, 0x1

    goto :goto_7

    :cond_a
    const/4 v14, 0x0

    .line 837
    :goto_7
    iget-object v15, v7, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    if-ne v0, v15, :cond_b

    const/16 v7, 0x49

    goto :goto_9

    .line 839
    :cond_b
    iget-object v7, v7, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    if-ne v0, v7, :cond_f

    const/16 v7, 0x43

    goto :goto_6

    .line 848
    :cond_c
    iget-object v7, v0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    if-nez v7, :cond_6

    if-ne v3, v1, :cond_d

    goto :goto_5

    .line 850
    :cond_d
    iget-object v7, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v7, v7, Lgnu/expr/ModuleExp;

    if-eqz v7, :cond_8

    .line 852
    iget-object v7, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v7, Lgnu/expr/ModuleExp;

    .line 853
    invoke-virtual {v7}, Lgnu/expr/ModuleExp;->getSuperType()Lgnu/bytecode/ClassType;

    move-result-object v14

    if-nez v14, :cond_e

    invoke-virtual {v7}, Lgnu/expr/ModuleExp;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v7

    if-nez v7, :cond_e

    const/4 v14, 0x1

    goto :goto_8

    :cond_e
    const/4 v14, 0x0

    :cond_f
    :goto_8
    const/4 v7, 0x0

    .line 858
    :goto_9
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v8, 0x3c

    invoke-direct {v15, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz v14, :cond_10

    const/16 v8, 0x8

    goto :goto_a

    :cond_10
    const/4 v8, 0x0

    .line 860
    :goto_a
    iget-object v13, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v13, :cond_13

    .line 862
    invoke-virtual {v13}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v13

    if-eqz v13, :cond_11

    or-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 866
    :cond_11
    iget-object v13, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v13}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v13

    xor-int/2addr v13, v11

    .line 867
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 868
    iget-object v11, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v11, v13}, Lgnu/expr/Declaration;->getAccessFlags(S)S

    move-result v13

    :cond_12
    or-int/2addr v8, v13

    .line 872
    :cond_13
    :goto_b
    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v11

    if-nez v11, :cond_14

    instance-of v11, v5, Lgnu/expr/ClassExp;

    if-eqz v11, :cond_15

    :cond_14
    if-nez v4, :cond_16

    :cond_15
    const-string v11, "lambda"

    .line 875
    invoke-virtual {v15, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 876
    iget v11, v2, Lgnu/expr/Compilation;->method_counter:I

    const/4 v13, 0x1

    add-int/2addr v11, v13

    iput v11, v2, Lgnu/expr/Compilation;->method_counter:I

    invoke-virtual {v15, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_16
    const/16 v11, 0x43

    if-ne v7, v11, :cond_17

    const-string v4, "<clinit>"

    .line 879
    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 880
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_18

    .line 881
    invoke-static {v4}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    :goto_c
    const/16 v4, 0x400

    .line 882
    invoke-virtual {v0, v4}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v11

    if-eqz v11, :cond_19

    const-string v11, "$C"

    .line 883
    invoke-virtual {v15, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v11

    const/4 v13, 0x2

    if-lt v11, v13, :cond_1a

    if-nez v7, :cond_1a

    const/4 v11, 0x1

    goto :goto_d

    :cond_1a
    const/4 v11, 0x0

    :goto_d
    if-eqz v7, :cond_1c

    if-eqz v14, :cond_1b

    and-int/lit8 v8, v8, -0x3

    const/4 v14, 0x1

    add-int/2addr v8, v14

    goto :goto_e

    :cond_1b
    and-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v13

    .line 902
    :cond_1c
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v14

    if-nez v14, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v14

    if-eqz v14, :cond_1e

    :cond_1d
    or-int/lit16 v8, v8, 0x400

    .line 907
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v14

    const/16 v17, 0x0

    if-eqz v14, :cond_2c

    instance-of v14, v5, Lgnu/expr/ClassExp;

    if-eqz v14, :cond_2c

    iget v14, v0, Lgnu/expr/LambdaExp;->min_args:I

    iget v4, v0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v14, v4, :cond_2b

    .line 913
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    move-object/from16 v21, v17

    const/4 v14, 0x0

    :goto_f
    if-nez v4, :cond_20

    .line 918
    iget-object v13, v0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    if-eqz v13, :cond_1f

    goto/16 :goto_18

    :cond_1f
    move-object/from16 v22, v12

    goto :goto_11

    .line 921
    :cond_20
    invoke-virtual {v4}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v13

    if-eqz v13, :cond_21

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v22, v12

    :goto_10
    move-object/from16 v24, v21

    move/from16 v21, v8

    goto :goto_17

    :cond_21
    move-object/from16 v22, v12

    const-wide/16 v12, 0x2000

    .line 926
    invoke-virtual {v4, v12, v13}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v12

    if-eqz v12, :cond_22

    goto :goto_10

    :cond_22
    :goto_11
    if-nez v21, :cond_23

    .line 930
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 931
    new-instance v13, Lgnu/expr/LambdaExp$1;

    invoke-direct {v13, v0, v12}, Lgnu/expr/LambdaExp$1;-><init>(Lgnu/expr/LambdaExp;Ljava/lang/String;)V

    const/4 v12, 0x2

    .line 942
    invoke-virtual {v1, v13, v12}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;

    move-result-object v21

    :cond_23
    move-object/from16 v12, v21

    .line 945
    array-length v13, v12

    move/from16 v21, v8

    move-object/from16 v8, v17

    :goto_12
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_27

    .line 947
    aget-object v23, v12, v13

    if-nez v4, :cond_24

    .line 948
    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v23

    goto :goto_13

    :cond_24
    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v23

    aget-object v23, v23, v14

    :goto_13
    move-object/from16 v24, v12

    move-object/from16 v12, v23

    if-nez v8, :cond_25

    move-object v8, v12

    goto :goto_14

    :cond_25
    if-eq v12, v8, :cond_26

    if-nez v4, :cond_2a

    goto :goto_16

    :cond_26
    :goto_14
    move-object/from16 v12, v24

    goto :goto_12

    :cond_27
    move-object/from16 v24, v12

    if-eqz v8, :cond_29

    if-eqz v4, :cond_28

    .line 964
    invoke-virtual {v4, v8}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_15

    .line 966
    :cond_28
    invoke-virtual {v0, v8}, Lgnu/expr/LambdaExp;->setCoercedReturnType(Lgnu/bytecode/Type;)V

    :cond_29
    :goto_15
    if-nez v4, :cond_2a

    :goto_16
    goto :goto_19

    .line 914
    :cond_2a
    :goto_17
    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    const/4 v8, 0x1

    add-int/2addr v14, v8

    move/from16 v8, v21

    move-object/from16 v12, v22

    move-object/from16 v21, v24

    const/4 v13, 0x2

    goto :goto_f

    :cond_2b
    :goto_18
    move/from16 v21, v8

    move-object/from16 v22, v12

    :goto_19
    const/16 v4, 0x400

    goto :goto_1a

    :cond_2c
    move/from16 v21, v8

    move-object/from16 v22, v12

    .line 973
    :goto_1a
    invoke-virtual {v0, v4}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v4

    const/4 v8, 0x2

    if-lt v4, v8, :cond_2d

    goto :goto_1b

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    goto :goto_1c

    :cond_2e
    :goto_1b
    sget-object v4, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    :goto_1c
    if-eqz v3, :cond_2f

    if-eq v3, v1, :cond_2f

    const/4 v13, 0x1

    goto :goto_1d

    :cond_2f
    const/4 v13, 0x0

    .line 981
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v8

    const/4 v12, 0x2

    if-lt v8, v12, :cond_30

    if-nez v7, :cond_30

    const/4 v7, 0x1

    goto :goto_1e

    :cond_30
    const/4 v7, 0x0

    .line 985
    :goto_1e
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    move/from16 v14, v21

    const/4 v12, 0x0

    :goto_1f
    if-gt v12, v9, :cond_4c

    .line 988
    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    move/from16 v20, v8

    .line 989
    iget v8, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v8, v12

    if-ne v12, v9, :cond_31

    if-eqz v10, :cond_31

    add-int/lit8 v21, v8, 0x1

    move/from16 v27, v21

    move/from16 v21, v10

    move/from16 v10, v27

    goto :goto_20

    :cond_31
    move/from16 v21, v10

    move v10, v8

    :goto_20
    add-int v23, v13, v10

    add-int v2, v23, v7

    move/from16 v23, v12

    .line 993
    new-array v12, v2, [Lgnu/bytecode/Type;

    const/16 v18, 0x0

    if-lez v13, :cond_32

    .line 995
    aput-object v3, v12, v18

    .line 996
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v24

    if-eqz v24, :cond_33

    .line 997
    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v25

    if-eqz v25, :cond_33

    .line 998
    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v24

    :cond_33
    const/4 v3, 0x0

    :goto_21
    if-ge v3, v8, :cond_34

    add-int/lit8 v25, v3, 0x1

    add-int/2addr v3, v13

    .line 1000
    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v26

    aput-object v26, v12, v3

    .line 999
    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v24

    move/from16 v3, v25

    goto :goto_21

    :cond_34
    if-eqz v7, :cond_35

    add-int/lit8 v3, v2, -0x1

    .line 1002
    sget-object v25, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v25, v12, v3

    :cond_35
    if-ge v8, v10, :cond_3a

    .line 1005
    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1006
    invoke-virtual {v3}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1007
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getClassfileVersion()I

    move-result v10

    move/from16 v25, v7

    const/high16 v7, 0x310000    # 4.49994E-39f

    if-lt v10, v7, :cond_36

    instance-of v7, v3, Lgnu/bytecode/ArrayType;

    if-eqz v7, :cond_36

    or-int/lit16 v14, v14, 0x80

    goto :goto_22

    :cond_36
    const-string v7, "$V"

    .line 1011
    invoke-virtual {v15, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_22
    move/from16 v7, v16

    if-gtz v6, :cond_37

    if-lt v9, v7, :cond_37

    const-string v10, "gnu.lists.LList"

    .line 1012
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_38

    instance-of v8, v3, Lgnu/bytecode/ArrayType;

    if-nez v8, :cond_38

    .line 1021
    :cond_37
    sget-object v3, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    .line 1022
    new-instance v8, Lgnu/bytecode/Variable;

    sget-object v10, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    move-object/from16 v16, v3

    const-string v3, "argsArray"

    invoke-direct {v8, v3, v10}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v8, v0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    const/4 v3, 0x1

    .line 1024
    invoke-virtual {v8, v3}, Lgnu/bytecode/Variable;->setParameter(Z)V

    move-object/from16 v3, v16

    :cond_38
    move-object/from16 v8, v24

    .line 1026
    iput-object v8, v0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-eqz v11, :cond_39

    const/4 v8, 0x2

    goto :goto_23

    :cond_39
    const/4 v8, 0x1

    :goto_23
    sub-int/2addr v2, v8

    .line 1027
    aput-object v3, v12, v2

    goto :goto_24

    :cond_3a
    move/from16 v25, v7

    move/from16 v7, v16

    :goto_24
    if-eqz v11, :cond_3b

    const-string v2, "$X"

    .line 1030
    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1032
    :cond_3b
    instance-of v2, v5, Lgnu/expr/ClassExp;

    if-nez v2, :cond_3d

    instance-of v2, v5, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_3c

    move-object v2, v5

    check-cast v2, Lgnu/expr/ModuleExp;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_25

    :cond_3c
    const/4 v2, 0x0

    goto :goto_26

    :cond_3d
    :goto_25
    const/4 v2, 0x1

    .line 1037
    :goto_26
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1045
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    const/4 v10, 0x0

    :goto_27
    move-object/from16 v16, v5

    move-object v5, v1

    :goto_28
    if-eqz v5, :cond_40

    .line 1051
    invoke-virtual {v5, v3, v12}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v24

    if-eqz v24, :cond_3e

    .line 1053
    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    const/16 v3, 0x24

    .line 1054
    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v19, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 1055
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1056
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v16

    goto :goto_27

    :cond_3e
    const/16 v19, 0x1

    if-eqz v2, :cond_3f

    goto :goto_29

    .line 1049
    :cond_3f
    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v5

    goto :goto_28

    :cond_40
    const/16 v19, 0x1

    .line 1066
    :goto_29
    invoke-virtual {v1, v3, v12, v4, v14}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 1067
    aput-object v2, v22, v23

    .line 1069
    iget-object v3, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    if-eqz v3, :cond_4b

    array-length v5, v3

    if-lez v5, :cond_4b

    .line 1071
    array-length v3, v3

    .line 1072
    new-array v5, v3, [Lgnu/bytecode/ClassType;

    const/4 v8, 0x0

    :goto_2a
    if-ge v8, v3, :cond_4a

    .line 1076
    iget-object v10, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    aget-object v10, v10, v8

    .line 1078
    instance-of v12, v10, Lgnu/expr/ReferenceExp;

    if-eqz v12, :cond_43

    .line 1080
    move-object v12, v10

    check-cast v12, Lgnu/expr/ReferenceExp;

    .line 1081
    invoke-virtual {v12}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v24

    if-eqz v24, :cond_42

    .line 1084
    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v12

    .line 1085
    instance-of v0, v12, Lgnu/expr/ClassExp;

    if-eqz v0, :cond_41

    .line 1086
    check-cast v12, Lgnu/expr/ClassExp;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v12

    move-object/from16 v1, v17

    goto :goto_2b

    :cond_41
    move-object/from16 v0, p2

    .line 1089
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "throws specification "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has non-class lexical binding"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v12, v17

    :goto_2b
    move/from16 v24, v3

    goto/16 :goto_2d

    :cond_42
    move-object/from16 v0, p2

    .line 1093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v3

    const-string v3, "unknown class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v12, v17

    goto :goto_2d

    :cond_43
    move-object/from16 v0, p2

    move/from16 v24, v3

    .line 1095
    instance-of v1, v10, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_47

    .line 1097
    move-object v1, v10

    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1098
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_44

    .line 1099
    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 1100
    :cond_44
    instance-of v3, v1, Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_45

    .line 1101
    check-cast v1, Lgnu/bytecode/ClassType;

    move-object v12, v1

    goto :goto_2c

    :cond_45
    move-object/from16 v12, v17

    :goto_2c
    if-eqz v12, :cond_46

    .line 1102
    sget-object v1, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {v12, v1}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not extend Throwable"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    :cond_46
    move-object/from16 v1, v17

    goto :goto_2d

    :cond_47
    move-object/from16 v1, v17

    move-object v12, v1

    :goto_2d
    if-nez v12, :cond_48

    if-nez v1, :cond_48

    const-string v1, "invalid throws specification"

    :cond_48
    if-eqz v1, :cond_49

    const/16 v3, 0x65

    .line 1110
    invoke-virtual {v0, v3, v1, v10}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 1111
    sget-object v12, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    .line 1113
    :cond_49
    aput-object v12, v5, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v24

    goto/16 :goto_2a

    :cond_4a
    move-object/from16 v0, p2

    .line 1115
    new-instance v1, Lgnu/bytecode/ExceptionsAttr;

    invoke-direct {v1, v2}, Lgnu/bytecode/ExceptionsAttr;-><init>(Lgnu/bytecode/Method;)V

    .line 1116
    invoke-virtual {v1, v5}, Lgnu/bytecode/ExceptionsAttr;->setExceptions([Lgnu/bytecode/ClassType;)V

    goto :goto_2e

    :cond_4b
    move-object/from16 v0, p2

    :goto_2e
    add-int/lit8 v12, v23, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v2, v0

    move-object/from16 v5, v16

    move/from16 v8, v20

    move/from16 v10, v21

    move-object/from16 v0, p0

    move/from16 v16, v7

    move/from16 v7, v25

    goto/16 :goto_1f

    :cond_4c
    return-void
.end method

.method addMethodFor(Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    .line 790
    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-nez v1, :cond_0

    .line 791
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 796
    check-cast v0, Lgnu/expr/ClassExp;

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 798
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 799
    :goto_1
    invoke-virtual {p0, v0, p1, p2}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    return-void
.end method

.method public allocChildClasses(Lgnu/expr/Compilation;)V
    .locals 6

    .line 1124
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1126
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1127
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    .line 1129
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1132
    :goto_0
    iget-object v1, p0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_1

    .line 1134
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 1136
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_4

    iget-object v1, p0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-nez v1, :cond_2

    if-nez v0, :cond_4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    if-eqz v4, :cond_3

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 1142
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v1

    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v5, "$ctx"

    invoke-virtual {v1, v3, v4, v5}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v1

    .line 1146
    invoke-virtual {v1, v2}, Lgnu/bytecode/Variable;->setParameter(Z)V

    :cond_4
    if-nez v0, :cond_5

    .line 1180
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    .line 1182
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->allocFrame(Lgnu/expr/Compilation;)V

    .line 1184
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->allocChildMethods(Lgnu/expr/Compilation;)V

    return-void

    .line 1150
    :cond_5
    iget-object v1, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-nez v1, :cond_8

    .line 1152
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 1155
    :cond_6
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1159
    invoke-virtual {v0, v3}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    goto :goto_2

    .line 1169
    :cond_7
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 1171
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 1172
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v1}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v1

    iput-object v1, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1174
    invoke-virtual {v1, v2}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 1177
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto/16 :goto_0
.end method

.method allocChildMethods(Lgnu/expr/Compilation;)V
    .locals 4

    .line 1206
    iget-object v0, p0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    :goto_0
    if-eqz v0, :cond_5

    .line 1209
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v1, :cond_0

    .line 1212
    invoke-virtual {v0, p0, p1}, Lgnu/expr/LambdaExp;->allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 1214
    :cond_0
    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-eqz v1, :cond_4

    .line 1216
    move-object v1, v0

    check-cast v1, Lgnu/expr/ClassExp;

    .line 1217
    invoke-virtual {v1}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1220
    instance-of v2, p0, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_3

    instance-of v2, p0, Lgnu/expr/ClassExp;

    if-eqz v2, :cond_1

    goto :goto_2

    .line 1224
    :cond_1
    iget-object v2, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1227
    :goto_1
    invoke-virtual {v2}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    goto :goto_3

    .line 1221
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    .line 1229
    :goto_3
    iget-object v3, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v2}, Lgnu/bytecode/ClassType;->setOuterLink(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Field;

    move-result-object v2

    iput-object v2, v1, Lgnu/expr/ClassExp;->staticLinkField:Lgnu/bytecode/Field;

    iput-object v2, v1, Lgnu/expr/ClassExp;->closureEnvField:Lgnu/bytecode/Field;

    .line 1207
    :cond_4
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_0

    :cond_5
    return-void
.end method

.method allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .locals 9

    .line 573
    iget-object v0, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_0

    .line 574
    iget-object p1, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object p1, p1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    return-object p1

    .line 575
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 578
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "lambda"

    goto :goto_1

    .line 579
    :cond_2
    invoke-static {v2}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/16 v3, 0x10

    .line 582
    iget-object v4, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const/16 v5, 0x18

    const/4 v6, 0x1

    if-eqz v4, :cond_a

    iget-object v4, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v4, v4, Lgnu/expr/ModuleExp;

    if-eqz v4, :cond_a

    .line 584
    iget-object v0, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "$Prvt$"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 587
    :cond_3
    iget-object v4, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v7, 0x800

    invoke-virtual {v4, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 593
    iget-object v3, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v3, v3, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v3, Lgnu/expr/ModuleExp;

    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x8

    goto :goto_2

    :cond_4
    const/16 v3, 0x18

    .line 599
    :cond_5
    :goto_2
    iget-object v4, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    iget-boolean p1, p1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz p1, :cond_7

    :cond_6
    or-int/lit8 p1, v3, 0x1

    move v3, p1

    .line 601
    :cond_7
    iget p1, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_b

    .line 604
    iget p1, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne p1, v0, :cond_8

    move v6, p1

    .line 605
    :cond_8
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 606
    invoke-virtual {v1, p1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    if-nez v4, :cond_9

    move-object v2, p1

    goto :goto_4

    :cond_9
    move v6, v0

    goto :goto_3

    .line 611
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$Fn"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lgnu/expr/Compilation;->localFieldIndex:I

    add-int/2addr v2, v6

    iput v2, p1, Lgnu/expr/Compilation;->localFieldIndex:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_b

    const/16 v3, 0x18

    .line 615
    :cond_b
    :goto_4
    sget-object p1, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 616
    invoke-virtual {v1, v2, p1, v3}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object p1

    .line 617
    iget-object v0, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v0, :cond_c

    .line 618
    iput-object p1, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    :cond_c
    return-object p1
.end method

.method public allocFrame(Lgnu/expr/Compilation;)V
    .locals 2

    .line 1238
    iget-object v0, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_2

    .line 1241
    instance-of v0, p0, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_1

    instance-of v0, p0, Lgnu/expr/ClassExp;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1245
    :cond_0
    new-instance v0, Lgnu/bytecode/ClassType;

    const-string v1, "frame"

    invoke-virtual {p1, v1}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1247
    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    goto :goto_1

    .line 1242
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1249
    :goto_1
    iget-object p1, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {p1, v0}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    :cond_2
    return-void
.end method

.method allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V
    .locals 1

    .line 1190
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    .line 1192
    :cond_0
    instance-of v0, p1, Lgnu/expr/ClassExp;

    if-nez v0, :cond_3

    instance-of v0, p1, Lgnu/expr/ModuleExp;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1197
    :cond_1
    :goto_0
    iget-object v0, p1, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-nez v0, :cond_2

    .line 1198
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object p1

    goto :goto_0

    .line 1199
    :cond_2
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    goto :goto_2

    .line 1193
    :cond_3
    :goto_1
    invoke-virtual {p1, p2}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object p1

    .line 1201
    :goto_2
    invoke-virtual {p0, p2, p1}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    return-void
.end method

.method allocParameters(Lgnu/expr/Compilation;)V
    .locals 2

    .line 1255
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    .line 1260
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/LocalVarsAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 1261
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v0

    if-lez v0, :cond_0

    .line 1263
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1265
    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_1

    .line 1266
    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    :cond_1
    return-void
.end method

.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1711
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->setIndexes()V

    .line 1712
    new-instance v0, Lgnu/expr/Closure;

    invoke-direct {v0, p0, p1}, Lgnu/expr/Closure;-><init>(Lgnu/expr/LambdaExp;Lgnu/mapping/CallContext;)V

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public capture(Lgnu/expr/Declaration;)V
    .locals 2

    .line 42
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgnu/expr/ClassExp;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lgnu/bytecode/Variable;

    const-string v1, "heapFrame"

    invoke-direct {v0, v1}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    :cond_0
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 51
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    iput-object v0, p1, Lgnu/expr/Declaration;->nextCapturedVar:Lgnu/expr/Declaration;

    .line 54
    iput-object p1, p0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    :cond_1
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5

    .line 665
    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_0

    return-void

    .line 668
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 733
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    .line 734
    sget-object v2, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 735
    iget v3, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_4

    iget-boolean v3, p1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v3, :cond_1

    instance-of v1, v1, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 746
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 747
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 748
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_2

    .line 751
    :cond_2
    iget-object v3, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 752
    iget-object v4, v3, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v3, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 755
    :goto_0
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 756
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto :goto_2

    .line 738
    :cond_4
    :goto_1
    iget-object v0, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v0, :cond_5

    .line 739
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/expr/LambdaExp;->allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 740
    :cond_5
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    const/4 v0, 0x0

    .line 741
    invoke-virtual {p0, p1, v0}, Lgnu/expr/LambdaExp;->addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    .line 742
    invoke-static {p0, p1}, Lgnu/expr/ProcInitializer;->emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 760
    :goto_2
    invoke-virtual {p2, p1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method compileAsMethod(Lgnu/expr/Compilation;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1495
    iget v2, v0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_d

    .line 1497
    :cond_0
    iget v2, v0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lgnu/expr/LambdaExp;->flags:I

    .line 1498
    iget-object v2, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v2, :cond_1

    return-void

    .line 1500
    :cond_1
    iget-object v2, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1501
    iget-object v3, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1502
    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1504
    iget-object v4, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 1505
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v4

    .line 1506
    iget-object v6, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 1507
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->restArgType()Lgnu/bytecode/Type;

    move-result-object v8

    if-lez v6, :cond_2

    .line 1512
    iget v10, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v10, v6

    new-array v10, v10, [J

    .line 1514
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v11

    const/4 v12, 0x0

    .line 1515
    :goto_0
    iget v13, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v13, v6

    if-ge v12, v13, :cond_3

    add-int/lit8 v13, v12, 0x1

    .line 1516
    iget-wide v14, v11, Lgnu/expr/Declaration;->flags:J

    aput-wide v14, v10, v12

    .line 1515
    invoke-virtual {v11}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v11

    move v12, v13

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .line 1519
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x0

    :goto_2
    if-gt v12, v6, :cond_13

    .line 1523
    iget-object v13, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    aget-object v13, v13, v12

    iput-object v13, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    if-ge v12, v6, :cond_11

    .line 1526
    iget-object v13, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v13}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v13

    add-int/lit8 v14, v12, 0x1

    :goto_3
    if-ge v14, v6, :cond_5

    .line 1529
    iget-object v15, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object v15, v15, v14

    instance-of v15, v15, Lgnu/expr/QuoteExp;

    if-eqz v15, :cond_5

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    if-ne v14, v6, :cond_6

    if-eqz v8, :cond_6

    const/4 v15, 0x1

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    .line 1533
    :goto_4
    iget-object v9, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1534
    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v7

    if-nez v4, :cond_8

    .line 1537
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1539
    iput-object v7, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    :cond_7
    const/4 v7, 0x1

    .line 1540
    invoke-virtual {v13, v7}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v16

    move-object/from16 v7, v16

    :cond_8
    const/16 v16, 0x1

    .line 1542
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v17

    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move-object/from16 v5, v17

    const/4 v3, 0x0

    .line 1543
    :goto_5
    iget v2, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v2, v12

    if-ge v3, v2, :cond_9

    move-object/from16 v20, v9

    move-object v2, v10

    .line 1545
    iget-wide v9, v5, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v21, 0x40

    or-long v9, v9, v21

    iput-wide v9, v5, Lgnu/expr/Declaration;->flags:J

    .line 1546
    iput-object v7, v5, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1547
    invoke-virtual {v13, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1548
    invoke-virtual {v7}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    .line 1543
    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v10, v2

    move-object/from16 v9, v20

    goto :goto_5

    :cond_9
    move-object/from16 v20, v9

    move-object v2, v10

    if-eqz v11, :cond_a

    move-object v3, v7

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    .line 1550
    :goto_6
    iput-object v3, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move v3, v12

    :goto_7
    if-ge v3, v14, :cond_b

    .line 1553
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-static {v9}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v9

    .line 1554
    iget-object v10, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object v10, v10, v3

    invoke-virtual {v10, v1, v9}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 v3, v3, 0x1

    .line 1551
    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    goto :goto_7

    :cond_b
    if-eqz v15, :cond_e

    .line 1559
    invoke-virtual {v8}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gnu.lists.LList"

    .line 1560
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1561
    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v3, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_8

    :cond_c
    const-string v5, "java.lang.Object[]"

    .line 1562
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1563
    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v5, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-direct {v3, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 1566
    :goto_8
    invoke-virtual {v3, v1, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_9

    .line 1565
    :cond_d
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unimplemented #!rest type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_9
    if-eqz v11, :cond_f

    .line 1569
    invoke-virtual {v13, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    :cond_f
    if-eqz v4, :cond_10

    .line 1571
    iget-object v3, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    aget-object v3, v3, v14

    invoke-virtual {v13, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_a

    .line 1573
    :cond_10
    iget-object v3, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    aget-object v3, v3, v14

    invoke-virtual {v13, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 1574
    :goto_a
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    const/4 v3, 0x0

    .line 1575
    iput-object v3, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v3, v20

    .line 1576
    iput-object v3, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    const/4 v5, 0x0

    goto :goto_c

    :cond_11
    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move-object v2, v10

    const/16 v16, 0x1

    if-eqz v2, :cond_12

    .line 1583
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    const/4 v5, 0x0

    .line 1584
    :goto_b
    iget v7, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v7, v6

    if-ge v5, v7, :cond_12

    add-int/lit8 v7, v5, 0x1

    .line 1586
    aget-wide v9, v2, v5

    iput-wide v9, v3, Lgnu/expr/Declaration;->flags:J

    const/4 v5, 0x0

    .line 1587
    iput-object v5, v3, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1584
    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move v5, v7

    goto :goto_b

    :cond_12
    const/4 v5, 0x0

    .line 1590
    iget-object v3, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->initCode()V

    .line 1591
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 1592
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 1593
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 1595
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->compileBody(Lgnu/expr/Compilation;)V

    .line 1596
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 1597
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    :goto_c
    add-int/lit8 v12, v12, 0x1

    move-object v10, v2

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_13
    move-object/from16 v18, v3

    move-object v3, v2

    .line 1601
    iput-object v3, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v2, v18

    .line 1602
    iput-object v2, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    :cond_14
    :goto_d
    return-void
.end method

.method public compileBody(Lgnu/expr/Compilation;)V
    .locals 4

    .line 1608
    iget-object v0, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    const/4 v1, 0x0

    .line 1609
    iput-object v1, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1610
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 1612
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v1

    const-string v2, "$ctx"

    invoke-virtual {v1, v2}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1613
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    if-ne v2, v3, :cond_0

    .line 1614
    iput-object v1, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1615
    :cond_0
    invoke-static {p1}, Lgnu/expr/ConsumerTarget;->makeContextTarget(Lgnu/expr/Compilation;)Lgnu/expr/Target;

    move-result-object v1

    goto :goto_0

    .line 1618
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    .line 1619
    :goto_0
    iget-object v2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto :goto_1

    :cond_2
    move-object v3, p0

    :goto_1
    invoke-virtual {v2, p1, v1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    .line 1621
    iput-object v0, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    return-void
.end method

.method public compileEnd(Lgnu/expr/Compilation;)V
    .locals 3

    .line 538
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 539
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v1

    if-nez v1, :cond_2

    .line 541
    iget-object v1, p1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->reachableHere()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    :cond_0
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 545
    :cond_1
    invoke-virtual {p0, v0}, Lgnu/expr/LambdaExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    .line 546
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 549
    :cond_2
    iget-object v0, p0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    :goto_0
    if-eqz v0, :cond_4

    .line 551
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getCanRead()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v1

    if-nez v1, :cond_3

    .line 553
    invoke-virtual {v0, p1}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 555
    :cond_3
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_0

    .line 558
    :cond_4
    iget-object v0, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_5

    .line 559
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/expr/LambdaExp;)V

    :cond_5
    return-void
.end method

.method public compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .locals 2

    .line 649
    iget-object v0, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v0, :cond_0

    .line 650
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/expr/LambdaExp;->allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 651
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v0

    .line 652
    invoke-virtual {p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v1}, Lgnu/expr/LambdaExp;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 657
    invoke-virtual {p0, p1, v0}, Lgnu/expr/LambdaExp;->addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    .line 660
    :goto_0
    new-instance v1, Lgnu/expr/ProcInitializer;

    invoke-direct {v1, p0, p1, v0}, Lgnu/expr/ProcInitializer;-><init>(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    iget-object p1, v1, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    return-object p1
.end method

.method public declareClosureEnv()Lgnu/bytecode/Variable;
    .locals 6

    .line 428
    iget-object v0, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 430
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 431
    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 433
    :cond_0
    iget-object v1, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 435
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v2

    const-string v3, "*init*"

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 436
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto/16 :goto_1

    .line 437
    :cond_2
    iget-object v2, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    const/4 v4, 0x0

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getNeedsStaticLink()Z

    move-result v2

    if-nez v2, :cond_3

    instance-of v2, v0, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_3

    .line 439
    iput-object v4, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto/16 :goto_1

    .line 440
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result v2

    const-string v5, "closureEnv"

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    if-nez v2, :cond_6

    .line 442
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v0

    .line 443
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 444
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 446
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_1

    .line 449
    :cond_4
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 450
    new-instance v3, Lgnu/bytecode/Variable;

    invoke-direct {v3, v5, v2}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v3, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_5

    .line 453
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v4

    .line 456
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v4, v1}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 457
    iget-object v0, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/bytecode/Variable;->setParameter(Z)V

    goto :goto_1

    .line 460
    :cond_6
    invoke-virtual {p0, v0}, Lgnu/expr/LambdaExp;->inlinedIn(Lgnu/expr/LambdaExp;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 461
    iput-object v1, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_1

    .line 464
    :cond_7
    new-instance v0, Lgnu/bytecode/Variable;

    invoke-virtual {v1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v0, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 465
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 468
    :cond_8
    :goto_1
    iget-object v0, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method public declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;
    .locals 3

    .line 413
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lgnu/bytecode/Variable;

    const-string v1, "this"

    invoke-direct {v0, v1}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    .line 416
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 417
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 419
    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 421
    :cond_1
    iget-object p1, p0, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    invoke-virtual {p1}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 422
    iget-object p1, p0, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    iput-object v0, p1, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 423
    :cond_2
    iget-object p1, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    return-object p1
.end method

.method enterFunction(Lgnu/expr/Compilation;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1277
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v3

    invoke-virtual {v3, v2}, Lgnu/bytecode/Scope;->noteStartFunction(Lgnu/bytecode/CodeAttr;)V

    .line 1282
    iget-object v3, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->isParameter()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1287
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1288
    iget-object v3, v0, Lgnu/expr/LambdaExp;->closureEnvField:Lgnu/bytecode/Field;

    if-nez v3, :cond_0

    .line 1290
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    iget-object v3, v3, Lgnu/expr/LambdaExp;->closureEnvField:Lgnu/bytecode/Field;

    .line 1291
    :cond_0
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1292
    iget-object v3, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_0

    .line 1294
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/expr/LambdaExp;->inlinedIn(Lgnu/expr/LambdaExp;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 1297
    iget-object v3, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1300
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    .line 1302
    iget-object v3, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-nez v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lgnu/expr/ModuleExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    .line 1305
    :goto_1
    iget-object v5, v0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    :goto_2
    if-eqz v5, :cond_5

    .line 1308
    iget-object v6, v5, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v6, :cond_4

    goto :goto_3

    .line 1310
    :cond_4
    invoke-virtual {v5, v3, v1, v4}, Lgnu/expr/Declaration;->makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    .line 1306
    :goto_3
    iget-object v5, v5, Lgnu/expr/Declaration;->nextCapturedVar:Lgnu/expr/Declaration;

    goto :goto_2

    .line 1313
    :cond_5
    iget-object v3, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1315
    iget-object v3, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    .line 1316
    iget-object v5, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v5, :cond_6

    instance-of v6, v0, Lgnu/expr/ModuleExp;

    if-nez v6, :cond_6

    .line 1317
    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    const-string v6, "staticLink"

    invoke-virtual {v3, v6, v5}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;

    move-result-object v5

    iput-object v5, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    .line 1319
    :cond_6
    instance-of v5, v0, Lgnu/expr/ModuleExp;

    if-nez v5, :cond_8

    instance-of v5, v0, Lgnu/expr/ClassExp;

    if-nez v5, :cond_8

    .line 1321
    iget-object v5, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3, v5}, Lgnu/bytecode/ClassType;->setEnclosingMember(Lgnu/bytecode/Member;)V

    .line 1322
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 1323
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1324
    invoke-static {v3, v0}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v5

    .line 1325
    invoke-virtual {v2, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 1327
    iget-object v5, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v5, :cond_7

    .line 1329
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1330
    iget-object v3, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1331
    iget-object v3, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1333
    :cond_7
    iget-object v3, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1337
    :cond_8
    iget-object v3, v0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    .line 1338
    iget v5, v0, Lgnu/expr/LambdaExp;->min_args:I

    iget v6, v0, Lgnu/expr/LambdaExp;->max_args:I

    const/4 v7, 0x2

    if-ne v5, v6, :cond_9

    iget-object v5, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v5

    if-ge v5, v7, :cond_9

    move-object v3, v4

    .line 1349
    :cond_9
    iget-object v5, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v5, :cond_a

    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    array-length v5, v5

    .line 1350
    :goto_4
    iget-object v8, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v8, :cond_b

    const/4 v8, 0x0

    goto :goto_5

    :cond_b
    array-length v8, v8

    sub-int/2addr v8, v5

    .line 1352
    :goto_5
    instance-of v5, v0, Lgnu/expr/ModuleExp;

    if-eqz v5, :cond_c

    return-void

    :cond_c
    const/4 v5, -0x1

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    .line 1358
    iget-object v9, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_6
    if-eqz v10, :cond_1f

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v15

    if-ge v15, v7, :cond_d

    move-object v7, v4

    goto :goto_7

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v15

    const-string v7, "$ctx"

    invoke-virtual {v15, v7}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v7

    :goto_7
    iput-object v7, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1365
    iget-object v7, v0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-ne v10, v7, :cond_f

    if-eqz v3, :cond_f

    .line 1367
    iget-object v5, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-eqz v5, :cond_e

    .line 1370
    iget v5, v0, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v12, v11, v5

    move v5, v11

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    const/4 v12, 0x0

    :cond_f
    :goto_8
    if-gez v5, :cond_11

    .line 1378
    invoke-virtual {v10}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_9

    :cond_10
    move-object/from16 v19, v3

    move/from16 v20, v5

    move/from16 v23, v8

    const/16 v16, 0x2

    goto/16 :goto_11

    .line 1381
    :cond_11
    :goto_9
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    if-ltz v5, :cond_12

    .line 1382
    sget-object v15, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_a

    :cond_12
    move-object v15, v7

    .line 1388
    :goto_a
    invoke-virtual {v10}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v17

    if-nez v17, :cond_13

    .line 1389
    invoke-virtual {v10, v4, v1}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    :cond_13
    if-gez v5, :cond_14

    .line 1394
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_b

    .line 1396
    :cond_14
    iget v4, v0, Lgnu/expr/LambdaExp;->min_args:I

    if-ge v11, v4, :cond_15

    .line 1398
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1399
    invoke-virtual {v2, v11}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1400
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    :goto_b
    move-object/from16 v19, v3

    move/from16 v20, v5

    :goto_c
    move/from16 v23, v8

    const/16 v16, 0x2

    goto/16 :goto_10

    :cond_15
    add-int v6, v4, v8

    if-ge v11, v6, :cond_16

    sub-int v4, v11, v5

    .line 1404
    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1405
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1406
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 1407
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitIfIntLt()V

    .line 1408
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1409
    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1410
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitArrayLoad()V

    .line 1411
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 1412
    iget-object v4, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    add-int/lit8 v6, v13, 0x1

    add-int/2addr v13, v12

    aget-object v4, v4, v13

    invoke-virtual {v4, v1, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1413
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitFi()V

    move-object/from16 v19, v3

    move/from16 v20, v5

    move v13, v6

    goto :goto_c

    .line 1415
    :cond_16
    iget v6, v0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v6, :cond_17

    add-int/2addr v4, v8

    if-ne v11, v4, :cond_17

    .line 1419
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    sub-int v4, v11, v5

    .line 1420
    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1421
    sget-object v4, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1422
    sget-object v15, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    goto :goto_b

    .line 1426
    :cond_17
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1427
    iget v4, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v4, v8

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1428
    iget-object v4, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    add-int/lit8 v6, v14, 0x1

    aget-object v4, v4, v14

    invoke-virtual {v1, v4}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 1429
    iget-object v4, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    add-int/lit8 v14, v13, 0x1

    add-int/2addr v13, v12

    aget-object v4, v4, v13

    .line 1433
    instance-of v13, v4, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v3

    const-string v3, "searchForKeyword"

    move/from16 v20, v5

    const/4 v5, 0x1

    if-eqz v13, :cond_19

    .line 1435
    sget-object v13, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    if-nez v13, :cond_18

    const/4 v13, 0x4

    new-array v13, v13, [Lgnu/bytecode/Type;

    .line 1438
    sget-object v22, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    const/16 v18, 0x0

    aput-object v22, v13, v18

    .line 1439
    sget-object v22, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v22, v13, v5

    .line 1440
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v16, 0x2

    aput-object v5, v13, v16

    .line 1441
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v21, 0x3

    aput-object v5, v13, v21

    .line 1442
    sget-object v5, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    move/from16 v22, v6

    sget-object v6, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move/from16 v23, v8

    const/16 v8, 0x9

    invoke-virtual {v5, v3, v13, v6, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    goto :goto_d

    :cond_18
    move/from16 v22, v6

    move/from16 v23, v8

    .line 1447
    :goto_d
    invoke-virtual {v4, v1, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1448
    sget-object v3, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    const/16 v16, 0x2

    goto :goto_f

    :cond_19
    move/from16 v22, v6

    move/from16 v23, v8

    .line 1452
    sget-object v6, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    if-nez v6, :cond_1a

    const/4 v6, 0x3

    new-array v6, v6, [Lgnu/bytecode/Type;

    .line 1455
    sget-object v8, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    const/4 v13, 0x0

    aput-object v8, v6, v13

    .line 1456
    sget-object v8, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v8, v6, v5

    .line 1457
    sget-object v8, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v16, 0x2

    aput-object v8, v6, v16

    .line 1458
    sget-object v8, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    sget-object v13, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v5, 0x9

    invoke-virtual {v8, v3, v6, v13, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    goto :goto_e

    :cond_1a
    const/16 v16, 0x2

    .line 1463
    :goto_e
    sget-object v3, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    const/4 v3, 0x1

    .line 1464
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 1465
    sget-object v5, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    invoke-virtual {v1, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 1466
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitIfEq()V

    .line 1467
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 1468
    invoke-virtual {v4, v1, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1469
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitFi()V

    :goto_f
    move v13, v14

    move/from16 v14, v22

    :goto_10
    if-eq v7, v15, :cond_1b

    add-int/lit8 v3, v11, 0x1

    .line 1475
    invoke-static {v1, v0, v3, v7}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V

    .line 1476
    :cond_1b
    invoke-virtual {v10}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1477
    invoke-virtual {v10, v1}, Lgnu/expr/Declaration;->pushIndirectBinding(Lgnu/expr/Compilation;)V

    .line 1478
    :cond_1c
    invoke-virtual {v10}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1480
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v3

    .line 1481
    invoke-virtual {v10}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1482
    sget-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 1483
    :cond_1d
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_11

    .line 1486
    :cond_1e
    iget-object v3, v10, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    :goto_11
    add-int/lit8 v11, v11, 0x1

    .line 1360
    invoke-virtual {v10}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v10

    move-object/from16 v3, v19

    move/from16 v5, v20

    move/from16 v8, v23

    const/4 v4, 0x0

    const/4 v7, 0x2

    goto/16 :goto_6

    .line 1490
    :cond_1f
    iput-object v9, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    return-void
.end method

.method evalDefaultArg(ILgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 1

    .line 1719
    :try_start_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1723
    new-instance p2, Lgnu/mapping/WrappedException;

    const-string v0, "error evaluating default argument"

    invoke-direct {p2, v0, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public generateApplyMethods(Lgnu/expr/Compilation;)V
    .locals 2

    .line 564
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateMatchMethods(Lgnu/expr/LambdaExp;)V

    .line 565
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 566
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateApplyMethodsWithContext(Lgnu/expr/LambdaExp;)V

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateApplyMethodsWithoutContext(Lgnu/expr/LambdaExp;)V

    :goto_0
    return-void
.end method

.method getArg(I)Lgnu/expr/Declaration;
    .locals 1

    .line 526
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 529
    :cond_1
    new-instance p1, Ljava/lang/Error;

    const-string v0, "internal error - getArg"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCallConvention()I
    .locals 2

    .line 248
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    :cond_0
    return v1

    .line 253
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 255
    :cond_2
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    if-eqz v0, :cond_3

    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    :cond_3
    return v1
.end method

.method public getCaller()Lgnu/expr/LambdaExp;
    .locals 1

    .line 406
    iget-object v0, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    return-object v0
.end method

.method public final getCanCall()Z
    .locals 1

    .line 213
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getCanRead()Z
    .locals 1

    .line 205
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getClassType()Lgnu/bytecode/ClassType;
    .locals 1

    .line 288
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method protected getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 1

    .line 275
    iget-object p1, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq p1, v0, :cond_0

    .line 277
    iget-object p1, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    return-object p1

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "internal error: getCompiledClassType"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final getExpClassName()Ljava/lang/String;
    .locals 2

    .line 1868
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 1869
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1871
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHeapFrameType()Lgnu/bytecode/ClassType;
    .locals 1

    .line 765
    instance-of v0, p0, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_1

    instance-of v0, p0, Lgnu/expr/ClassExp;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 768
    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    return-object v0

    .line 766
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final getImportsLexVars()Z
    .locals 1

    .line 165
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getInlineOnly()Z
    .locals 1

    .line 145
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getMainMethod()Lgnu/bytecode/Method;
    .locals 2

    .line 346
    iget-object v0, p0, Lgnu/expr/LambdaExp;->primBodyMethods:[Lgnu/bytecode/Method;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public final getMethod(I)Lgnu/bytecode/Method;
    .locals 3

    .line 333
    iget-object v0, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v2, :cond_0

    if-le p1, v2, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    iget v2, p0, Lgnu/expr/LambdaExp;->min_args:I

    sub-int/2addr p1, v2

    if-gez p1, :cond_1

    return-object v1

    .line 338
    :cond_1
    array-length v1, v0

    if-ge p1, v1, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, v1, -0x1

    .line 339
    :goto_0
    aget-object p1, v0, p1

    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final getNeedsClosureEnv()Z
    .locals 1

    .line 150
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getNeedsStaticLink()Z
    .locals 1

    .line 155
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOwningLambda()Lgnu/expr/LambdaExp;
    .locals 2

    .line 774
    iget-object v0, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 779
    :cond_0
    instance-of v1, v0, Lgnu/expr/ModuleExp;

    if-nez v1, :cond_3

    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lgnu/expr/LambdaExp;

    iget-object v1, v1, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 775
    :cond_2
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_0

    .line 783
    :cond_3
    :goto_1
    check-cast v0, Lgnu/expr/LambdaExp;

    return-object v0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1896
    iget-object v0, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1898
    array-length v0, v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_1

    .line 1900
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1901
    aget-object p1, v1, v0

    return-object p1

    :cond_1
    return-object p2
.end method

.method public final getReturnType()Lgnu/bytecode/Type;
    .locals 1

    .line 1919
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    if-nez v0, :cond_0

    .line 1921
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1923
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1924
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1926
    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    return-object v0
.end method

.method getSelectorValue(Lgnu/expr/Compilation;)I
    .locals 2

    .line 310
    iget v0, p0, Lgnu/expr/LambdaExp;->selectorValue:I

    if-nez v0, :cond_0

    .line 313
    iget v0, p1, Lgnu/expr/Compilation;->maxSelectorValue:I

    .line 314
    iget-object v1, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    array-length v1, v1

    add-int/2addr v1, v0

    iput v1, p1, Lgnu/expr/Compilation;->maxSelectorValue:I

    add-int/lit8 v0, v0, 0x1

    .line 315
    iput v0, p0, Lgnu/expr/LambdaExp;->selectorValue:I

    :cond_0
    return v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .line 282
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public incomingArgs()I
    .locals 2

    .line 302
    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v1, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method inlinedIn(Lgnu/expr/LambdaExp;)Z
    .locals 2

    move-object v0, p0

    .line 395
    :goto_0
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isAbstract()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isClassGenerated()Z
    .locals 1

    .line 236
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lgnu/expr/ClassExp;

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

.method public final isClassMethod()Z
    .locals 1

    .line 222
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isHandlingTailCalls()Z
    .locals 2

    .line 263
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public final isModuleBody()Z
    .locals 1

    .line 231
    instance-of v0, p0, Lgnu/expr/ModuleExp;

    return v0
.end method

.method public loadHeapFrame(Lgnu/expr/Compilation;)V
    .locals 4

    .line 490
    iget-object v0, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    :goto_0
    if-eq v0, p0, :cond_0

    .line 491
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v0

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 495
    iget-object v2, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_1

    if-ne p0, v0, :cond_1

    .line 497
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    return-void

    .line 501
    :cond_1
    iget-object v2, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_2

    .line 503
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 504
    iget-object p1, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 508
    :cond_2
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 509
    iget-object p1, p1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    :goto_1
    if-eq v0, p0, :cond_4

    .line 513
    iget-object v2, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v2, :cond_3

    .line 514
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v3

    if-ne v3, p1, :cond_3

    .line 516
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 517
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    .line 519
    :cond_3
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected mustCompile()Z
    .locals 3

    .line 1690
    iget-object v0, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    return v1

    .line 1692
    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-eqz v0, :cond_2

    .line 1694
    array-length v0, v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 1696
    iget-object v2, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 1698
    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-nez v2, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public outerLambda()Lgnu/expr/LambdaExp;
    .locals 1

    .line 370
    iget-object v0, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public outerLambdaNotInline()Lgnu/expr/LambdaExp;
    .locals 3

    move-object v0, p0

    .line 377
    :cond_0
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    if-eqz v0, :cond_1

    .line 379
    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_0

    .line 381
    move-object v1, v0

    check-cast v1, Lgnu/expr/LambdaExp;

    .line 382
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 9

    const-string v0, "(Lambda/"

    const-string v1, ")"

    const/4 v2, 0x2

    .line 1803
    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1804
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x2f

    if-eqz v0, :cond_0

    .line 1807
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 1808
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 1810
    :cond_0
    iget v0, p0, Lgnu/expr/LambdaExp;->id:I

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(I)V

    .line 1811
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    const-string v0, "fl:"

    .line 1812
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 1813
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1814
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    const-string v0, "("

    const/4 v2, 0x0

    .line 1815
    invoke-virtual {p1, v0, v2, v1}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1819
    iget-object v0, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    array-length v0, v0

    .line 1820
    :goto_0
    iget-object v3, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    array-length v3, v3

    sub-int/2addr v3, v0

    .line 1821
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 1822
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, -0x1

    move-object v6, v4

    const/4 v2, -0x1

    goto :goto_2

    :cond_3
    move-object v6, v4

    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-eqz v0, :cond_d

    .line 1827
    iget v7, p0, Lgnu/expr/LambdaExp;->min_args:I

    if-ge v2, v7, :cond_4

    move-object v7, v4

    goto :goto_4

    :cond_4
    add-int v8, v7, v3

    if-ge v2, v8, :cond_5

    .line 1830
    sget-object v7, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    goto :goto_4

    .line 1831
    :cond_5
    iget v8, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v8, :cond_6

    add-int/2addr v7, v3

    if-ne v2, v7, :cond_6

    .line 1832
    sget-object v7, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    goto :goto_4

    .line 1834
    :cond_6
    sget-object v7, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    .line 1835
    :goto_4
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v8

    if-eq v0, v8, :cond_7

    .line 1836
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    :cond_7
    if-eq v7, v6, :cond_8

    .line 1839
    invoke-virtual {p1, v7}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 1840
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1843
    :cond_8
    sget-object v6, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    if-eq v7, v6, :cond_a

    sget-object v6, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    if-ne v7, v6, :cond_9

    goto :goto_5

    :cond_9
    move v8, v5

    move-object v5, v4

    goto :goto_6

    .line 1844
    :cond_a
    :goto_5
    iget-object v6, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    add-int/lit8 v8, v5, 0x1

    aget-object v5, v6, v5

    :goto_6
    if-eqz v5, :cond_b

    const/16 v6, 0x28

    .line 1846
    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(C)V

    .line 1847
    :cond_b
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    if-eqz v5, :cond_c

    .line 1848
    sget-object v6, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    if-eq v5, v6, :cond_c

    const/16 v6, 0x20

    .line 1850
    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(C)V

    .line 1851
    invoke-virtual {v5, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    const/16 v5, 0x29

    .line 1852
    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->print(C)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 1824
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    move-object v6, v7

    move v5, v8

    goto :goto_3

    .line 1857
    :cond_d
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 1859
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-nez v0, :cond_e

    const-string v0, "<null body>"

    .line 1860
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 1862
    :cond_e
    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 1863
    :goto_7
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    return-void
.end method

.method public final restArgType()Lgnu/bytecode/Type;
    .locals 5

    .line 353
    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v1, p0, Lgnu/expr/LambdaExp;->max_args:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 355
    :cond_0
    iget-object v3, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-eqz v3, :cond_3

    if-ltz v1, :cond_1

    .line 358
    array-length v4, v3

    sub-int/2addr v1, v0

    if-le v4, v1, :cond_1

    return-object v2

    .line 360
    :cond_1
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v3, v0

    .line 361
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v1

    .line 362
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 363
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "$X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 365
    :cond_2
    aget-object v0, v1, v2

    return-object v0

    .line 356
    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error - restArgType"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCallersNeedStaticLink()V
    .locals 4

    .line 195
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v1, v1, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    :goto_0
    if-eqz v1, :cond_1

    .line 198
    iget-object v2, v1, Lgnu/expr/ApplyExp;->context:Lgnu/expr/LambdaExp;

    :goto_1
    if-eq v2, v0, :cond_0

    .line 199
    instance-of v3, v2, Lgnu/expr/ModuleExp;

    if-nez v3, :cond_0

    .line 200
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->setNeedsStaticLink()V

    .line 199
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    goto :goto_1

    .line 196
    :cond_0
    iget-object v1, v1, Lgnu/expr/ApplyExp;->nextCall:Lgnu/expr/ApplyExp;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setCanCall(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 216
    iget p1, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0

    .line 217
    :cond_0
    iget p1, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lgnu/expr/LambdaExp;->flags:I

    :goto_0
    return-void
.end method

.method public final setCanRead(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 208
    iget p1, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0

    .line 209
    :cond_0
    iget p1, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lgnu/expr/LambdaExp;->flags:I

    :goto_0
    return-void
.end method

.method public final setClassMethod(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 226
    iget p1, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0

    .line 227
    :cond_0
    iget p1, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Lgnu/expr/LambdaExp;->flags:I

    :goto_0
    return-void
.end method

.method public final setCoercedReturnType(Lgnu/bytecode/Type;)V
    .locals 2

    .line 1937
    iput-object p1, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    if-eqz p1, :cond_0

    .line 1938
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    if-eq v0, v1, :cond_0

    .line 1943
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1944
    invoke-static {v0, p1}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1945
    invoke-virtual {p1, v0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    :cond_0
    return-void
.end method

.method public final setCoercedReturnValue(Lgnu/expr/Expression;Lgnu/expr/Language;)V
    .locals 2

    .line 1953
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1955
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1956
    invoke-static {v0, p1}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1957
    invoke-virtual {v1, v0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 1959
    :cond_0
    invoke-virtual {p2, p1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1961
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    :cond_1
    return-void
.end method

.method public setExceptions([Lgnu/expr/Expression;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    return-void
.end method

.method public final setImportsLexVars()V
    .locals 2

    .line 175
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 176
    iget v1, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->setCallersNeedStaticLink()V

    :cond_0
    return-void
.end method

.method public final setImportsLexVars(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 169
    iget p1, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0

    .line 170
    :cond_0
    iget p1, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Lgnu/expr/LambdaExp;->flags:I

    :goto_0
    return-void
.end method

.method public final setInlineOnly(Z)V
    .locals 1

    const/16 v0, 0x2000

    .line 147
    invoke-virtual {p0, p1, v0}, Lgnu/expr/LambdaExp;->setFlag(ZI)V

    return-void
.end method

.method public final setNeedsStaticLink()V
    .locals 2

    .line 185
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 186
    iget v1, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->setCallersNeedStaticLink()V

    :cond_0
    return-void
.end method

.method public final setNeedsStaticLink(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 159
    iget p1, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0

    .line 160
    :cond_0
    iget p1, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lgnu/expr/LambdaExp;->flags:I

    :goto_0
    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 1909
    :try_start_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lgnu/mapping/PropertySet;->setProperty([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1910
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setReturnType(Lgnu/bytecode/Type;)V
    .locals 0

    .line 1932
    iput-object p1, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    return-void
.end method

.method public setType(Lgnu/bytecode/ClassType;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public side_effects()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getExpClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lgnu/expr/LambdaExp;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1881
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1882
    iget-object v2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v2, :cond_0

    .line 1883
    invoke-virtual {v2}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v1

    :cond_0
    if-lez v1, :cond_1

    .line 1885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "l:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 4

    .line 1730
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p4

    .line 1731
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v0, v0, 0x1000

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1733
    invoke-static {p0, p4, v1}, Lgnu/expr/InlineCalls;->inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 1735
    invoke-virtual {p2, p4, p3}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 1737
    :cond_0
    invoke-virtual {p1, p2}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 1738
    iget-object p3, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length p3, p3

    .line 1739
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object p4

    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v2, p0, Lgnu/expr/LambdaExp;->max_args:I

    invoke-static {p4, v0, v2, p3}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 1742
    invoke-virtual {p2, p4}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 1743
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result p4

    .line 1744
    invoke-virtual {p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    .line 1747
    invoke-virtual {v0, p0}, Lgnu/expr/Compilation;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    if-le p4, v0, :cond_2

    const/4 v0, 0x3

    if-ne p4, v0, :cond_9

    :cond_2
    invoke-virtual {p0, p3}, Lgnu/expr/LambdaExp;->getMethod(I)Lgnu/bytecode/Method;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 1762
    iget-object p4, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {p4}, Lgnu/expr/Declaration;->isStatic()Z

    move-result p4

    if-nez p4, :cond_3

    .line 1763
    iget-object v0, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lgnu/expr/ClassExp;

    if-eqz v0, :cond_3

    .line 1765
    iget-object v0, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/ClassExp;

    .line 1766
    invoke-virtual {v0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    .line 1770
    :cond_3
    new-instance v0, Lgnu/expr/PrimProcedure;

    invoke-direct {v0, p3, p0}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V

    if-eqz p4, :cond_4

    .line 1773
    iget-object p2, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    goto :goto_1

    .line 1776
    :cond_4
    invoke-virtual {p2}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object p3

    :goto_0
    if-nez p3, :cond_5

    .line 1780
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "internal error: missing "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 1781
    :cond_5
    iget-object p4, p3, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    iget-object v2, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    if-ne p4, v2, :cond_8

    .line 1785
    invoke-virtual {p3}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 1786
    invoke-virtual {p4}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    .line 1790
    :cond_6
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result p2

    add-int/lit8 p3, p2, 0x1

    .line 1791
    new-array p3, p3, [Lgnu/expr/Expression;

    .line 1792
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1793
    new-instance p2, Lgnu/expr/ThisExp;

    invoke-direct {p2, p4}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object p2, p3, v3

    move-object p2, p3

    .line 1795
    :goto_1
    new-instance p3, Lgnu/expr/ApplyExp;

    invoke-direct {p3, v0, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 1796
    invoke-virtual {p3, p1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 1787
    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "calling non-static method "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " from static method "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 1783
    :cond_8
    invoke-virtual {p3}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object p3

    goto :goto_0

    :cond_9
    return-object p1
.end method

.method public final variable_args()Z
    .locals 1

    .line 268
    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 1629
    invoke-virtual {p1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1635
    :cond_0
    iget-object v1, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1636
    iput-object p0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1640
    :goto_0
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1645
    iput-object v1, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    iput-object v1, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    :cond_2
    throw p1
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 0
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

    .line 1651
    invoke-virtual {p0, p1, p2}, Lgnu/expr/LambdaExp;->visitChildrenOnly(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 1652
    invoke-virtual {p0, p1, p2}, Lgnu/expr/LambdaExp;->visitProperties(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method protected final visitChildrenOnly(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 2
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

    .line 1657
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 1658
    iput-object p0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 1661
    :try_start_0
    iget-object v1, p0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    invoke-virtual {p1, v1, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    .line 1662
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V

    .line 1663
    iget-object v1, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v1, :cond_0

    .line 1664
    invoke-virtual {p1, v1, p2}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lgnu/expr/ExpVisitor;->update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p2

    iput-object p2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    :cond_0
    iput-object v0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    return-void

    :catchall_0
    move-exception p2

    iput-object v0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    throw p2
.end method

.method protected final visitProperties(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 5
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

    .line 1674
    iget-object v0, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1676
    array-length v0, v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1679
    iget-object v2, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    aget-object v3, v2, v1

    .line 1680
    instance-of v4, v3, Lgnu/expr/Expression;

    if-eqz v4, :cond_0

    .line 1682
    check-cast v3, Lgnu/expr/Expression;

    invoke-virtual {p1, v3, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method
