.class public Lgnu/bytecode/VarEnumerator;
.super Ljava/lang/Object;
.source "VarEnumerator.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field currentScope:Lgnu/bytecode/Scope;

.field next:Lgnu/bytecode/Variable;

.field topScope:Lgnu/bytecode/Scope;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Scope;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    .line 20
    invoke-virtual {p0}, Lgnu/bytecode/VarEnumerator;->reset()V

    return-void
.end method

.method private fixup()V
    .locals 2

    .line 36
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-nez v0, :cond_3

    .line 38
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v0, v0, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v0, v0, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    goto :goto_2

    .line 42
    :cond_0
    :goto_1
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v0, v0, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    if-nez v0, :cond_2

    .line 44
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v1, p0, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    if-ne v0, v1, :cond_1

    return-void

    .line 46
    :cond_1
    iget-object v0, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    goto :goto_1

    .line 48
    :cond_2
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v0, v0, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    .line 50
    :goto_2
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    invoke-virtual {v0}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .line 74
    invoke-virtual {p0}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "VarEnumerator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextVar()Lgnu/bytecode/Variable;
    .locals 2

    .line 57
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    iput-object v1, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-nez v1, :cond_0

    .line 62
    invoke-direct {p0}, Lgnu/bytecode/VarEnumerator;->fixup()V

    :cond_0
    return-object v0
.end method

.method public final reset()V
    .locals 1

    .line 25
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-nez v0, :cond_0

    .line 30
    invoke-direct {p0}, Lgnu/bytecode/VarEnumerator;->fixup()V

    :cond_0
    return-void
.end method
