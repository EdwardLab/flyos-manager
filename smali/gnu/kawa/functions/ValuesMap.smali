.class public Lgnu/kawa/functions/ValuesMap;
.super Lgnu/mapping/MethodProc;
.source "ValuesMap.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final valuesMap:Lgnu/kawa/functions/ValuesMap;

.field public static final valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;


# instance fields
.field private final startCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lgnu/kawa/functions/ValuesMap;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lgnu/kawa/functions/ValuesMap;-><init>(I)V

    sput-object v0, Lgnu/kawa/functions/ValuesMap;->valuesMap:Lgnu/kawa/functions/ValuesMap;

    .line 20
    new-instance v0, Lgnu/kawa/functions/ValuesMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/kawa/functions/ValuesMap;-><init>(I)V

    sput-object v0, Lgnu/kawa/functions/ValuesMap;->valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 24
    iput p1, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    .line 25
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v0, "gnu.kawa.functions.CompileMisc:validateApplyValuesMap"

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/functions/ValuesMap;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static canInline(Lgnu/expr/ApplyExp;Lgnu/kawa/functions/ValuesMap;)Lgnu/expr/LambdaExp;
    .locals 3

    .line 69
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p0

    .line 72
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    instance-of v0, p0, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_1

    .line 74
    check-cast p0, Lgnu/expr/LambdaExp;

    .line 75
    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v2, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget p1, p1, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 17

    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 105
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    .line 106
    invoke-virtual/range {p4 .. p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v5

    .line 110
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    const/4 v7, 0x0

    if-ltz v0, :cond_0

    .line 113
    sget-object v7, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const-string v8, "position"

    invoke-virtual {v5, v4, v7, v8}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v7

    .line 114
    invoke-virtual {v4, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 115
    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 116
    new-instance v5, Lgnu/expr/Declaration;

    invoke-direct {v5, v7}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    move-object/from16 v16, v7

    move-object v7, v5

    move-object/from16 v5, v16

    goto :goto_0

    :cond_0
    move-object v5, v7

    .line 125
    :goto_0
    invoke-virtual {v3}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v1, :cond_1

    .line 126
    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    new-instance v8, Lgnu/expr/Declaration;

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-virtual {v4, v9, v3}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v3

    invoke-direct {v8, v3}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    move-object v3, v8

    :goto_1
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ltz v0, :cond_2

    new-array v11, v8, [Lgnu/expr/Expression;

    .line 135
    new-instance v12, Lgnu/expr/ReferenceExp;

    invoke-direct {v12, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v12, v11, v9

    new-instance v12, Lgnu/expr/ReferenceExp;

    invoke-direct {v12, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v12, v11, v10

    goto :goto_2

    :cond_2
    new-array v11, v10, [Lgnu/expr/Expression;

    .line 139
    new-instance v12, Lgnu/expr/ReferenceExp;

    invoke-direct {v12, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v12, v11, v9

    .line 140
    :goto_2
    new-instance v12, Lgnu/expr/ApplyExp;

    move-object/from16 v13, p0

    invoke-direct {v12, v13, v11}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    if-eqz v1, :cond_4

    .line 144
    invoke-virtual {v12}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v11

    sget-object v13, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    if-eq v11, v13, :cond_3

    .line 145
    new-instance v11, Lgnu/expr/ApplyExp;

    new-array v13, v8, [Lgnu/expr/Expression;

    aput-object v12, v13, v9

    new-instance v12, Lgnu/expr/ReferenceExp;

    invoke-direct {v12, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v12, v13, v10

    invoke-direct {v11, v1, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v12, v11

    .line 149
    :cond_3
    new-instance v1, Lgnu/expr/IfExp;

    new-instance v7, Lgnu/expr/ReferenceExp;

    invoke-direct {v7, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v11, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v1, v12, v7, v11}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v12, v1

    .line 164
    :cond_4
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v1

    .line 165
    sget-object v7, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v7

    .line 166
    sget-object v11, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v11}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v11

    .line 168
    sget-object v13, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object/from16 v14, p1

    invoke-virtual {v14, v2, v13}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 169
    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 170
    invoke-virtual {v4, v9}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 171
    invoke-virtual {v4, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 173
    new-instance v9, Lgnu/bytecode/Label;

    invoke-direct {v9, v4}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 174
    new-instance v13, Lgnu/bytecode/Label;

    invoke-direct {v13, v4}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 175
    invoke-virtual {v9, v4}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 176
    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 177
    invoke-virtual {v4, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 178
    sget-object v14, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v15, "nextIndex"

    invoke-virtual {v14, v15, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v14

    invoke-virtual {v4, v14}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 179
    sget-object v14, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v14}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 180
    invoke-virtual {v4, v11}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 182
    invoke-virtual {v4, v13}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntLtZero(Lgnu/bytecode/Label;)V

    .line 184
    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 185
    invoke-virtual {v4, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 186
    sget-object v7, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v14, "nextValue"

    invoke-virtual {v7, v14, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 188
    sget-object v7, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-static {v2, v7, v6}, Lgnu/expr/StackTarget;->convert(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    .line 189
    invoke-virtual {v3, v2}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    move-object/from16 v3, p5

    .line 191
    invoke-virtual {v12, v2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    if-ltz v0, :cond_5

    .line 195
    invoke-virtual {v4, v5, v10}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 198
    :cond_5
    invoke-virtual {v4, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 199
    invoke-virtual {v4, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 200
    invoke-virtual {v4, v9}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 202
    invoke-virtual {v13, v4}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 204
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    .line 38
    iget-object v1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 39
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 40
    invoke-static {v0, v2}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 41
    instance-of v2, v1, Lgnu/mapping/Values;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 44
    iget v3, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    .line 45
    check-cast v1, Lgnu/mapping/Values;

    .line 46
    :goto_0
    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v4

    .line 49
    iget v5, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    if-ltz v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 50
    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    invoke-virtual {v0, v4, v3, p1}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    move v3, v5

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v0, v4, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 53
    :goto_1
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V

    goto :goto_0

    .line 58
    :cond_1
    iget v2, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    if-ltz v2, :cond_2

    .line 59
    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 62
    :goto_2
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V

    :cond_3
    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 6

    .line 84
    invoke-static {p1, p0}, Lgnu/kawa/functions/ValuesMap;->canInline(Lgnu/expr/ApplyExp;Lgnu/kawa/functions/ValuesMap;)Lgnu/expr/LambdaExp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 91
    instance-of v2, p3, Lgnu/expr/IgnoreTarget;

    if-nez v2, :cond_1

    instance-of v2, p3, Lgnu/expr/ConsumerTarget;

    if-nez v2, :cond_1

    .line 94
    invoke-static {p1, p2, p3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 97
    aget-object v1, v1, p1

    .line 98
    iget v2, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lgnu/kawa/functions/ValuesMap;->compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 209
    sget-object p1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object p1
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x2002

    return v0
.end method
