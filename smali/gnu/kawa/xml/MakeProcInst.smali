.class public Lgnu/kawa/xml/MakeProcInst;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeProcInst.java"


# static fields
.field public static final makeProcInst:Lgnu/kawa/xml/MakeProcInst;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lgnu/kawa/xml/MakeProcInst;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeProcInst;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeProcInst;->makeProcInst:Lgnu/kawa/xml/MakeProcInst;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method

.method public static procInst$C(Ljava/lang/Object;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 5

    .line 20
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 21
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "invalid type of processing-instruction target [XPTY0004]"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_1
    :goto_0
    instance-of v0, p2, Lgnu/lists/XConsumer;

    if-nez v0, :cond_2

    return-void

    .line 26
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    instance-of v1, p1, Lgnu/mapping/Values;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 29
    check-cast p1, Lgnu/mapping/Values;

    invoke-virtual {p1}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 30
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_5

    if-lez v1, :cond_3

    const/16 v3, 0x20

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    :cond_3
    aget-object v3, p1, v1

    invoke-static {v3, v0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    :cond_4
    invoke-static {p1, v0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 39
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_6

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    sub-int v3, p1, v1

    .line 43
    new-array v4, v3, [C

    .line 44
    invoke-virtual {v0, v1, p1, v4, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 45
    check-cast p2, Lgnu/lists/XConsumer;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v4, v2, v3}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    return-void
.end method

.method public static procInst$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 2

    .line 52
    iget-object v0, p2, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 53
    invoke-static {p2}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v1

    .line 56
    :try_start_0
    invoke-static {p0, p1, v1}, Lgnu/kawa/xml/MakeProcInst;->procInst$C(Ljava/lang/Object;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {v0, p2}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, p2}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw p0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 2

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lgnu/kawa/xml/MakeProcInst;->procInst$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 3

    .line 72
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    const/4 v1, 0x0

    .line 74
    aget-object v1, p1, v1

    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v1, p2, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    const/4 v1, 0x1

    .line 75
    aget-object p1, p1, v1

    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 76
    invoke-virtual {p3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    const-string p1, "gnu.kawa.xml.MakeProcInst"

    .line 77
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    const-string p2, "procInst$C"

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    return-void
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x2002

    return v0
.end method
