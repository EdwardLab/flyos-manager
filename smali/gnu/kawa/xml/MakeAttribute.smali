.class public Lgnu/kawa/xml/MakeAttribute;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeAttribute.java"


# static fields
.field static final endAttributeMethod:Lgnu/bytecode/Method;

.field public static final makeAttribute:Lgnu/kawa/xml/MakeAttribute;

.field public static final makeAttributeExp:Lgnu/expr/QuoteExp;

.field static final startAttributeMethod:Lgnu/bytecode/Method;

.field static final typeMakeAttribute:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lgnu/kawa/xml/MakeAttribute;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeAttribute;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    .line 13
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    const-string v0, "gnu.kawa.xml.MakeAttribute"

    .line 66
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->typeMakeAttribute:Lgnu/bytecode/ClassType;

    const-string v1, "startAttribute"

    const/4 v2, 0x2

    .line 68
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->startAttributeMethod:Lgnu/bytecode/Method;

    .line 70
    sget-object v0, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const-string v1, "endAttribute"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/MakeAttribute;->endAttributeMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method

.method public static startAttribute(Lgnu/lists/Consumer;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-interface {p0, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5

    .line 24
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 25
    invoke-static {p1}, Lgnu/kawa/xml/MakeAttribute;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v1

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Lgnu/kawa/xml/MakeAttribute;->startAttribute(Lgnu/lists/Consumer;Ljava/lang/Object;)V

    .line 30
    sget-object v2, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    .line 33
    :goto_0
    invoke-virtual {p1, v2}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_0

    .line 41
    invoke-interface {v1}, Lgnu/lists/Consumer;->endAttribute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {v0, p1}, Lgnu/kawa/xml/MakeAttribute;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    return-void

    .line 36
    :cond_0
    :try_start_1
    instance-of v4, v3, Lgnu/lists/Consumable;

    if-eqz v4, :cond_1

    .line 37
    check-cast v3, Lgnu/lists/Consumable;

    invoke-interface {v3, v1}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1, v3}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 45
    invoke-static {v0, p1}, Lgnu/kawa/xml/MakeAttribute;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw v1
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 4

    .line 52
    invoke-virtual {p3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    .line 54
    array-length v1, p1

    .line 55
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 56
    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 57
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitDup()V

    const/4 v0, 0x0

    .line 58
    aget-object v0, p1, v0

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v0, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 60
    sget-object v0, Lgnu/kawa/xml/MakeAttribute;->startAttributeMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 62
    aget-object v3, p1, v0

    invoke-static {v3, p2, p3}, Lgnu/kawa/xml/MakeAttribute;->compileChild(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    sget-object p1, Lgnu/kawa/xml/MakeAttribute;->endAttributeMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 75
    sget-object p1, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object p1
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, -0xfff

    return v0
.end method
