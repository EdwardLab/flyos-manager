.class public Lgnu/kawa/xml/MakeText;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeText.java"


# static fields
.field public static final makeText:Lgnu/kawa/xml/MakeText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lgnu/kawa/xml/MakeText;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeText;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeText;->makeText:Lgnu/kawa/xml/MakeText;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method

.method public static text$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 28
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 31
    invoke-static {p1}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v1

    .line 34
    :try_start_0
    invoke-static {p0, v1}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/kawa/xml/MakeText;->text$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_1

    .line 19
    instance-of v0, p1, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    .line 22
    new-instance v1, Lgnu/xml/XMLFilter;

    invoke-direct {v1, v0}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    invoke-static {p1, v1}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 23
    invoke-static {v0}, Lgnu/kawa/xml/KText;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0

    .line 51
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 6

    .line 58
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    const/4 v1, 0x0

    .line 60
    aget-object p1, p1, v1

    .line 61
    invoke-virtual {p3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object p3

    .line 62
    instance-of v2, p1, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_1

    .line 64
    move-object v2, p1

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 65
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 67
    check-cast v2, Ljava/lang/String;

    .line 68
    invoke-static {v2}, Lgnu/bytecode/CodeAttr;->calculateSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 70
    invoke-virtual {p3}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    const/4 v4, 0x1

    new-array v4, v4, [Lgnu/bytecode/Type;

    .line 71
    sget-object v5, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v1

    const-string v5, "write"

    invoke-virtual {v3, v5, v4}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 76
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v5, v4

    .line 78
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_0

    :cond_0
    return-void

    .line 85
    :cond_1
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 86
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    const-string p1, "gnu.xml.TextUtils"

    .line 87
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    const/4 p2, 0x2

    const-string p3, "textValue"

    invoke-virtual {p1, p3, p2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    return-void
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x1001

    return v0
.end method
