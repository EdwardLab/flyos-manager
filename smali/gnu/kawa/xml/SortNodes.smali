.class public Lgnu/kawa/xml/SortNodes;
.super Lgnu/mapping/Procedure1;
.source "SortNodes.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final canonicalizeMethod:Lgnu/bytecode/Method;

.field public static final makeSortedNodesMethod:Lgnu/bytecode/Method;

.field public static final sortNodes:Lgnu/kawa/xml/SortNodes;

.field public static final typeSortedNodes:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lgnu/kawa/xml/SortNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/SortNodes;-><init>()V

    sput-object v0, Lgnu/kawa/xml/SortNodes;->sortNodes:Lgnu/kawa/xml/SortNodes;

    const-string v0, "gnu.kawa.xml.SortedNodes"

    .line 53
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/SortNodes;->typeSortedNodes:Lgnu/bytecode/ClassType;

    const-string v1, "<init>"

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/SortNodes;->makeSortedNodesMethod:Lgnu/bytecode/Method;

    .line 57
    sget-object v0, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v1, "canonicalize"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/SortNodes;->canonicalizeMethod:Lgnu/bytecode/Method;

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
    .locals 2

    .line 18
    new-instance v0, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 19
    invoke-static {p1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 20
    iget p1, v0, Lgnu/kawa/xml/SortedNodes;->count:I

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    return-object v0

    .line 22
    :cond_0
    iget p1, v0, Lgnu/kawa/xml/SortedNodes;->count:I

    if-nez p1, :cond_1

    .line 23
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 25
    invoke-virtual {v0, p1}, Lgnu/kawa/xml/SortedNodes;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3

    .line 30
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 31
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p2, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v1, :cond_0

    goto :goto_2

    .line 36
    :cond_0
    instance-of p1, p3, Lgnu/expr/ConsumerTarget;

    if-nez p1, :cond_2

    instance-of p1, p3, Lgnu/expr/StackTarget;

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    sget-object v1, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    sget-object p1, Lgnu/kawa/xml/SortNodes;->canonicalizeMethod:Lgnu/bytecode/Method;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    const/4 v1, 0x0

    .line 42
    aget-object v0, v0, v1

    sget-object v1, Lgnu/kawa/xml/SortNodes;->makeSortedNodesMethod:Lgnu/bytecode/Method;

    invoke-static {v0, p2, p3, v1, p1}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    goto :goto_3

    .line 32
    :cond_3
    :goto_2
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    :goto_3
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 50
    sget-object p1, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object p1
.end method
