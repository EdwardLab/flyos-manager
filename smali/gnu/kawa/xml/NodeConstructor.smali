.class public abstract Lgnu/kawa/xml/NodeConstructor;
.super Lgnu/mapping/MethodProc;
.source "NodeConstructor.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static final popNodeConsumerMethod:Lgnu/bytecode/Method;

.field static final popNodeContextMethod:Lgnu/bytecode/Method;

.field static final pushNodeConsumerMethod:Lgnu/bytecode/Method;

.field static final pushNodeContextMethod:Lgnu/bytecode/Method;

.field static final typeKNode:Lgnu/bytecode/ClassType;

.field static final typeNodeConstructor:Lgnu/bytecode/ClassType;

.field static final typeXMLFilter:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gnu.xml.XMLFilter"

    .line 164
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->typeXMLFilter:Lgnu/bytecode/ClassType;

    const-string v0, "gnu.kawa.xml.KNode"

    .line 166
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->typeKNode:Lgnu/bytecode/ClassType;

    const-string v0, "gnu.kawa.xml.NodeConstructor"

    .line 168
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string v1, "pushNodeContext"

    const/4 v2, 0x1

    .line 170
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/NodeConstructor;->pushNodeContextMethod:Lgnu/bytecode/Method;

    const-string v1, "popNodeContext"

    const/4 v3, 0x2

    .line 172
    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/NodeConstructor;->popNodeContextMethod:Lgnu/bytecode/Method;

    const-string v1, "pushNodeConsumer"

    .line 174
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/NodeConstructor;->pushNodeConsumerMethod:Lgnu/bytecode/Method;

    const-string v1, "popNodeConsumer"

    .line 176
    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->popNodeConsumerMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static compileChild(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 3

    .line 65
    instance-of v0, p0, Lgnu/expr/ApplyExp;

    if-eqz v0, :cond_0

    .line 67
    move-object v0, p0

    check-cast v0, Lgnu/expr/ApplyExp;

    .line 68
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v1

    .line 69
    instance-of v2, v1, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_0

    .line 71
    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 72
    instance-of v2, v1, Lgnu/kawa/xml/NodeConstructor;

    if-eqz v2, :cond_0

    .line 74
    check-cast v1, Lgnu/kawa/xml/NodeConstructor;

    invoke-virtual {v1, v0, p1, p2}, Lgnu/kawa/xml/NodeConstructor;->compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public static compileUsingNodeTree(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4

    .line 88
    sget-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string v1, "makeNode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    const-string v2, "finishNode"

    const/4 v3, 0x1

    .line 89
    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 90
    invoke-static {p0, p1, p2, v1, v0}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    return-void
.end method

.method public static finishNode(Lgnu/xml/XMLFilter;)Lgnu/kawa/xml/KNode;
    .locals 0

    .line 101
    iget-object p0, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    check-cast p0, Lgnu/xml/NodeTree;

    invoke-static {p0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object p0

    return-object p0
.end method

.method public static makeNode()Lgnu/xml/XMLFilter;
    .locals 2

    .line 96
    new-instance v0, Lgnu/xml/XMLFilter;

    new-instance v1, Lgnu/xml/NodeTree;

    invoke-direct {v1}, Lgnu/xml/NodeTree;-><init>()V

    invoke-direct {v0, v1}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    return-object v0
.end method

.method public static popNodeConsumer(Lgnu/lists/Consumer;Lgnu/lists/Consumer;)V
    .locals 1

    if-eq p0, p1, :cond_1

    .line 28
    instance-of v0, p1, Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/xml/XMLFilter;

    iget-object p1, p1, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    check-cast p1, Lgnu/xml/NodeTree;

    invoke-static {p1}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object p1

    :cond_0
    invoke-interface {p0, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V
    .locals 2

    .line 52
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    if-eq p0, v0, :cond_1

    .line 55
    instance-of v1, v0, Lgnu/xml/XMLFilter;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Lgnu/xml/XMLFilter;

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/xml/NodeTree;

    invoke-static {v0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v0

    .line 57
    :cond_0
    invoke-interface {p0, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 58
    iput-object p0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    :cond_1
    return-void
.end method

.method public static pushNodeConsumer(Lgnu/lists/Consumer;)Lgnu/xml/XMLFilter;
    .locals 1

    .line 19
    instance-of v0, p0, Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_0

    .line 20
    check-cast p0, Lgnu/xml/XMLFilter;

    return-object p0

    .line 22
    :cond_0
    new-instance p0, Lgnu/xml/XMLFilter;

    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    return-object p0
.end method

.method public static pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;
    .locals 2

    .line 35
    iget-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 36
    instance-of v1, v0, Lgnu/xml/XMLFilter;

    if-eqz v1, :cond_0

    .line 37
    check-cast v0, Lgnu/xml/XMLFilter;

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lgnu/xml/XMLFilter;

    new-instance v1, Lgnu/xml/NodeTree;

    invoke-direct {v1}, Lgnu/xml/NodeTree;-><init>()V

    invoke-direct {v0, v1}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 45
    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-object v0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5

    .line 106
    instance-of v0, p3, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_2

    .line 108
    :cond_0
    instance-of v0, p3, Lgnu/expr/ConsumerTarget;

    if-nez v0, :cond_1

    .line 109
    invoke-static {p1, p2, p3}, Lgnu/kawa/xml/NodeConstructor;->compileUsingNodeTree(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_2

    .line 112
    :cond_1
    check-cast p3, Lgnu/expr/ConsumerTarget;

    .line 113
    invoke-virtual {p3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 115
    sget-object v2, Lgnu/kawa/xml/NodeConstructor;->typeXMLFilter:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/xml/NodeConstructor;->compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    goto :goto_2

    .line 119
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 120
    array-length v1, v1

    .line 121
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v3

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v3, v1, v2, v4}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    .line 125
    invoke-virtual {p3}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    invoke-virtual {p2}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 128
    sget-object v3, Lgnu/kawa/xml/NodeConstructor;->pushNodeContextMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {v1, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 133
    sget-object v3, Lgnu/kawa/xml/NodeConstructor;->pushNodeConsumerMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 135
    :goto_0
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    const/4 v3, 0x1

    .line 136
    sget-object v4, Lgnu/bytecode/Type;->void_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 137
    new-instance v3, Lgnu/expr/ConsumerTarget;

    invoke-direct {v3, v2}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    .line 138
    invoke-virtual {p0, p1, p2, v3}, Lgnu/kawa/xml/NodeConstructor;->compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 139
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 140
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    .line 141
    invoke-virtual {v1, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 142
    invoke-virtual {p3}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 144
    invoke-virtual {p2}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 145
    sget-object p1, Lgnu/kawa/xml/NodeConstructor;->popNodeContextMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 149
    :cond_4
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 150
    sget-object p1, Lgnu/kawa/xml/NodeConstructor;->popNodeConsumerMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 152
    :goto_1
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 153
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 154
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    :goto_2
    return-void
.end method

.method public abstract compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 161
    sget-object p1, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object p1
.end method
