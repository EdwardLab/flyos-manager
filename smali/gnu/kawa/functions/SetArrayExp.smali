.class Lgnu/kawa/functions/SetArrayExp;
.super Lgnu/expr/ApplyExp;
.source "CompilationHelpers.java"


# static fields
.field public static final typeSetArray:Lgnu/bytecode/ClassType;


# instance fields
.field elementType:Lgnu/bytecode/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "gnu.kawa.functions.SetArray"

    .line 170
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/SetArrayExp;->typeSetArray:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;Lgnu/bytecode/ArrayType;)V
    .locals 4

    .line 177
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    const/4 v1, 0x2

    new-array v1, v1, [Lgnu/expr/Expression;

    new-instance v2, Lgnu/expr/QuoteExp;

    sget-object v3, Lgnu/kawa/functions/SetArrayExp;->typeSetArray:Lgnu/bytecode/ClassType;

    invoke-direct {v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 178
    invoke-virtual {p2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p1

    iput-object p1, p0, Lgnu/kawa/functions/SetArrayExp;->elementType:Lgnu/bytecode/Type;

    return-void
.end method


# virtual methods
.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 4

    .line 184
    invoke-virtual {p1, p2}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 185
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p4

    .line 186
    array-length v0, p4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lgnu/kawa/functions/SetArrayExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const/4 v2, 0x3

    new-array v2, v2, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 191
    aget-object p1, p4, v3

    aput-object p1, v2, v0

    .line 192
    aget-object p1, p4, v0

    aput-object p1, v2, v1

    .line 193
    new-instance p1, Lgnu/kawa/reflect/ArraySet;

    iget-object p4, p0, Lgnu/kawa/functions/SetArrayExp;->elementType:Lgnu/bytecode/Type;

    invoke-direct {p1, p4}, Lgnu/kawa/reflect/ArraySet;-><init>(Lgnu/bytecode/Type;)V

    .line 194
    new-instance p4, Lgnu/expr/ApplyExp;

    invoke-direct {p4, p1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, p4, p3}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    :cond_0
    return-object p1
.end method
