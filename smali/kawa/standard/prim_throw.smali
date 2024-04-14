.class public Lkawa/standard/prim_throw;
.super Lgnu/mapping/Procedure1;
.source "prim_throw.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field private static javaThrowableType:Lgnu/bytecode/ClassType;

.field public static final primitiveThrow:Lkawa/standard/prim_throw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lkawa/standard/prim_throw;

    invoke-direct {v0}, Lkawa/standard/prim_throw;-><init>()V

    sput-object v0, Lkawa/standard/prim_throw;->primitiveThrow:Lkawa/standard/prim_throw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static throw_it(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 19
    invoke-static {p1}, Lkawa/standard/prim_throw;->throw_it(Ljava/lang/Object;)V

    .line 20
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1

    .line 28
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p3

    .line 29
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, p2, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 30
    sget-object p1, Lkawa/standard/prim_throw;->javaThrowableType:Lgnu/bytecode/ClassType;

    if-nez p1, :cond_0

    .line 31
    new-instance p1, Lgnu/bytecode/ClassType;

    const-string p2, "java.lang.Throwable"

    invoke-direct {p1, p2}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    sput-object p1, Lkawa/standard/prim_throw;->javaThrowableType:Lgnu/bytecode/ClassType;

    .line 32
    :cond_0
    sget-object p1, Lkawa/standard/prim_throw;->javaThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {p3, p1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 33
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 38
    sget-object p1, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    return-object p1
.end method
