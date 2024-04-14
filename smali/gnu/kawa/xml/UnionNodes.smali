.class public Lgnu/kawa/xml/UnionNodes;
.super Lgnu/mapping/Procedure2;
.source "UnionNodes.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final unionNodes:Lgnu/kawa/xml/UnionNodes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lgnu/kawa/xml/UnionNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/UnionNodes;-><init>()V

    sput-object v0, Lgnu/kawa/xml/UnionNodes;->unionNodes:Lgnu/kawa/xml/UnionNodes;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 20
    new-instance v0, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 21
    invoke-static {p1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 22
    invoke-static {p2, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2

    .line 28
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 29
    sget-object p1, Lgnu/kawa/xml/SortNodes;->makeSortedNodesMethod:Lgnu/bytecode/Method;

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, p1, v1}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 35
    sget-object p1, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object p1
.end method
