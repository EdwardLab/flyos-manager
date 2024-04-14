.class public Lgnu/kawa/functions/CallCC;
.super Lgnu/mapping/MethodProc;
.source "CallCC.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final callcc:Lgnu/kawa/functions/CallCC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lgnu/kawa/functions/CallCC;

    invoke-direct {v0}, Lgnu/kawa/functions/CallCC;-><init>()V

    sput-object v0, Lgnu/kawa/functions/CallCC;->callcc:Lgnu/kawa/functions/CallCC;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 19
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileMisc:validateApplyCallCC"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/CallCC;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    iget-object v0, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Procedure;

    .line 35
    new-instance v1, Lkawa/lang/Continuation;

    invoke-direct {v1, p1}, Lkawa/lang/Continuation;-><init>(Lgnu/mapping/CallContext;)V

    .line 36
    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 37
    iget-object v0, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v2, 0x0

    .line 38
    iput-object v2, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 41
    :try_start_0
    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply(Lgnu/mapping/CallContext;)V

    .line 42
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, v1, Lkawa/lang/Continuation;->invoked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 47
    invoke-static {v0, v1, p1}, Lkawa/lang/Continuation;->handleException$X(Ljava/lang/Throwable;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V

    :goto_0
    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0

    .line 63
    invoke-static {p1, p2, p3, p0}, Lgnu/kawa/functions/CompileMisc;->compileCallCC(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 68
    sget-object p1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object p1
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1

    .line 27
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    const/high16 p1, -0xc0000

    return p1

    .line 29
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x1001

    return v0
.end method
