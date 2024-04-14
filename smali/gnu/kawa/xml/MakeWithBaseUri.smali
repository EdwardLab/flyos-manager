.class public Lgnu/kawa/xml/MakeWithBaseUri;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeWithBaseUri.java"


# static fields
.field static final beginEntityMethod:Lgnu/bytecode/Method;

.field static final endEntityMethod:Lgnu/bytecode/Method;

.field public static final makeWithBaseUri:Lgnu/kawa/xml/MakeWithBaseUri;

.field static final typeXConsumer:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lgnu/kawa/xml/MakeWithBaseUri;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeWithBaseUri;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeWithBaseUri;->makeWithBaseUri:Lgnu/kawa/xml/MakeWithBaseUri;

    const-string v0, "gnu.lists.XConsumer"

    .line 60
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeWithBaseUri;->typeXConsumer:Lgnu/bytecode/ClassType;

    const-string v1, "beginEntity"

    const/4 v2, 0x1

    .line 61
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/MakeWithBaseUri;->beginEntityMethod:Lgnu/bytecode/Method;

    const-string v1, "endEntity"

    const/4 v2, 0x0

    .line 63
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeWithBaseUri;->endEntityMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6

    .line 24
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 25
    invoke-static {p1}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    .line 27
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    .line 28
    instance-of v4, v1, Lgnu/lists/XConsumer;

    if-eqz v4, :cond_0

    .line 29
    move-object v5, v1

    check-cast v5, Lgnu/lists/XConsumer;

    invoke-interface {v5, v2}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    .line 32
    :cond_0
    :try_start_0
    invoke-static {v3, v1}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 37
    move-object v2, v1

    check-cast v2, Lgnu/lists/XConsumer;

    invoke-interface {v2}, Lgnu/lists/XConsumer;->endEntity()V

    .line 38
    :cond_1
    instance-of v2, v1, Lgnu/lists/TreeList;

    if-eqz v2, :cond_2

    .line 39
    check-cast v1, Lgnu/lists/TreeList;

    invoke-virtual {v1}, Lgnu/lists/TreeList;->dump()V

    .line 40
    :cond_2
    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    return-void

    :catchall_0
    move-exception v2

    if-eqz v4, :cond_3

    .line 37
    move-object v3, v1

    check-cast v3, Lgnu/lists/XConsumer;

    invoke-interface {v3}, Lgnu/lists/XConsumer;->endEntity()V

    .line 38
    :cond_3
    instance-of v3, v1, Lgnu/lists/TreeList;

    if-eqz v3, :cond_4

    .line 39
    check-cast v1, Lgnu/lists/TreeList;

    invoke-virtual {v1}, Lgnu/lists/TreeList;->dump()V

    .line 40
    :cond_4
    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw v2
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 4

    .line 48
    invoke-virtual {p3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    .line 50
    array-length v1, p1

    .line 51
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    const/4 v2, 0x0

    .line 53
    aget-object v2, p1, v2

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 54
    sget-object v2, Lgnu/kawa/xml/MakeWithBaseUri;->beginEntityMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    const/4 v2, 0x1

    .line 55
    aget-object p1, p1, v2

    invoke-static {p1, p2, p3}, Lgnu/kawa/xml/MakeWithBaseUri;->compileChild(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 56
    invoke-virtual {v1, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 57
    sget-object p1, Lgnu/kawa/xml/MakeWithBaseUri;->endEntityMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    return-void
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x2002

    return v0
.end method
