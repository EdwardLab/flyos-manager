.class public Lgnu/expr/ClassInitializer;
.super Lgnu/expr/Initializer;
.source "ClassInitializer.java"


# instance fields
.field cexp:Lgnu/expr/ClassExp;


# direct methods
.method public constructor <init>(Lgnu/expr/ClassExp;Lgnu/expr/Compilation;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lgnu/expr/Initializer;-><init>()V

    .line 15
    invoke-virtual {p1, p2}, Lgnu/expr/ClassExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    .line 16
    invoke-virtual {p1, p2}, Lgnu/expr/ClassExp;->compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    .line 17
    iput-object p1, p0, Lgnu/expr/ClassInitializer;->cexp:Lgnu/expr/ClassExp;

    .line 18
    iget-object v0, p0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object p1, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    iput-object p1, p0, Lgnu/expr/ClassInitializer;->next:Lgnu/expr/Initializer;

    .line 21
    iput-object p0, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ClassExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object p1

    .line 26
    iget-object p2, p1, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    iput-object p2, p0, Lgnu/expr/ClassInitializer;->next:Lgnu/expr/Initializer;

    .line 27
    iput-object p0, p1, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    :goto_0
    return-void
.end method


# virtual methods
.method public emit(Lgnu/expr/Compilation;)V
    .locals 3

    .line 33
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 36
    :cond_0
    iget-object v1, p0, Lgnu/expr/ClassInitializer;->cexp:Lgnu/expr/ClassExp;

    sget-object v2, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-static {v2}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lgnu/expr/ClassExp;->compilePushClass(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 37
    iget-object p1, p0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {p1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 38
    iget-object p1, p0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    :goto_0
    return-void
.end method
