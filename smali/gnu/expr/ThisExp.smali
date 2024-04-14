.class public Lgnu/expr/ThisExp;
.super Lgnu/expr/ReferenceExp;
.source "ThisExp.java"


# static fields
.field static EVAL_TO_CONTEXT:I = 0x2

.field public static final THIS_NAME:Ljava/lang/String;


# instance fields
.field context:Lgnu/expr/ScopeExp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/String;

    const-string v1, "$this$"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    sget-object v0, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 2

    .line 57
    new-instance v0, Lgnu/expr/Declaration;

    sget-object v1, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    invoke-direct {p0, v0}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Declaration;)V
    .locals 1

    .line 52
    sget-object v0, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    return-void
.end method

.method public constructor <init>(Lgnu/expr/ScopeExp;)V
    .locals 1

    .line 46
    sget-object v0, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 47
    iput-object p1, p0, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    return-void
.end method

.method public static makeGivingContext(Lgnu/expr/ScopeExp;)Lgnu/expr/ThisExp;
    .locals 2

    .line 62
    new-instance v0, Lgnu/expr/ThisExp;

    invoke-direct {v0, p0}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/ScopeExp;)V

    .line 63
    iget p0, v0, Lgnu/expr/ThisExp;->flags:I

    sget v1, Lgnu/expr/ThisExp;->EVAL_TO_CONTEXT:I

    or-int/2addr p0, v1

    iput p0, v0, Lgnu/expr/ThisExp;->flags:I

    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lgnu/expr/ThisExp;->isForContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ReferenceExp;->apply(Lgnu/mapping/CallContext;)V

    :goto_0
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2

    .line 69
    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ThisExp;->isForContext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 75
    iget-object v1, p1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 79
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/ThisExp;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 83
    :cond_2
    invoke-super {p0, p1, p2}, Lgnu/expr/ReferenceExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    :goto_1
    return-void
.end method

.method public getContextScope()Lgnu/expr/ScopeExp;
    .locals 1

    .line 37
    iget-object v0, p0, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 2

    .line 94
    iget-object v0, p0, Lgnu/expr/ThisExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lgnu/expr/ThisExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-nez v1, :cond_2

    instance-of v1, v0, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0

    .line 97
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public final isForContext()Z
    .locals 2

    .line 25
    iget v0, p0, Lgnu/expr/ThisExp;->flags:I

    sget v1, Lgnu/expr/ThisExp;->EVAL_TO_CONTEXT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 89
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
