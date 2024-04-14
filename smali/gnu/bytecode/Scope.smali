.class public Lgnu/bytecode/Scope;
.super Ljava/lang/Object;
.source "Scope.java"


# instance fields
.field end:Lgnu/bytecode/Label;

.field firstChild:Lgnu/bytecode/Scope;

.field lastChild:Lgnu/bytecode/Scope;

.field last_var:Lgnu/bytecode/Variable;

.field nextSibling:Lgnu/bytecode/Scope;

.field parent:Lgnu/bytecode/Scope;

.field preserved:Z

.field start:Lgnu/bytecode/Label;

.field vars:Lgnu/bytecode/Variable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    .line 28
    iput-object p2, p0, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    return-void
.end method

.method static equals([B[B)Z
    .locals 5

    .line 105
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 109
    :cond_1
    array-length v1, p0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 110
    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-eq v3, v4, :cond_2

    return v2

    :cond_3
    return v0
.end method


# virtual methods
.method public addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;
    .locals 1

    .line 51
    new-instance v0, Lgnu/bytecode/Variable;

    invoke-direct {v0, p3, p2}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    .line 52
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Variable;)V

    return-object v0
.end method

.method public addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Variable;)V
    .locals 1

    .line 88
    invoke-virtual {p0, p2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 89
    invoke-virtual {p2}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p2, p1}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    :cond_0
    return-void
.end method

.method public addVariable(Lgnu/bytecode/Variable;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lgnu/bytecode/Scope;->last_var:Lgnu/bytecode/Variable;

    if-nez v0, :cond_0

    .line 59
    iput-object p1, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 61
    :cond_0
    iput-object p1, v0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    .line 62
    :goto_0
    iput-object p1, p0, Lgnu/bytecode/Scope;->last_var:Lgnu/bytecode/Variable;

    .line 63
    iput-object p0, p1, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    return-void
.end method

.method public addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 71
    iget-object v0, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    iput-object v0, p2, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    .line 72
    iput-object p2, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p1, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    iput-object v0, p2, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    .line 77
    iput-object p2, p1, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    .line 79
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/Scope;->last_var:Lgnu/bytecode/Variable;

    if-ne v0, p1, :cond_1

    .line 80
    iput-object p2, p0, Lgnu/bytecode/Scope;->last_var:Lgnu/bytecode/Variable;

    .line 81
    :cond_1
    iget-object p1, p2, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    if-eq p1, p2, :cond_2

    .line 83
    iput-object p0, p2, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    return-void

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/Error;

    const-string p2, "cycle"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public allVars()Lgnu/bytecode/VarEnumerator;
    .locals 1

    .line 34
    new-instance v0, Lgnu/bytecode/VarEnumerator;

    invoke-direct {v0, p0}, Lgnu/bytecode/VarEnumerator;-><init>(Lgnu/bytecode/Scope;)V

    return-object v0
.end method

.method public final firstVar()Lgnu/bytecode/Variable;
    .locals 1

    .line 32
    iget-object v0, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method freeLocals(Lgnu/bytecode/CodeAttr;)V
    .locals 2

    .line 149
    iget-boolean v0, p0, Lgnu/bytecode/Scope;->preserved:Z

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    :goto_0
    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->dead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->freeLocal(Lgnu/bytecode/CodeAttr;)V

    .line 151
    :cond_1
    iget-object v0, v0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    :goto_1
    if-eqz v0, :cond_4

    .line 158
    iget-boolean v1, v0, Lgnu/bytecode/Scope;->preserved:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 160
    iput-boolean v1, v0, Lgnu/bytecode/Scope;->preserved:Z

    .line 161
    invoke-virtual {v0, p1}, Lgnu/bytecode/Scope;->freeLocals(Lgnu/bytecode/CodeAttr;)V

    .line 156
    :cond_3
    iget-object v0, v0, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getVariable(I)Lgnu/bytecode/Variable;
    .locals 1

    .line 98
    iget-object v0, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 100
    iget-object v0, v0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public linkChild(Lgnu/bytecode/Scope;)V
    .locals 1

    .line 39
    iput-object p1, p0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p1, Lgnu/bytecode/Scope;->lastChild:Lgnu/bytecode/Scope;

    if-nez v0, :cond_1

    .line 43
    iput-object p0, p1, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    goto :goto_0

    .line 45
    :cond_1
    iput-object p0, v0, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    .line 46
    :goto_0
    iput-object p0, p1, Lgnu/bytecode/Scope;->lastChild:Lgnu/bytecode/Scope;

    return-void
.end method

.method public lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;
    .locals 2

    .line 137
    iget-object v0, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    :goto_0
    if-eqz v0, :cond_1

    .line 138
    iget-object v1, v0, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 137
    :cond_0
    iget-object v0, v0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public noteStartFunction(Lgnu/bytecode/CodeAttr;)V
    .locals 1

    .line 127
    invoke-virtual {p0, p1}, Lgnu/bytecode/Scope;->setStartPC(Lgnu/bytecode/CodeAttr;)V

    .line 128
    iget-object v0, p0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    return-void
.end method

.method public setStartPC(Lgnu/bytecode/CodeAttr;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0}, Lgnu/bytecode/Label;-><init>()V

    iput-object v0, p0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    .line 119
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v0

    .line 120
    iget-object v1, p0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    invoke-virtual {v1, p1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 121
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->setReachable(Z)V

    return-void
.end method
