.class public Lgnu/kawa/xml/CoerceNodes;
.super Lgnu/mapping/Procedure1;
.source "CoerceNodes.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final coerceNodes:Lgnu/kawa/xml/CoerceNodes;

.field public static final makeNodesMethod:Lgnu/bytecode/Method;

.field public static final typeNodes:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lgnu/kawa/xml/CoerceNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/CoerceNodes;-><init>()V

    sput-object v0, Lgnu/kawa/xml/CoerceNodes;->coerceNodes:Lgnu/kawa/xml/CoerceNodes;

    const-string v0, "gnu.kawa.xml.Nodes"

    .line 38
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    const-string v1, "<init>"

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/CoerceNodes;->makeNodesMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 18
    new-instance v0, Lgnu/kawa/xml/Nodes;

    invoke-direct {v0}, Lgnu/kawa/xml/Nodes;-><init>()V

    .line 19
    invoke-static {p1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3

    .line 25
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 26
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 27
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 29
    aget-object p1, v0, p1

    sget-object v0, Lgnu/kawa/xml/CoerceNodes;->makeNodesMethod:Lgnu/bytecode/Method;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    :goto_0
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 35
    sget-object p1, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    return-object p1
.end method
