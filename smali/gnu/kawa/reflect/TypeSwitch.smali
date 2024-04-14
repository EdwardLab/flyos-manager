.class public Lgnu/kawa/reflect/TypeSwitch;
.super Lgnu/mapping/MethodProc;
.source "TypeSwitch.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final typeSwitch:Lgnu/kawa/reflect/TypeSwitch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lgnu/kawa/reflect/TypeSwitch;

    const-string v1, "typeswitch"

    invoke-direct {v0, v1}, Lgnu/kawa/reflect/TypeSwitch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/reflect/TypeSwitch;->typeSwitch:Lgnu/kawa/reflect/TypeSwitch;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lgnu/kawa/reflect/TypeSwitch;->setName(Ljava/lang/String;)V

    .line 25
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v0, "gnu.kawa.reflect.CompileReflect:validateApplyTypeSwitch"

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/reflect/TypeSwitch;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    aget-object v1, v0, v1

    .line 35
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ge v3, v2, :cond_1

    .line 38
    aget-object v4, v0, v3

    check-cast v4, Lgnu/mapping/MethodProc;

    .line 39
    invoke-virtual {v4, v1, p1}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    if-ltz v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_1
    aget-object v0, v0, v2

    check-cast v0, Lgnu/mapping/Procedure;

    .line 44
    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .line 49
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    .line 51
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 53
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v1

    const/4 v2, 0x0

    .line 54
    aget-object v2, p1, v2

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 55
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 57
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_6

    if-le v3, v2, :cond_0

    .line 60
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitElse()V

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 62
    aget-object v3, p1, v3

    .line 64
    instance-of v5, v3, Lgnu/expr/LambdaExp;

    if-eqz v5, :cond_5

    .line 66
    check-cast v3, Lgnu/expr/LambdaExp;

    .line 67
    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    .line 68
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 69
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v5, v0}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    .line 74
    :goto_1
    instance-of v7, v6, Lgnu/expr/TypeValue;

    if-eqz v7, :cond_2

    .line 75
    check-cast v6, Lgnu/expr/TypeValue;

    invoke-interface {v6, v1, v5, p2}, Lgnu/expr/TypeValue;->emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    goto :goto_2

    .line 78
    :cond_2
    array-length v7, p1

    if-ge v4, v7, :cond_3

    .line 80
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 81
    invoke-virtual {v6, v0}, Lgnu/bytecode/Type;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 82
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    :cond_3
    if-eqz v5, :cond_4

    .line 86
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 87
    invoke-virtual {v5, p2}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 90
    :cond_4
    :goto_2
    invoke-virtual {v3, p2}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 91
    iget-object v3, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v3, p2, p3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    move v3, v4

    goto :goto_0

    .line 95
    :cond_5
    new-instance p1, Ljava/lang/Error;

    const-string p2, "not implemented: typeswitch arg not LambdaExp"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_6
    array-length p1, p1

    add-int/lit8 p1, p1, -0x2

    :goto_3
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_7

    .line 99
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_3

    .line 101
    :cond_7
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 107
    sget-object p1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object p1
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, -0xffe

    return v0
.end method
