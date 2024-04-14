.class Lgnu/kawa/functions/SetListExp;
.super Lgnu/expr/ApplyExp;
.source "CompilationHelpers.java"


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 4

    .line 210
    invoke-virtual {p1, p2}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 211
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p4

    .line 212
    array-length v0, p4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [Lgnu/expr/Expression;

    .line 215
    invoke-virtual {p0}, Lgnu/kawa/functions/SetListExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    aput-object v0, p1, v2

    const-string v0, "set"

    .line 216
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, p1, v3

    .line 217
    aget-object v0, p4, v2

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-static {v0, v2}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    aput-object v0, p1, v1

    const/4 v0, 0x3

    .line 218
    aget-object p4, p4, v3

    aput-object p4, p1, v0

    .line 219
    new-instance p4, Lgnu/expr/ApplyExp;

    sget-object v0, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    invoke-direct {p4, v0, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, p4, p3}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    .line 221
    sget-object p2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-static {p1, p2}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    :cond_0
    return-object p1
.end method
