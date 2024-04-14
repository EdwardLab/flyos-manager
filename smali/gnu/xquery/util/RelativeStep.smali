.class public Lgnu/xquery/util/RelativeStep;
.super Lgnu/mapping/MethodProc;
.source "RelativeStep.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final relativeStep:Lgnu/xquery/util/RelativeStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lgnu/xquery/util/RelativeStep;

    invoke-direct {v0}, Lgnu/xquery/util/RelativeStep;-><init>()V

    sput-object v0, Lgnu/xquery/util/RelativeStep;->relativeStep:Lgnu/xquery/util/RelativeStep;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 25
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateApplyRelativeStep"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/RelativeStep;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static extractStep(Lgnu/expr/Expression;)Lgnu/kawa/xml/TreeScanner;
    .locals 3

    .line 184
    :goto_0
    instance-of v0, p0, Lgnu/expr/ApplyExp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 186
    :cond_0
    check-cast p0, Lgnu/expr/ApplyExp;

    .line 187
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v0

    .line 188
    instance-of v2, v0, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_2

    .line 190
    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 191
    instance-of v2, v0, Lgnu/kawa/xml/TreeScanner;

    if-eqz v2, :cond_1

    .line 192
    check-cast v0, Lgnu/kawa/xml/TreeScanner;

    return-object v0

    .line 194
    :cond_1
    instance-of v0, v0, Lgnu/xquery/util/ValuesFilter;

    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 35
    check-cast v1, Lgnu/mapping/Procedure;

    .line 36
    iget-object v2, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 39
    instance-of v3, v0, Lgnu/kawa/xml/Nodes;

    if-eqz v3, :cond_0

    .line 40
    check-cast v0, Lgnu/kawa/xml/Nodes;

    goto :goto_0

    .line 43
    :cond_0
    new-instance v3, Lgnu/kawa/xml/Nodes;

    invoke-direct {v3}, Lgnu/kawa/xml/Nodes;-><init>()V

    .line 44
    invoke-static {v0, v3}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    move-object v0, v3

    .line 46
    :goto_0
    invoke-virtual {v0}, Lgnu/kawa/xml/Nodes;->size()I

    move-result v3

    const/4 v4, 0x0

    .line 48
    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v5

    .line 49
    new-instance v6, Lgnu/xquery/util/RelativeStepFilter;

    invoke-direct {v6, v2}, Lgnu/xquery/util/RelativeStepFilter;-><init>(Lgnu/lists/Consumer;)V

    const/4 v2, 0x1

    :goto_1
    if-gt v2, v3, :cond_1

    .line 52
    invoke-virtual {v0, v4}, Lgnu/kawa/xml/Nodes;->nextPos(I)I

    move-result v4

    .line 53
    invoke-virtual {v0, v4}, Lgnu/kawa/xml/Nodes;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v7

    .line 54
    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5, p1}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 55
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v6}, Lgnu/xquery/util/RelativeStepFilter;->finish()V

    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 15

    move-object/from16 v4, p2

    move-object/from16 v0, p3

    .line 62
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    const/4 v6, 0x0

    .line 63
    aget-object v2, v1, v6

    const/4 v3, 0x1

    .line 64
    aget-object v1, v1, v3

    .line 65
    instance-of v5, v0, Lgnu/expr/IgnoreTarget;

    if-eqz v5, :cond_0

    .line 67
    invoke-virtual {v2, v4, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 68
    invoke-virtual {v1, v4, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 72
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v5

    if-nez v5, :cond_1

    .line 74
    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 75
    :cond_1
    invoke-static {v5}, Lgnu/kawa/reflect/OccurrenceType;->itemPrimeType(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v5

    .line 76
    sget-object v7, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v7, v5}, Lgnu/kawa/xml/NodeType;->compare(Lgnu/bytecode/Type;)I

    move-result v5

    const/16 v7, 0x41

    const/16 v8, 0x20

    const/16 v9, 0x4e

    if-ltz v5, :cond_2

    const/16 v5, 0x4e

    goto :goto_0

    :cond_2
    const/4 v10, -0x3

    if-ne v5, v10, :cond_3

    const/16 v5, 0x41

    goto :goto_0

    :cond_3
    const/16 v5, 0x20

    .line 85
    :goto_0
    invoke-static {v1}, Lgnu/xquery/util/RelativeStep;->extractStep(Lgnu/expr/Expression;)Lgnu/kawa/xml/TreeScanner;

    move-result-object v10

    const/16 v11, 0x53

    if-eqz v10, :cond_6

    .line 88
    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v12

    .line 89
    instance-of v13, v10, Lgnu/kawa/xml/ChildAxis;

    if-nez v13, :cond_4

    instance-of v13, v10, Lgnu/kawa/xml/AttributeAxis;

    if-nez v13, :cond_4

    instance-of v10, v10, Lgnu/kawa/xml/SelfAxis;

    if-eqz v10, :cond_6

    .line 93
    :cond_4
    instance-of v10, v12, Lgnu/kawa/xml/NodeSetType;

    if-nez v10, :cond_5

    if-ne v5, v9, :cond_6

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    invoke-static {v10}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsZeroOrOne(Lgnu/bytecode/Type;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    const/16 v10, 0x53

    goto :goto_1

    :cond_6
    move v10, v5

    .line 109
    :goto_1
    instance-of v5, v0, Lgnu/expr/ConsumerTarget;

    if-nez v5, :cond_7

    .line 111
    invoke-static/range {p1 .. p3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 115
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v12

    .line 117
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v5

    const/4 v13, 0x0

    if-eq v10, v7, :cond_b

    if-ne v10, v11, :cond_8

    goto :goto_3

    :cond_8
    const-string v7, "<init>"

    if-ne v10, v9, :cond_9

    const-string v3, "gnu.kawa.xml.SortedNodes"

    .line 135
    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    .line 136
    invoke-virtual {v3, v7, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    goto :goto_2

    :cond_9
    const-string v11, "gnu.xquery.util.RelativeStepFilter"

    .line 140
    invoke-static {v11}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v11

    .line 141
    invoke-virtual {v11, v7, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    move-object v3, v11

    .line 143
    :goto_2
    invoke-virtual {v5, v12, v3, v13}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v13

    .line 144
    new-instance v5, Lgnu/expr/ConsumerTarget;

    invoke-direct {v5, v13}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    .line 145
    invoke-virtual {v12, v3}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 146
    invoke-virtual {v12, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 147
    check-cast v0, Lgnu/expr/ConsumerTarget;

    invoke-virtual {v0}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v0

    if-eq v10, v9, :cond_a

    .line 149
    invoke-virtual {v12, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 150
    :cond_a
    invoke-virtual {v12, v7}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 151
    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    move-object v7, v0

    move-object v11, v3

    goto :goto_4

    :cond_b
    :goto_3
    move-object v5, v0

    move-object v7, v13

    move-object v11, v7

    .line 154
    :goto_4
    move-object v0, v1

    check-cast v0, Lgnu/expr/LambdaExp;

    const/4 v3, 0x1

    const/4 v14, 0x0

    move-object v1, v2

    move v2, v3

    move-object v3, v14

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lgnu/kawa/functions/ValuesMap;->compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    if-ne v10, v9, :cond_c

    .line 159
    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 160
    invoke-virtual {v12, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 161
    sget-object v0, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const/4 v1, 0x2

    const-string v2, "writeValues"

    invoke-virtual {v0, v2, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v12, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_5

    :cond_c
    if-ne v10, v8, :cond_d

    .line 166
    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    const-string v0, "finish"

    .line 167
    invoke-virtual {v11, v0, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v12, v0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 170
    :cond_d
    :goto_5
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 177
    sget-object p1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object p1
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x2002

    return v0
.end method
