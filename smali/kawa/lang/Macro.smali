.class public Lkawa/lang/Macro;
.super Lkawa/lang/Syntax;
.source "Macro.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field private capturedScope:Lgnu/expr/ScopeExp;

.field public expander:Ljava/lang/Object;

.field private hygienic:Z

.field instance:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lkawa/lang/Macro;->hygienic:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lkawa/lang/Macro;->hygienic:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/mapping/Procedure;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lkawa/lang/Macro;->hygienic:Z

    .line 90
    new-instance p1, Lgnu/expr/QuoteExp;

    invoke-direct {p1, p2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkawa/lang/Macro;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lkawa/lang/Macro;->hygienic:Z

    .line 82
    iget-object v0, p1, Lkawa/lang/Macro;->name:Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/Macro;->name:Ljava/lang/Object;

    .line 83
    iget-object v0, p1, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    .line 84
    iget-boolean p1, p1, Lkawa/lang/Macro;->hygienic:Z

    iput-boolean p1, p0, Lkawa/lang/Macro;->hygienic:Z

    return-void
.end method

.method public static make(Lgnu/expr/Declaration;)Lkawa/lang/Macro;
    .locals 2

    .line 37
    new-instance v0, Lkawa/lang/Macro;

    invoke-virtual {p0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lkawa/lang/Macro;-><init>(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Lgnu/expr/Declaration;->setSyntax()V

    .line 39
    iget-object p0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    iput-object p0, v0, Lkawa/lang/Macro;->capturedScope:Lgnu/expr/ScopeExp;

    return-object v0
.end method

.method public static make(Ljava/lang/Object;Lgnu/mapping/Procedure;)Lkawa/lang/Macro;
    .locals 1

    .line 61
    new-instance v0, Lkawa/lang/Macro;

    invoke-direct {v0, p0, p1}, Lkawa/lang/Macro;-><init>(Ljava/lang/Object;Lgnu/mapping/Procedure;)V

    return-object v0
.end method

.method public static make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;
    .locals 1

    .line 67
    new-instance v0, Lkawa/lang/Macro;

    invoke-direct {v0, p0, p1}, Lkawa/lang/Macro;-><init>(Ljava/lang/Object;Lgnu/mapping/Procedure;)V

    .line 68
    iput-object p2, v0, Lkawa/lang/Macro;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public static makeNonHygienic(Ljava/lang/Object;Lgnu/mapping/Procedure;)Lkawa/lang/Macro;
    .locals 1

    .line 45
    new-instance v0, Lkawa/lang/Macro;

    invoke-direct {v0, p0, p1}, Lkawa/lang/Macro;-><init>(Ljava/lang/Object;Lgnu/mapping/Procedure;)V

    const/4 p0, 0x0

    .line 46
    iput-boolean p0, v0, Lkawa/lang/Macro;->hygienic:Z

    return-object v0
.end method

.method public static makeNonHygienic(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;
    .locals 1

    .line 53
    new-instance v0, Lkawa/lang/Macro;

    invoke-direct {v0, p0, p1}, Lkawa/lang/Macro;-><init>(Ljava/lang/Object;Lgnu/mapping/Procedure;)V

    const/4 p0, 0x0

    .line 54
    iput-boolean p0, v0, Lkawa/lang/Macro;->hygienic:Z

    .line 55
    iput-object p2, v0, Lkawa/lang/Macro;->instance:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 6

    .line 126
    :try_start_0
    iget-object v0, p0, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    .line 127
    instance-of v1, v0, Lgnu/mapping/Procedure;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lgnu/expr/Expression;

    if-nez v1, :cond_0

    .line 128
    check-cast v0, Lgnu/mapping/Procedure;

    goto :goto_1

    .line 131
    :cond_0
    instance-of v1, v0, Lgnu/expr/Expression;

    if-nez v1, :cond_1

    .line 133
    iget-object v1, p2, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 134
    iput-object p0, p2, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    :try_start_1
    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    .line 138
    iput-object v0, p0, Lkawa/lang/Macro;->expander:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    iput-object v1, p2, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v1, p2, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    throw p1

    .line 157
    :cond_1
    :goto_0
    check-cast v0, Lgnu/expr/Expression;

    invoke-virtual {p2}, Lkawa/lang/Translator;->getGlobalEnvironment()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    .line 161
    :goto_1
    iget-boolean v1, p0, Lkawa/lang/Macro;->hygienic:Z

    if-nez v1, :cond_5

    .line 163
    invoke-static {p1, p2}, Lkawa/lang/Quote;->quote(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p1

    .line 164
    invoke-static {p1}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid macro argument list to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v2, v1, -0x1

    .line 167
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    .line 170
    check-cast p1, Lgnu/lists/Pair;

    if-lez v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    .line 172
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    .line 173
    :cond_3
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 175
    :cond_4
    invoke-virtual {v0, v2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 178
    :cond_5
    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    :goto_3
    instance-of v1, p1, Lgnu/lists/PairWithPosition;

    if-eqz v1, :cond_6

    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_6

    instance-of v1, v0, Lgnu/lists/PairWithPosition;

    if-nez v1, :cond_6

    .line 182
    check-cast v0, Lgnu/lists/Pair;

    .line 183
    new-instance v1, Lgnu/lists/PairWithPosition;

    check-cast p1, Lgnu/lists/PairWithPosition;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    :cond_6
    return-object v0

    :catchall_1
    move-exception p1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluating syntax transformer \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/lang/Macro;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' threw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public getCapturedScope()Lgnu/expr/ScopeExp;
    .locals 2

    .line 20
    iget-object v0, p0, Lkawa/lang/Macro;->capturedScope:Lgnu/expr/ScopeExp;

    if-nez v0, :cond_1

    .line 22
    iget-object v0, p0, Lkawa/lang/Macro;->instance:Ljava/lang/Object;

    instance-of v1, v0, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_0

    .line 23
    check-cast v0, Lgnu/expr/ModuleExp;

    iput-object v0, p0, Lkawa/lang/Macro;->capturedScope:Lgnu/expr/ScopeExp;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 25
    invoke-static {v0}, Lgnu/expr/ModuleInfo;->findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->getModuleExp()Lgnu/expr/ModuleExp;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/Macro;->capturedScope:Lgnu/expr/ScopeExp;

    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lkawa/lang/Macro;->capturedScope:Lgnu/expr/ScopeExp;

    return-object v0
.end method

.method public final isHygienic()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lkawa/lang/Macro;->hygienic:Z

    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    const-string v0, "#<macro "

    .line 116
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lkawa/lang/Macro;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3e

    .line 118
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 228
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkawa/lang/Macro;->setName(Ljava/lang/String;)V

    .line 229
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    return-void
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    .line 101
    invoke-virtual {p0, p1, p2}, Lkawa/lang/Macro;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public rewriteForm(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lkawa/lang/Macro;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 4

    .line 197
    invoke-virtual {p3}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p3}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v1

    .line 199
    invoke-virtual {p3}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v2

    .line 200
    iget-object v3, p3, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 203
    :try_start_0
    invoke-virtual {p3, p1}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 204
    iput-object p0, p3, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 205
    invoke-virtual {p0, p1, p3}, Lkawa/lang/Macro;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p1

    .line 206
    invoke-virtual {p3, p1, p2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {p3, v0, v1, v2}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    .line 211
    iput-object v3, p3, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    return-void

    :catchall_0
    move-exception p1

    .line 210
    invoke-virtual {p3, v0, v1, v2}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    .line 211
    iput-object v3, p3, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    throw p1
.end method

.method public setCapturedScope(Lgnu/expr/ScopeExp;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lkawa/lang/Macro;->capturedScope:Lgnu/expr/ScopeExp;

    return-void
.end method

.method public final setHygienic(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lkawa/lang/Macro;->hygienic:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#<macro "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/lang/Macro;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lkawa/lang/Macro;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
